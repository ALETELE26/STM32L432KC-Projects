///*
// * frequencymeter.c
// *
// *  Created on: 13 oct. 2024
// *      Author: Alejandro Iglesias Gutiérrez
// */
//
//#include <main.h>
//#include <gpio.h>
//#include <tim.h>
//
//volatile unsigned long time_initial=0;
//volatile unsigned long time_actual=0;
//volatile unsigned long period;
//int frequency;
//
//int main (void)
//{
//	//----------Setup---------------------//
//	//Led configuration (PB3->D13)
//	gpio_LED_config();
//	//Clock Source 80MHz
//	rcc_MSI_config();
//	//Brief SysTick Configuration
//	rcc_SysTick_config(10000);
//	//Input Capture TIM1 configuration
//	tim_TIM1_InputCaptureConfig();
//
//	//----------Loop forever-----------------------//
//	while(1)
//	{
//		gpio_LED_toggleGreen();
//		rcc_msDelay(250);
//		if (TIM1->SR & (TIM_SR_CC1IF))
//		{
//			//Convert period to second and calculate frequency
//			frequency = 1/(1000000*period);
//			TIM1->SR &= ~(TIM_SR_CC1IF);
//		}
//
//
//
//	}
//
//	return 0 ;
//}
//
//
//void TIM1_CC_IRQHandler(void)
//{
//	NVIC_ClearPendingIRQ(TIM1_CC_IRQn);
//	time_actual= TIM1->CCR1;
//	if (!(TIM1->SR & (TIM_SR_UIF)))//don't update value at OV
//	{
//		//This period is in us , although TIM1 CNT is 1MHz
//		period=time_actual-time_initial;
//	}
//	TIM1->SR &= ~(TIM_SR_UIF);
//	time_initial=time_actual;
//}
//
//void TIM1_UP_TIM16_IRQHandler(void)
//{
//	NVIC_ClearPendingIRQ(TIM1_UP_TIM16_IRQn);
//	//Reset times variables
//	time_actual=0;
//	time_initial=0;
//
//}
