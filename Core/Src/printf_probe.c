///*
// * printf_probe.c
// *
// *  Created on: 11 oct. 2024
// *      Author: Alejandro Iglesias Gutiérrez
// */
//
//#include <main.h>
//#include <uart.h>
//int count=0;
//
//
//int main (void)
//{
//  //----------Setup---------------------//
//  //Clock Source 72MHz
//  rcc_USART1_for_BR_config();
//  //SysTick Configuration
//  rcc_SysTick_config(9000);
//  //UART1 Configuration
//  uart_UART1_GPIO_config();
//  uart_UART1_config();
//  printf("Program is starting...\n");
//  //----------Loop forever-----------------------//
//  while(1)
//  {
//    printf("Hello World\n");
//    count++;
//    rcc_msDelay(1000);
//  }
//
//  return 0 ;
//}
