//
//#include <main.h>
//#include <gpio.h>
//#include <uart.h>
//#include <arm_math.h>
//#include <signals.h>
//
//#define SYSTEM_CLK			16000000
//#define UART_BAUDRATE 		115200
///* USER CODE BEGIN PV */
//extern float _5hz_signal[SIGNAL_5HZ_LEN];
//
///* USER CODE END PV */
///* USER CODE BEGIN PD */
//
///* USER CODE END PD */
//int main (void)
//{
//	//----------Setup------------------------------//
//	//16 MHz  Clock configuration
//	rcc_HSI_UART_config();
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
//	  standard_Plot_Input_Signal(_5hz_signal, SIGNAL_5HZ_LEN);
//
//	}
//	return 0;
//}
//
