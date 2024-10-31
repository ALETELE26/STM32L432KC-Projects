///*
// * rgb_led_ADC_DMA_PWM_control.c
// *
// *  Created on: 22 oct. 2024
// *      Author: Cuba
// */
//
//
//#include <main.h>
//#include <adc.h>
//#include <gpio.h>
//#include <tim.h>
//volatile uint16_t adc_samples[3];
//uint8_t RGB_index[3];
//volatile bool ADC_EOC_flag=0;
//uint32_t sample_period = 100;//Time in ms
//
//int main (void)
//{
//	//----------Setup------------------------------//
//	//Clock Source 80MHz
//	rcc_MSI_config();
//	//System Timer Configuration
//	rcc_SysTick_config(10000);
//	//User led configuration
//	gpio_LED_config();
//	/*
//	 * @brief ADC GPIO Pin PA1(A1)->Potentiometer
//	 * PA3(A2)->Joystick X PA4(A3)->Joystick Y
//	 */
//	adc_GPIO_config();
//	//ADC Multi-Channel configuration
//	adc_multiChannel_config();
//	//ADC DMA configuration
//	adc_multiChannel_DMA_config(adc_samples);
//	//TIM6 as ADC Trigger configuration
//	tim_TIM6_TRGO_config(sample_period);
//	//TIM1 GPIO PWM channels configuration
//	//PA8(D9)->TIM1_CH1  PA9(D1)->TIM1_CH2 PA10(D0)->TIM1_CH3
//	tim_TIM1_RGB_PWM_GPIO_config();
//	//TIM1 PWM RGB configuration
//	tim_TIM1_RGB_PWM_config();
//	//----------Loop forever-----------------------//
//	while(1)
//	{
//		if(ADC_EOC_flag)
//		{
//			ADC_EOC_flag=0;
//			for(uint8_t i=0;i<3;i++)
//			{
//				//Each ADC sample module a PWM signal
//				tim_TIM1_RGB_PWM_setColor(adc_samples[i], i+1);
//				RGB_index[i]=(uint8_t)((adc_samples[i]+0.0f)*(255.0f/4096.0f));
//			}
//		}
//	}
//	return 0;
//}
////DMA interrupt routine
//void DMA1_Channel1_IRQHandler(void)
//{
//	if (DMA1->ISR & DMA_ISR_TCIF1)
//	{
//		//Clear interrupt pending flag
//		NVIC_ClearPendingIRQ(DMA1_Channel1_IRQn);
//		//Clear transfer complete flag
//		DMA1->IFCR |= (DMA_IFCR_CTCIF1);
//		////Ready for the application
//		//Blink Led to indicate transfer completed
//		gpio_LED_toggleGreen();
//		ADC_EOC_flag =1;
//	}
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
