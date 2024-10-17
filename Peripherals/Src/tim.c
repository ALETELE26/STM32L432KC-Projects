/*
 * tim.c
 *
 *  Created on: 12 oct. 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#include <tim.h>
/*
 * @Brief Delay Timer Configuration - TIM2
 */
void tim_TIM2_delayConfig(void)
{
	//Enable TIM 2 Timer CLOCK
	RCC->APB1ENR1 |= (RCC_APB1ENR1_TIM2EN);
	//Count Up Mode
	TIM2->CR1 &= ~(TIM_CR1_DIR);
	//Prescaler to 1MHz TCLOCK
	// CK_CNT=fCK_PSC / (PSC[15:0] + 1)
	TIM2->PSC = 80-1;//Ya que 80MHz/80 es 1MHz
	//Enable TIM2 Update Interrupt
	TIM2->DIER |=(TIM_DIER_UIE);
	//Set the interrupt priority
	NVIC_SetPriority(TIM2_IRQn,0);
	//Enable the interrupt
	NVIC_EnableIRQ(TIM2_IRQn);
}
/*
 * @Brief Microsecond Delay - TIM2
 */
void tim_TIM2_usDelay(uint32_t us)
{
	//Setting autoreload value
	//The Counter is overflow when exceed this value
	TIM2->ARR = us - 1;
	//Clock trigger
	TIM2->CR1 |= (TIM_CR1_CEN);
	while(!(TIM2->SR & (TIM_SR_UIF)));
	//Clock stop
	TIM2->CR1 &= ~(TIM_CR1_CEN);
	//Clear update interrupt flag
	TIM2->SR &= ~(TIM_SR_UIF);
}
/*
 * @Brief Millisecond Delay - TIM2
 */
void tim_TIM2_msDelay(uint32_t ms)
{
	for (uint32_t i=0;i<ms;i++)
	{
		tim_TIM2_usDelay(1000);//Delay of 1ms
	}

}
/*
 * @Brief Input Capture Timer Configuration - TIM3
 */
void tim_TIM1_InputCaptureConfig(void)
{
	//Enable TIM 1 Timer CLOCK
	RCC->APB2ENR |= (0x1UL << (11U));
	//Prescaler to 1MHz TCLOCK
	// CK_CNT=fCK_PSC / (PSC[15:0] + 1)
	TIM1->PSC = 80-1;//Ya que 80MHz/80 es 1MHz
	//Map TI1 on GPIO
	TIM1->OR1  &= ~(TIM1_OR1_TI1_RMP);
	//Map TIMx_CH1 to TI1
	TIM1->CR2 &= ~(TIM_CR2_TI1S);
	//Map IC1 on TI1
	TIM1->CCMR1 &= ~(TIM_CCMR1_CC1S);
	TIM1->CCMR1 |= (TIM_CCMR1_CC1S_0);
	//Validate a transition on TI1 when 8 consecutive
	//samples with the new level have been detected
	TIM1->CCMR1 &= ~(TIM_CCMR1_IC1F);
	TIM1->CCMR1 |= (0x3UL << (4U));
	//Trigger on signal rise
	TIM1->CCER &= ~(TIM_CCER_CC1NP);
	TIM1->CCER &= ~(TIM_CCER_CC1P);
	//Disable capture prescaler
	TIM1->CCMR1 &= ~(TIM_CCMR1_IC1PSC);
	//Enable capture
	TIM1->CCER |= (TIM_CCER_CC1E);
	//Enable capture/compare interrupt
	TIM1->DIER |= (TIM_DIER_CC1IE);
	//Set interrupt priority
	NVIC_SetPriority(TIM1_CC_IRQn,1);
	//Enable interrupt
	NVIC_EnableIRQ(TIM1_CC_IRQn);
	//Enable update timer interrupt
	TIM1->DIER |= (TIM_DIER_UIE);
	//Set interrupt priority
	NVIC_SetPriority(TIM1_UP_TIM16_IRQn ,0);
	//Enable interrupt
	NVIC_EnableIRQ(TIM1_UP_TIM16_IRQn);
	//Enable counter
	TIM1->CR1 |=(TIM_CR1_CEN);



}


