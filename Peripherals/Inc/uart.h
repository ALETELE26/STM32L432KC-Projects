/*
 * uart.h
 *
 *  Created on: 11 oct. 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#ifndef INC_UART_H_
#define INC_UART_H_

#include <main.h>

/*
 * @Brief UART1 GPIO Config(PA9(Tx)->D1;PA10(Rx)->D0)
 */
void uart_UART1_GPIO_config(void);
/*
 * @Brief UART1 Peripheral Config
 */
void uart_UART1_config(void);
/*
 * @Brief UART1 Transmit
 */
bool uart_UART1_TX(uint8_t *data,uint8_t len,uint32_t timeout);




#endif /* INC_UART_H_ */
