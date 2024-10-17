/*
 * gpio.c
 *
 *  Created on: 1 oct. 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#include <gpio.h>

/*
 * Brief LEDs GPIO Configuration PB3(On-board Led 3(Green))
 */
void gpio_LED_config(void)
{
  //Enable GPIO port B clock
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
  //Pin mode to output
  GPIOB->MODER &= ~(GPIO_MODER_MODE3);
  GPIOB->MODER |= (GPIO_MODER_MODE3_0);
  //Seting output as PushPull
  GPIOB->OTYPER &= ~(GPIO_OTYPER_ODR_3);
  //Setting as High Speed Output
  GPIOB->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR3);
  GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR3_1);
}

/*
 * Brief Write/Toggle functions
 */

void gpio_LED_writeGreen(bool state)
{
    if(state)
    {
      GPIOB->ODR |= (GPIO_ODR_OD3);
    }
    else
    {
      GPIOB->ODR &= ~(GPIO_ODR_OD3);
    }
}

void gpio_LED_toggleGreen(void)
{
    GPIOB->ODR ^= (GPIO_ODR_OD3);
}

/*
 * @Brief PA8(D9) as TIM1_CH1 input alternate function
 */
void gpio_TIM1_CH1_input_config(void)
{
	//Enable GPIO port A clock
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
	//Pin mode to alternate function mode
	GPIOA->MODER &= ~(GPIO_MODER_MODER8);
	GPIOA->MODER |= (GPIO_MODER_MODER8_1);
	GPIOA->AFR[1] &= ~(GPIO_AFRH_AFSEL8_Msk);
	GPIOA->AFR[1] |= (GPIO_AFRH_AFSEL8_0);
}
