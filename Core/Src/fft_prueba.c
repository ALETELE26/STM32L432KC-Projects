///*
// * wavelet_prueba.c
// *
// *  Created on: 11 feb. 2025
// *      Author: Cuba
// */
//
//
//#include <main.h>
//#include <wavelet.h>
//#include <cwt.h>
//#include <signals.h>
//#include <arm_math.h>
//#include <uart.h>
//#define SAMP_RATE  1024
//#define SIG_TIME   0.125
//#define SAMP_NUM   128
//
//#define FREC_INIC  50.0f
//#define FREC_END   300.0f
//
//
//int main (void)
//{
////----------Setup------------------------------//
//	//80 MHz  Clock configuration
//	rcc_Max_Speed_CLK_Config();
//	rcc_SysTick_config(SYSTEM_CLK/8000);
//	//FPU ENABLE
//	SCB->CPACR |= ((3UL << 10*2) | (3UL<< 11*2));
//	//UART configuration
//	uart_UART2_GPIO_config();
//	uart_UART2_config(SYSTEM_CLK,UART_BAUDRATE);
//	//Genero mi señal
//	float32_t *mySignal=createChirp(SAMP_RATE, SIG_TIME, FREC_INIC, FREC_END);
//	for (int i = 0; i < (SAMP_NUM); ++i) {
//		printf("%f\r\n",mySignal[i]);
//	}
//	//Como ya mande la señal mando el comando para que termine de capturar por
//	//puerto serie el programa en Python
//	printf("END\r\n");
//
//
//
//
////----------Loop forever-----------------------//
//while(1)
//{
//
//}
//return 0;
//}
//
//
