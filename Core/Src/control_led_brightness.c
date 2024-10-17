///*
// * control_led_brightness.c
// *
// *  Created on: 19 oct. 2024
// *      Author: Cuba
// */
//
//
//#include <main.h>
//#include <gpio.h>
//#include <adc.h>
//#include <tim.h>
//volatile uint16_t adc_sample;
//uint32_t sample_period = 100000;//Time in us
//int main (void)
//{
////----------Setup------------------------------//
//	  //Led configuration (PB3->D13)
//	  gpio_LED_config();
//	  //Clock Source 80MHz
//	  rcc_MSI_config();
//	  //Brief TIM2 Configuration
//	  tim_TIM2_delayConfig();
//	  //ADC GPIO Pin PA1(A1)->Potentiometer Configuration
//	  adc_GPIO_config();
//	  /*
//	   * ADC Single Channel Auto-delayed
//	   * Continuous Conversion Mode
//	   */
//	  adc_single_channel_auto_delayed_continuous_conv_config();
//
//
//
//
//
////----------Loop forever-----------------------//
//while(1)
//{
//	//Take samples after this delay
//	tim_TIM2_usDelay(sample_period);
//}
//return 0;
//}
//
//void TIM2_IRQHandler(void)
//{
//	//Take sample value
//	adc_sample= ADC1->DR;
//	//Clear interruption pending flag
//	NVIC_ClearPendingIRQ(TIM2_IRQn);
//}
