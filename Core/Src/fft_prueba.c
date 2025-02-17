/*
 * wavelet_prueba.c
 *
 *  Created on: 11 feb. 2025
 *      Author: Cuba
 */


#include <main.h>
#include <wavelet.h>
#include <cwt.h>
#include <signals.h>
#include <arm_math.h>
#include <uart.h>
#define SAMP_RATE  1024
#define SIG_TIME   2
#define SAMP_NUM   2048

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
	float32_t *mySignal=createChirp((uint32_t)SAMP_RATE, (uint8_t)SIG_TIME);
	//Inicializo mi vector de salida de FFT
	complex_t *fft_Out=(complex_t*)aligned_alloc(32, (((SAMP_NUM/2)+1)*sizeof(complex_t)));
	//Instancio mi estructura de FFT(En este caso real porque mi funcion de entrada es real)
	arm_rfft_fast_instance_f32 myFFTObject;
	//Lo inicializo
	arm_status status;
	status=arm_rfft_fast_init_f32(&myFFTObject, (uint16_t)SAMP_NUM);
//	if(!status){
//		printf("Inicializada la FFT correctamente\r\n");
//		rcc_msDelay(2500);
//	}
//	else{printf("Error al inicializar la FFT\r\n");}
	//Calculo la FFT de mi señal
	arm_rfft_fast_f32(&myFFTObject, mySignal,(float32_t *)fft_Out, RFFT);
	for (int i = 0; i < ((SAMP_NUM/2)+1); ++i) {
		printf("%f,%f\r\n",fft_Out[i].real,fft_Out[i].imag);
	}
	//Como ya mande la señal mando el comando para que termine de capturar por
	//puerto serie el programa en Python
	printf("END\r\n");




//----------Loop forever-----------------------//
while(1)
{

}
return 0;
}


