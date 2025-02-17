/*
 * wavelet.c
 *
 *  Created on: 11 feb. 2025
 *      Author: Cuba
 */
#include <wavelet.h>

/*
 * @Brief Constructor por default de la clase wavelet
 */
void wavelet_Init(Wavelet_t *w){
	//Valido el puntero
	if (!w) return;
	//Inicializo por defecto
	w->mother=NULL;
	w->width=0;
	w->four_wavelen=0.0f;
}
/*
 * @Brief Constructor clase Morlet
 */
void morlet_Init(Morlet_t *mor,float32_t bandwidth){
	//Valido el puntero
	if (!mor) return;
	//Inicializo los demas atributos
	mor->base.four_wavelen= 0.9876f;
	mor->base.mother=NULL;
	mor->base.width=0;
	mor->base.doublesided=false;
	mor->base.imag_frequency=false;
	mor->fb = bandwidth;
	mor->fb2 = 2.0f *bandwidth*bandwidth;
	mor->ifb = 1.0f / bandwidth;

}

/*
 * @Brief Generador de Morlet en el dominio del tiempo
 */
//void morlet_Gen_Time(Morlet_t *mor, complex_t *cpxNumber, uint16_t size, float32_t scale){
//
//}

/*
 * @Brief Generador de Morlet en el dominio de la frecuencia
 * @Note: Se computa la FT de la Morlet compleja
 *        Se puede encontrar la formula en pag36 del Addison
 */
void morlet_Gen_Freq(Morlet_t *mor, uint32_t size){
	//Frequency domain, because we only need size. Default scale is always 2;
	mor->base.width = size;
	float32_t toradians = (TWOPI)/(float32_t)size;
	float32_t coef;//Este coeficiente sera igual a raiz de 2 por pi a la un cuarto
	arm_sqrt_f32((float32_t)(TWOPI), &coef);
	coef *= IPI4;
	// Reserva de memoria para la wavelet madre
	mor->base.mother = (float32_t*)malloc(sizeof(float32_t)*size);
	// Reservar arreglos temporales para cálculos vectorizados
	float32_t *freqs         = (float32_t*)malloc(sizeof(float32_t) * size);
	float32_t *V             = (float32_t*)malloc(sizeof(float32_t) * size);
	float32_t *V_pow2        = (float32_t*)malloc(sizeof(float32_t) * size);
	float32_t *expArg        = (float32_t*)malloc(sizeof(float32_t) * size);
	float32_t *expVal        = (float32_t*)malloc(sizeof(float32_t) * size);

	// 1. Llenar el vector de frecuencias: freqs[w] = w * toradians
	for (int w = 0; w < size; w++) {

		freqs[w] = w * toradians;
	}
	// 2. Escalar: V = freqs * (2.0f * mor->fb)
	arm_scale_f32(freqs, 2.0f * mor->fb, V, size);

	// 3. Restar constante: V = V - (2.0f * PI * mor->fb)
	arm_offset_f32(V, -(2.0f * PI * mor->fb), V, size);

	// 4. Elevar al cuadrado: V_pow2 = V * V (elemento a elemento)
	arm_mult_f32(V, V, V_pow2, size);

	// 5. Multiplicar por -0.5: expArg = -0.5 * V_pow2
	arm_scale_f32(V_pow2, -0.5f, expArg, size);

	// 6. Calcular el exponencial: expVal = exp(expArg)
	arm_vexp_f32(expArg, expVal, size);

	// 7. Multiplicar por la constante de normalización: mother = norm * expVal
	arm_scale_f32(expVal,coef, mor->base.mother, size);

	// Liberar los arreglos temporales
	free(freqs);
	free(V);
	free(V_pow2);
	free(expArg);
	free(expVal);

}




