//////////////////////PROGRAMA PRINCIPAL(USART2_EXP)////////////////////////
//
///*
// * USART2_EXP.c
// *
// *  Created on: Oct 26, 2024
// *      Author: Daniel Dominguez Fragoso
// */
//
//
//#include"main.h"
//#define SYS_FREQ       4000000
//#define APB1_CLK       SYS_FREQ
///*
// * @brief USART Baud rate selection in Baud-Rate Register
// */
//static void USART_SET_BAUDRATE(USART_TypeDef *USARTx,uint32_t PeriphCLK,uint32_t Baudrate);
///*
// * @brief USART Baud rate
// */
//static uint16_t compute_USART_div(uint32_t PeriphCLK, uint32_t Baudrate);
///*
// * @brief Writing in USART2
// */
//static void USART2_WRITE(USART_TypeDef *USARTx ,uint8_t ch);
//
//
//int main (void)
//{
////Setup Configuration
//  //**************Config del USART pin**************
//    //Habilitar el reloj del periferico(GPIOA->PA2(A7))
//    RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
//    //Config el PA2 como AFM(Alternative Function Mode)
//    GPIOA->MODER &= ~(GPIO_MODER_MODE2);
//    GPIOA->MODER |= (GPIO_MODER_MODE2_1);
//    //Config el modo USART2
//    GPIOA->AFR[0] &= ~(GPIO_AFRL_AFSEL2_Msk);
//    GPIOA->AFR[0] |= (0x7UL << (8U));
//
//    //**************Config del USART module**************
//    //Habilitar el acceso al reloj para USART2
//    RCC->APB1ENR1 |= (RCC_APB1ENR1_USART2EN);
//    //Config de direccion de transferencia//
//    //Disabled USART2
//    USART2->CR1 &= ~(USART_CR1_UE);
//    //Program the word length whit USART_CR1 (M0)
//    USART2->CR1 &= ~(USART_CR1_M0);
//    //Program the word length whit USART_CR1 (M1)
//    USART2->CR1 &= ~(USART_CR1_M1);
//    //Configuración del Baudrate
//    USART_SET_BAUDRATE(USART2, APB1_CLK, 115200);
//    //Number of stop bits in USART_CR2.(1 SB)
//    USART2->CR2 &=~(USART_CR2_STOP);
//    //Enable the USART2
//    USART2->CR1 |= (USART_CR1_UE);
//    //Select DMA enable (DMAT)(in case of multibuffer comunication)
//    //USART2->CR3 |= (USART_CR3_DMAT);
//    //Enable transmission in USART_CR1
//    USART2->CR1 |= (USART_CR1_TE);
//
////Loop forever
//while(1)
//{
//
//USART2_WRITE(USART2,'Y');
//
//
//}
//
//return 0;
//}
//
//
//
///*
// * @brief USART Baud rate
// */
//static uint16_t compute_USART_div(uint32_t PeriphCLK, uint32_t Baudrate)
//{
//  return ((PeriphCLK + (Baudrate/2))/Baudrate);
//}
//
//
///*
// * @brief USART Baud rate selection in Baud-Rate Register
// */
//static void USART_SET_BAUDRATE(USART_TypeDef *USARTx,uint32_t PeriphCLK,uint32_t Baudrate)
//{
//  USARTx->BRR = compute_USART_div( PeriphCLK, Baudrate);
//}
//
///*
// * @brief Writing in USART2
// */
//static void USART2_WRITE(USART_TypeDef *USARTx,uint8_t ch)
//{
//  //Transmit the value
//  while(!(USARTx->ISR & USART_ISR_TXE)){}//wait until transmit all
//  USARTx->TDR = (ch & 0xFF);
//}
//
