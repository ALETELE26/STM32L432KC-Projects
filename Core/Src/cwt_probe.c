/*
 * cwt_probe.c
 *
 *  Created on: 17 feb. 2025
 *      Author: Cuba
 */


#include <main.h>
#include <cwt.h>
#include <signals.h>
#include <uart.h>
#define SAMP_RATE  1024
#define SIG_TIME   0.125
#define SAMP_NUM   128
#define SCALES_NUM 50
#define MORLET_BW  1.0f
#define FREC_INIC  50.0f
#define FREC_END   300.0f


int main (void)
{
	//----------Setup------------------------------//
	//80 MHz  Clock configuration
	rcc_Max_Speed_CLK_Config();
	rcc_SysTick_config(SYSTEM_CLK/8000);
	//FPU ENABLE
	SCB->CPACR |= ((3UL << 10*2) | (3UL<< 11*2));
	//UART configuration
	uart_UART2_GPIO_config();
	uart_UART2_config(SYSTEM_CLK,UART_BAUDRATE);
	//Genero mi señal
	float32_t *mySignal=createChirp(SAMP_RATE, SIG_TIME, FREC_INIC, FREC_END);
	//Inicializo mi matriz de salida de la CWT de tamaño N X M
	//donde N: numero de escalas y M:numero de muestras de la señal
	//Lo hago de manera unidimensional para que este en el mismo bloque de memoria
	complex_t output[SCALES_NUM * SAMP_NUM];
	complex_t *cwt_Data=output;
	arm_fill_f32(0.0f, (float32_t*)cwt_Data,2*SCALES_NUM*SAMP_NUM);
	//Creo mi objeto Wavelet Morlet y lo inicializo
	Morlet_t mor;
	morlet_Init(&mor, MORLET_BW);
	//Creo un objeto de escalas y lo inicializo
	Scales_t scales;
	scales_Init(&scales, (Wavelet_t*)&mor, FCWT_LOGSCALES, SAMP_RATE, FREC_INIC, FREC_END,SCALES_NUM);
	//Calculo la CWT
	cwt(&mor, &scales, mySignal, SAMP_NUM, cwt_Data);
	//Mando el resultado por puerto serie
	for (int i = 0; i < SCALES_NUM; i++) {
		printf("Resultados de la cwt de la escala %d:\r\n", i);
		for (int j = 0; j < SAMP_NUM; j++) {
			// Calcula el índice lineal en la matriz contigua
			int idx = i * SAMP_NUM + j;
			// Imprime la parte real e imaginaria del elemento
			printf("%f,%f\r\n", cwt_Data[idx].real, cwt_Data[idx].imag);
		}
	}
	printf("END\r\n");
	/*
	 * Si despues tuviese que hacer algo diferente en mi programa lo correcto
	 * seria despejar la memoria ocupada con las lineas
	 * free(cwt_Data);
	 * free(mySignal);
	 */

	//----------Loop forever-----------------------//
	while(1)
	{

	}
	return 0;
}


