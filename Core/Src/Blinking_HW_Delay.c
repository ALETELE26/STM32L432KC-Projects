///*
// * Blinking_HW_Delay.c
// *
// *  Created on: Oct 8, 2024
// *      Author: DANNY
// */
//#include <main.h>
//#include <gpio.h>
//bool flag = 0;
//int main (void)
//{
//	//Setup Configuration
//	//Led configuration (PB3->D13)
//  gpio_LED_config();
//	//Clock Source 80MHz
//	rcc_MSI_config();
//	//Brief SysTick Configuration
//	rcc_SysTick_config(10000);
//
//	//Loop forever
//	while(1)
//	{
//
//		gpio_LED_toggleGreen();
//		flag ^= 1;
//		rcc_msDelay(250);
//
//
//	}
//
//	return 0;
//}
