/*
 * gpio.h
 *
 *  Created on: 1 oct. 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#ifndef INC_GPIO_H_
#define INC_GPIO_H_

#include "main.h"
/*
 * Brief LEDs GPIO Configuration PB3(On-board Led 3(Green))
 */
void gpio_LED_config(void);
/*
 * Brief Write/Toggle functions
 */
void gpio_LED_writeGreen(bool state);
void gpio_LED_toggleGreen(void);
/*
 * @Brief PA8(D9) as TIM1_CH1 input alternate function
 */
void gpio_TIM1_CH1_input_config(void);

#endif /* INC_GPIO_H_ */
