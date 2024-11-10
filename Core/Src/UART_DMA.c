///*
// * UART_DMA.c
// *
// *  Created on: 27 oct. 2024
// *      Author: Alejandro Iglesias Gutiérrez
// */
//#include <main.h>
//#include <uart.h>
//const unsigned char buffSize=10;
//volatile bool uart_DMA_RX_flag=0;
//volatile bool uart_DMA_TX_flag=0;
//int main (void)
//{
//  //----------Setup---------------------//
//  //16 MHz HSI Clock configuration
//  rcc_HSI_UART_config();
//  //Brief SysTick Configuration
//  rcc_SysTick_config(2000);
//  //UART configuration
//  uart_UART2_GPIO_config();
//  uart_UART2_config(16000000);
//  uart_UART2_DMA_config();
//  uint8_t rxBuff[buffSize];
//  printf("Escribe %u bytes en la terminal\r\n",(unsigned int)buffSize);
//  //Open DMA Receive
//  uart_UART2_DMA_RX(rxBuff,(uint8_t)buffSize);
//
//
//
//  //----------Loop forever-----------------------//
//  while(1)
//  {
//    if(uart_DMA_RX_flag)
//    {
//      //Reset flag
//      uart_DMA_RX_flag=0;
//      //Transmit the receive data
//      uart_UART2_DMA_TX(rxBuff,(uint8_t)buffSize);
//      while(!(uart_DMA_TX_flag));
//      //Reset flag
//      uart_DMA_TX_flag=0;
//    }
//   printf("DMA Receive Counter = %d\r\n",(int) DMA1_Channel6->CNDTR);
//   rcc_msDelay(1000);
//  }
//
//  return 0 ;
//}
//
//
////DMA CH6(UART2_RX) interrupt routine
//void DMA1_Channel6_IRQHandler(void)
//{
//  //Clear interrupt pending flag
//  NVIC_ClearPendingIRQ(DMA1_Channel6_IRQn);
//  if(DMA1->ISR & DMA_ISR_TCIF6)
//  {
//    //Disable DMA
//    DMA1_Channel6->CCR &= ~(DMA_CCR_EN);
//    //Clear transfer complete flag
//    DMA1->IFCR |=(DMA_IFCR_CTCIF6);
//    //Notify to the app
//    uart_DMA_RX_flag=1;
//  }
//  if(DMA1->ISR & DMA_ISR_TEIF6)
//  {
//    //Clear transfer error flag
//    DMA1->IFCR |=(DMA_IFCR_CGIF6);
//  }
//}
//
////DMA CH7(UART2_TX) interrupt routine
//void DMA1_Channel7_IRQHandler(void)
//{
//  //Clear interrupt pending flag
//  NVIC_ClearPendingIRQ(DMA1_Channel7_IRQn);
//  if(DMA1->ISR & DMA_ISR_TCIF7)
//  {
//    //Disable DMA
//    DMA1_Channel7->CCR &= ~(DMA_CCR_EN);
//    //Clear transfer complete flag
//    DMA1->IFCR |=(DMA_IFCR_CTCIF7);
//    //Notify to the app
//    uart_DMA_TX_flag=1;
//  }
//  if(DMA1->ISR & DMA_ISR_TEIF7)
//  {
//    //Clear transfer error flag
//    DMA1->IFCR |=(DMA_IFCR_CGIF7);
//
//  }
//}
