///*
// * RX_TX_data_with_interrupts.c
// *
// *  Created on: 27 oct. 2024
// *      Author: Alejandro Iglesias Gutiérrez
// */
//
//#include <main.h>
//#include <uart.h>
//
//volatile char rxb = '\0';
//volatile bool RTS_flag=0;
//
//int main (void)
//{
//  //----------Setup---------------------//
//  //16 MHz HSI Clock configuration
//  rcc_HSI_UART_config();
//  //UART configuration
//  uart_UART2_GPIO_config();
//  uart_UART2_config(16000000);
//  // Main loop: wait for a new byte, then echo it back.
//
//
//  //----------Loop forever-----------------------//
//  while(1)
//  {
//    if(RTS_flag)
//    {
//      // Print a line containing the newly-received character.
//      printf("\n");
//      printf( "RX: %c\r\n", rxb );
//      RTS_flag=0;
//    }
//
//  }
//
//  return 0 ;
//}
//
//
//// USART2 interrupt routine
//void USART2_IRQHandler( void )
//{
//  // 'Receive register not empty' interrupt.
//  if ( USART2->ISR & USART_ISR_RXNE )
//  {
//    // Copy new data into the buffer.
//    rxb = USART2->RDR;
//    RTS_flag=1;
//  }
//
//}
