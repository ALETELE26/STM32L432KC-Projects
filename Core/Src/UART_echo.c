///*
// * printf_probe2.c
// *
// *  Created on: 24 oct. 2024
// *      Author: Alejandro Iglesias Gutiérrez
// */
//
//#include <main.h>
//#include <uart.h>
//
//
//
//
//
//int main (void)
//{
//  //----------Setup---------------------//
//  // Enable floating-point unit.
//  // SCB->CPACR |= ( 0xF << 20 );
//  //16 MHz HSI Clock configuration
//  rcc_HSI_UART_config();
//  //UART configuration
//  uart_UART2_GPIO_config();
//  uart_UART2_config(16000000);
//  // Main loop: wait for a new byte, then echo it back.
//  char rxb = '\0';
//
//
//  //----------Loop forever-----------------------//
//  while(1)
//  {
//    // Wait for a byte of data to arrive.
//    while( !( USART2->ISR & USART_ISR_RXNE ) ) {};
//    rxb = USART2->RDR;
//    // Re-transmit the received byte.
//    while( !( USART2->ISR & USART_ISR_TXE ) ) {};
//    USART2->TDR = rxb;
//
//  }
//
//  return 0 ;
//}
