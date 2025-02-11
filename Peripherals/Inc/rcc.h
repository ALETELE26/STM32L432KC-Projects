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
 * Brief MSI Clock Configuration
 */
void rcc_MSI_PLL_config(uint32_t systemClock);

/*
 * Brief Max Speed Clock Configuration(80MHz)
 */
void rcc_Max_Speed_CLK_Config(void);

/*
 * @Brief HSI for UART (16MHz) Clock Configuration
 */
void rcc_HSI_UART_config(void);

///*
// * @Brief MSI Clock Configuration for UART2 baud rate(72MHz)
// */
void rcc_USART2_for_BR_config(void);

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

/**
 * Additional Timers for SD Applications
 */
void SDTimer_Handler(void);

#endif /* INC_RCC_H_ */
