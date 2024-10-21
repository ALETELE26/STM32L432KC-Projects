/*
 * adc.c
 *
 *  Created on: 18 oct. 2024
 *      Author: Cuba
 */
#include <adc.h>

/*
 * @brief ADC GPIO Pin PA1(A1)->Potentiometer
 */
void adc_GPIO_config(void)
{
	//Enable GPIO port A clock
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
	//Pin mode as analog mode
	GPIOA->MODER |= (GPIO_MODER_MODE1);
}
/*
 * @brief delay for ADC voltage regulator start-up time(20us)
 * A 80Mhz->CM=12.5ns->CM x 2000=25us>20us
 */
void adc_ADCVREG_STUP_delay(void)
{
	volatile uint32_t i;
	for (i=0;i<2000;i++) {}
}

/*
 * @brief ADC Single Channel Auto-delayed Continuous Conversion Mode
 */
void adc_single_channel_auto_delayed_continuous_conv_config(void)
{
	//Enable ADC clock
	RCC->AHB2ENR |= (RCC_AHB2ENR_ADCEN);
	//Select HCLK/1 as ADC clock source
	ADC1_COMMON->CCR &=~(ADC_CCR_CKMODE);
	ADC1_COMMON->CCR |= (ADC_CCR_CKMODE_0);
	//Exit the Deep-power-down mode
	ADC1->CR &=~ (ADC_CR_DEEPPWD);
	//Enable the ADC internal voltage regulator
	ADC1->CR |= (ADC_CR_ADVREGEN);
	//Wait for the startup time of the ADC voltage regulator
	adc_ADCVREG_STUP_delay();
	////ADC Calibration
	//Single-Ended Input mode calibration
	ADC1->CR &=~ (ADC_CR_ADCALDIF);
	//Calibration start
	ADC1->CR |= (ADC_CR_ADCAL);
	//Wait until calibration is stopped
	while (ADC1->CR & ADC_CR_ADCAL);
	//Right Align Mode
	ADC1->CFGR &=~ (ADC_CFGR_ALIGN);
    //Continuous Conversion Mode
	ADC1->CFGR |= (ADC_CFGR_CONT);
	//Auto-delayed Mode
	ADC1->CFGR |= (ADC_CFGR_AUTDLY);
	//Sample time to 24.5 ADC CLK Cycles
	//Tconv= (24.5+12.5) ADC CLK Cycles = 37 ADC clock cycles = 462.5ns
	//Max Sample Frequency = 2.16MHz
	ADC1->SMPR1 &=~ (ADC_SMPR1_SMP6);
	ADC1->SMPR1 |= (0x3UL << ADC_SMPR1_SMP6_Pos);
	//Single Channel Mode
	ADC1->SQR1 &=~(ADC_SQR1_L);
	//Select channel to convert: PA1(A1)->ADC12_IN6
	ADC1->SQR1  &=~ (ADC_SQR1_SQ1);
	ADC1->SQR1  &=~ (0x6UL << (6U));
	//Software Trigger
	ADC1->CFGR &=~ (ADC_CFGR_EXTEN);
    //Clear the ADC ready flag(It is cleared by writing 1 to it.)
	ADC1->ISR |=(ADC_ISR_ADRDY);
	//Enable ADC
	ADC1->CR |=(ADC_CR_ADEN);
	//Wait until ADC is ready
	while (!(ADC1->CR & ADC_CR_ADEN));
	//Clear the ADC ready flag again
	ADC1->ISR |=(ADC_ISR_ADRDY);
	//Start the first conversion
	ADC1->CR |=(ADC_CR_ADSTART);
}

