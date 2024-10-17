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




#endif /* INC_TIM_H_ */
