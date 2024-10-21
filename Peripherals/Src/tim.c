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
//	while(!(TIM2->SR & (TIM_SR_UIF)));
//	//Clock stop
//	TIM2->CR1 &= ~(TIM_CR1_CEN);
//	//Clear update interrupt flag
//	TIM2->SR &= ~(TIM_SR_UIF);
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
	//Enable update timer interrupt
	TIM1->DIER |= (TIM_DIER_UIE);
	//Set interrupt priority
	NVIC_SetPriority(TIM1_CC_IRQn,1);
	//Enable interrupt
	NVIC_EnableIRQ(TIM1_CC_IRQn);
	//Set interrupt priority
	NVIC_SetPriority(TIM1_UP_TIM16_IRQn ,0);
	//Enable interrupt
	NVIC_EnableIRQ(TIM1_UP_TIM16_IRQn);
	//Enable counter
	TIM1->CR1 |=(TIM_CR1_CEN);
}

/*
 * @Brief PWM TIM15_CH1 GPIO Configuration(PA2->A7) - TIM15
 */
void tim_TIM15_PWM_GPIO_config(void)
{
	//Enable GPIO port A clock
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
	//Setting as High Speed Output
	GPIOA->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR2);
	GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR2_1);
	//Pin mode to alternate function mode(AF14)
	GPIOA->MODER &= ~(GPIO_MODER_MODER2);
	GPIOA->MODER |= (GPIO_MODER_MODER2_1);
	GPIOA->AFR[0] &= ~(GPIO_AFRL_AFRL2);
	GPIOA->AFR[0] |= (0xEUL << GPIO_AFRL_AFSEL2_Pos);
}
/*
 * @Brief Timer PWM Mode Configuration - TIM15
 * 10Hz fixed frequency
 */
void tim_TIM15_PWM_config(void)
{
	//Enable TIM15 clock
	RCC->APB2ENR|=(RCC_APB2ENR_TIM15EN);
	//Periodic
	TIM15->CR1 &=~ (TIM_CR1_OPM);
	//Mode-->Reset
	TIM15->CR2 &=~ (TIM_CR2_MMS);
	//Prescalar
	// CK_CNT=fCK_PSC / (PSC[15:0] + 1)
	TIM15->PSC =8000-1;//10kHz TIM15 CLK frequency
	//Period
	TIM15->ARR = 1000-1;//10Hz PWM signal frequency
	//Clear update interrupt flag
	TIM15->SR &=~ (0x1UL<< (0U));
	//Disable Output Compare
	TIM15->CCER=0;
	//Compare and Capture as Output Mode
	TIM15->CCMR1 &=~ (TIM_CCMR1_CC1S);
	////CH1 PWM output mode 1
	//CH1 is HIGH as long as TIMx_CNT<TIMx_CCR1 else is LOW
	TIM15->CCMR1 &=~ (TIM_CCMR1_OC1M);
	TIM15->CCMR1 |= (0x7UL << TIM_CCMR1_OC1M_Pos);
	//Enable preload and fast CC mode
	TIM15->CCMR1 |= (TIM_CCMR1_OC1PE);
	TIM15->CCMR1 |= (TIM_CCMR1_OC1FE);
	//Enable auto-reload preload register
	TIM15->CR1 |= (TIM_CR1_ARPE);
	//CH1 HIGH polarity
	TIM15->CCER &=~ (TIM_CCER_CC1P);
	//PWM Duty Cycle(Initially)
	TIM15->CCR1=0;
	//Enable OC CH1(not it's complementary channel)
	TIM15->BDTR |= (TIM_BDTR_MOE);
	TIM15->CCER |= (TIM_CCER_CC1E);
	//Trigger on timer
	TIM15->CR1 |= (TIM_CR1_CEN);
}
/**
 * @Brief PWM Duty Cycle  - Brightness(0-4096)
 */
void tim_PWM_setBrightness(uint16_t bright)
{
TIM15->CCR1= (uint16_t)((TIM15->ARR+0.0f)*(bright/4096.0f));

}

