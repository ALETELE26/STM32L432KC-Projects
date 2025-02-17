///*
// * probe_f32_TYPE.C
// *
// *  Created on: 10 feb. 2025
// *      Author: Cuba
// */
//
//#include <main.h>
//#include <gpio.h>
//#include <uart.h>
//#include <arm_math.h>
//#include <math.h>
//#include <signals.h>
//
//
///* USER CODE BEGIN PV */
//extern float32_t inputSignal_f32_1kHz_15kHz[SIGNAL_F32_1KHZ_15KHZ_LEN];
//
///* USER CODE END PV */
///* USER CODE BEGIN PD */
//
///* USER CODE END PD */
//int main (void)
//{
//	//----------Setup------------------------------//
//	//80 MHz  Clock configuration
//	rcc_Max_Speed_CLK_Config();
//	rcc_SysTick_config(SYSTEM_CLK/8000);
//	//FPU ENABLE
//	SCB->CPACR |= ((3UL << 10*2) | (3UL<< 11*2));
//	//User led configuration
//	gpio_LED_config();
//	//UART configuration
//	uart_UART2_GPIO_config();
//	uart_UART2_config(SYSTEM_CLK,UART_BAUDRATE);
//	/* USER CODE BEGIN 1 */
//
//	/* USER CODE END 1 */
//	//----------Loop forever-----------------------//
//	while(1)
//	{
//
//	  f32_Plot_Input_Signal(inputSignal_f32_1kHz_15kHz, SIGNAL_F32_1KHZ_15KHZ_LEN);
//
//	}
//	return 0;
//}
//
