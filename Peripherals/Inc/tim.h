/*
 * tim.h
 *
 *  Created on: 12 oct. 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#ifndef INC_TIM_H_
#define INC_TIM_H_

#include <main.h>
/*
 * @Brief Delay Timer Configuration - TIM2
 */
void tim_TIM2_delayConfig(void);
/*
 * @Brief Millisecond Delay - TIM2
 */
void tim_TIM2_msDelay(uint32_t ms);
/*
 * @Brief Microsecond Delay - TIM2
 */
void tim_TIM2_usDelay(uint32_t us);
/*
 * @Brief Input Capture Timer Configuration - TIM1
 */
void tim_TIM1_InputCaptureConfig(void);
/*
 * @Brief PWM Channel GPIO Configuration - TIM15
 */
void tim_TIM15_PWM_GPIO_config(void);
/*
 * @Brief Timer PWM Mode Configuration - TIM15
 */
void tim_TIM15_PWM_config(void);
/**
 * @Brief PWM Duty Cycle  - Brightness(0-4096)
 */
void tim_PWM_setBrightness(uint16_t bright);









#endif /* INC_TIM_H_ */
