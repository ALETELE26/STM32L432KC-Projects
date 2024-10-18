/*
 * uart.c
 *
 *  Created on: 11 oct. 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#include <uart.h>

/*
 * @Brief UART1 GPIO Config(PA9(Tx)->D1;PA10(Rx)->D0)
 */
void uart_UART1_GPIO_config(void)
{
  // Enable PortA Clock
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
  // Mode to AF (UART1)
  GPIOA->AFR[1] &= ~(GPIO_AFRH_AFSEL9);
  GPIOA->AFR[1] &= ~(GPIO_AFRH_AFSEL10);
  GPIOA->AFR[1] |= (0x7UL << (4U));
  GPIOA->AFR[1] |= (0x7UL << (8U));
  GPIOA->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR9);
  GPIOA->OSPEEDR |= (0x3UL << (18U));//(PA9 High Speed mode)
  GPIOA->MODER &= ~(GPIO_MODER_MODER9);
  GPIOA->MODER &= ~(GPIO_MODER_MODER10);
  GPIOA->MODER |= (GPIO_MODER_MODE9_1);
  GPIOA->MODER |= (GPIO_MODER_MODE10_1);
  //PA9, PA10 is mapped to UART1 by default
}
/*
 * @Brief UART1 Peripheral Config
 */
void uart_UART1_config(void)
{
  // Enable UART1 Clock
  RCC->APB2ENR |= (RCC_APB2ENR_USART1EN);
  // Set word length to 8-bits
  USART1->CR1  &= ~(USART_CR1_M1);
  // Set baud rate to 115.2 kHz
  USART1->BRR = 0x271UL ;//0x271=625=72MHz/115.2kHz
  // Parity to even
  USART1->CR1  &= ~(USART_CR1_PS);
  // Parity control enabled
  USART1->CR1  |= (USART_CR1_PCE);
  // Stop bits to 1
  USART1->CR2  &= ~(USART_CR2_STOP);
  // Disable HW flow control
  USART1->CR3  &= ~(USART_CR3_CTSE);
  USART1->CR3  &= ~(USART_CR3_RTSE);
  // Clear and enable flags
  USART1->CR2 &= ~(USART_CR2_LINEN | USART_CR2_CLKEN);
  USART1->CR3 &= ~(USART_CR3_HDSEL | USART_CR3_IREN | USART_CR3_SCEN );
  // Enable UART
  USART1->CR1  |= (USART_CR1_UE);
  // Enable transmit
  USART1->CR1  |= (USART_CR1_TE);
}
/*
 * @Brief UART1 Transmit
 */
bool uart_UART1_TX(uint8_t *data,uint8_t len,uint32_t timeout)
{
  //Wait on TXE to start transmit
  //Write to DR as TXE flag is HIGH (Tx buffer Empty)
  uint8_t dataIdx = 0;
  uint32_t startTick = rcc_msGetTicks();
  while(dataIdx<len)
  {
    if(USART1->ISR & USART_ISR_TXE) //Tx buffer empty
    {
      USART1->TDR = data[dataIdx];
      dataIdx++;
    }
    else //Manage timeout
    {
      if((rcc_msGetTicks() - startTick)>= timeout) return false;
    }
  }
  //Wait for busy flag
  while(!(USART1->ISR & USART_ISR_TC))
  {
    if((rcc_msGetTicks() - startTick)>= timeout) return false;
  }
  return true;


}
