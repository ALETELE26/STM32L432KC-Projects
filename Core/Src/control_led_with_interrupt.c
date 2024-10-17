///*
// * led_with_interrupt.c
// *
// *  Created on: 6 oct. 2024
// *      Author: Alejandro Iglesias Gutiérrez
// */
//
//#include <main.h>
//#include <exti.h>
//#include <gpio.h>
//void ms_delay( unsigned int delayTime);
//bool exti_flag = 0;
//
//int main (void)
//{
//  //----------Setup---------------------//
//  //Led configuration (PB3->D13)
//  gpio_LED_config();
//  //Push bottom as interrupt source configuration (PA12->D2)
//  exti_buttonConfig();
//
//  //----------Loop forever-----------------------//
//  while(1)
//  {
//    if (exti_flag)
//    {
//      //Reset EXTI flag
//      exti_flag=false;
//      //Toggle LED
//      gpio_LED_toggleGreen();
//      //Wait until rebound effect finish
//      ms_delay(100);
//      //Unblock interrupt
//      EXTI->IMR1 |= (EXTI_IMR1_IM12);
//
//    }
//
//
//  }
//  return 0;
//}
//
//
////Delay function
//void ms_delay( unsigned int delayTime)
//{
//  unsigned int i,j;
//  //time X 1ms
//  for(i=0;i<delayTime;i++)
//  {
//    for(j=0;j<113;j++);  //1 ms
//  }
//}
//
////Interrupt Routine
//void EXTI15_10_IRQHandler(void)
//{
//  //Clearing the pending interrupt field
//  NVIC_ClearPendingIRQ(EXTI15_10_IRQn);
//  EXTI->PR1 |=(EXTI_PR1_PIF12);
//  //Application
//  exti_flag = true;
//  //Block interrupt for avoid rebound effect
//  EXTI->IMR1 &= ~(EXTI_IMR1_IM12);
//}
