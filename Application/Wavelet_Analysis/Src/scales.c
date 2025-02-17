/*
 * scales.c
 *
 *  Created on: 12 feb. 2025
 *      Author: Cuba
 */

#include <scales.h>

/*
 * @Brief Constructor de la estructura escala
 * -myScales:objeto de escalas
 * -wav:   objeto de la wavelet
 * -st:    tipo de escalas que se quiere calcular
 * -afs:   frecuencia de muestreo de la señal de entrada
 * -af0:   frecuencia inicial donde se desea analizar la señal
 * -af1:   frecuencia final donde se desea analizar la señal
 * -afn:   numero de escalas a calcular
 *
 */
void scales_Init(Scales_t *myScales,
		Wavelet_t *wav,
		SCALETYPE st,
		int32_t afs,
		float32_t af0,
		float32_t af1,
		int32_t afn){
	//Save parameters
	myScales->fs=afs;
	myScales->nscales = afn;
	//Initialize memory for scales array
	myScales->scales = (float32_t*)malloc(afn*sizeof(float32_t));
	//Calculate scales array
	if (st==FCWT_LINSCALES) {
		calculate_linscale_array(myScales, afs, af0, af1, afn);

	} else if (st==FCWT_LOGSCALES) {
		calculate_logscale_array(myScales,2.0f, afs, af0, af1, afn);

	} else{
		calculate_linfreq_array(myScales, afs, af0, af1, afn);

	}

}


/*
 * @Brief Generador del array de escalas en forma logaritmica
 * @Parameters:
 * -base: base del logaritmo usado para calcular las escalas
 * -fs:   frecuencia de muestreo de la señal de entrada
 * -f0:   frecuencia inicial donde se desea analizar la señal
 * -f1:   frecuencia final donde se desea analizar la señal
 * -fn:   numero de escalas a calcular
 */
void calculate_logscale_array(Scales_t *myScales,
		float32_t base,
		int32_t fs,
		float32_t f0,
		float32_t f1,
		int32_t fn){
	//If a signal has fs=100hz and you want to measure [0.1-50]Hz, you need scales 2 to 1000;
	float32_t nf0 = f0;
	float32_t nf1 = f1;
	//Calculando escalas inicial y final
	float32_t s0 = (fs/nf1);
	float32_t s1 = (fs/nf0);
	//Cannot pass the nyquist frequency
	assert(f1 <= fs/2 && "Max frequency cannot be higher than the Nyquist frequency (fs/2)");
	//Calculo el exponente logaritmico inicial
	float32_t power0 = log(s0)/log(base);
	//Calculo el exponente logaritmico final
	float32_t power1 = log(s1)/log(base);
	//Calculo el paso de cada exponente
	float32_t dpower = power1-power0;
	dpower /= (float32_t)(fn-1);
	//Reservo memoria para mi vector de exponentes logaritmicos y de pasos
	float32_t *logsSteps = (float32_t*)malloc(sizeof(float32_t) * fn);
	float32_t *expLogs0   = (float32_t*)malloc(sizeof(float32_t) * fn);
	float32_t *expLogs1   = (float32_t*)malloc(sizeof(float32_t) * fn);
	//Relleno mi vector de pasos
	for (int i = 0; i <fn; i++) {
		logsSteps[i]=dpower * (float32_t)i;
	}
	//Calculo vectorizadamente mi array de escalas
	arm_offset_f32(logsSteps, power0, expLogs0, fn);
	//Aplicando la propiedad e^(y* ln(x))=x^y entonces podemos
	//calcular la potencia base dos multiplicando el exponente por ln(2)
	//Y al resultado aplicarle la potencia de euler
	arm_scale_f32(expLogs0,(float32_t)(LN_2), expLogs1, fn);
	arm_vexp_f32(expLogs1, myScales->scales, fn);
	//Libero la memoria ocupada por los vectores temporales
	free(logsSteps);
	free(expLogs0);
	free(expLogs1);

}


/*
 * @Brief Generador del array de escalas en forma lineal
 * @Parameters
 * -myScales:objeto de escalas
 * -base: base del logaritmo usado para calcular las escalas
 * -fs:   frecuencia de muestreo de la señal de entrada
 * -f0:   frecuencia inicial donde se desea analizar la señal
 * -f1:   frecuencia final donde se desea analizar la señal
 * -fn:   numero de escalas a calcular
 */
void calculate_linscale_array(Scales_t *myScales,
		int32_t fs,
		float32_t f0,
		float32_t f1,
		int32_t fn){
	//If a signal has fs=100hz and you want to measure [0.1-50]Hz, you need scales 2 to 1000;
	float32_t nf0 = f0;
	float32_t nf1 = f1;
	//Calculando escalas inicial y final
	float32_t s0 = (fs/nf1);
	float32_t s1 = (fs/nf0);
	//Cannot pass the nyquist frequency
	assert(f1 <= fs/2 && "Max frequency cannot be higher than the Nyquist frequency (fs/2)");
	//Diferencia de escalas
	float32_t ds = s1-s0;
	ds /= (float32_t)(fn);
	//Reservo memoria para mi vector de pasos
	float32_t *scaleSteps = (float32_t*)malloc(sizeof(float32_t) * fn);

	//Relleno mi vector de pasos
	for (int i = 0; i <fn; i++) {
		scaleSteps[i]=ds * (float32_t)i;
	}
	arm_offset_f32(scaleSteps, s0, myScales->scales,fn);

	//Libero memoria de vectores temporales
	free(scaleSteps);
}

/*
 * @Brief Generador del array de frecuencias en forma lineal
 * @Parameters
 * -myScales:objeto de escalas
 * -fs:   frecuencia de muestreo de la señal de entrada
 * -f0:   frecuencia inicial donde se desea analizar la señal
 * -f1:   frecuencia final donde se desea analizar la señal
 * -fn:   numero de escalas a calcular
 */
void calculate_linfreq_array(Scales_t *myScales,
		int32_t fs,
		float32_t f0,
		float32_t f1,
		int32_t fn){

	float32_t nf0 = f0;
	float32_t nf1 = f1;
	//Cannot pass the nyquist frequency
	assert(f1 <= fs/2 && "Max frequency cannot be higher than the Nyquist frequency (fs/2)");
	float32_t df = nf1-nf0;
	df /= (float32_t)fn;
	//Reservo memoria para mi vector de pasos
	float32_t *frecSteps0 = (float32_t*)malloc(sizeof(float32_t) * fn);
	float32_t *frecSteps1 = (float32_t*)malloc(sizeof(float32_t) * fn);
	//Relleno mi vector de pasos
	for (int i = 0; i <fn; i++) {
		frecSteps0[i]=df * (float32_t)i;
	}
	arm_offset_f32(frecSteps0, nf0, frecSteps1, fn);
	for (int i = 0; i <fn; i++) {
		myScales->scales[fn-1-i]=(float32_t)(fs)/frecSteps1[i];
	}
	free(frecSteps0);
	free(frecSteps1);
}














