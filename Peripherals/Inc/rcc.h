/*
 * rcc.h
 *
 *  Created on: Oct 8, 2024
 *      Author: DANNY
 */

#ifndef INC_RCC_H_
#define INC_RCC_H_

#include <main.h>
/*
 * Brief MSI Clock Config
 */
void rcc_MSI_config(void);

/*
 * @Brief MSI Clock Configuration for UART1 baud rate(72MHz)
 */
void rcc_USART1_for_BR_config(void);

/*
 * Brief SysTick Configuration
 */
void rcc_SysTick_config(uint32_t arr);
/*
 * Brief increment msTicks
 */
void rcc_msIncTicks(void);
/*
 * Brief get msTicks
 */
uint32_t rcc_msGetTicks(void);
/*
 * Brief msDelay
 */
void rcc_msDelay(uint32_t msDelayTime);



#endif /* INC_RCC_H_ */
