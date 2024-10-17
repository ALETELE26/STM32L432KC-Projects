/*
 * adc.h
 *
 *  Created on: 17 oct. 2024
 *      Author: Cuba
 */

#ifndef INC_ADC_H_
#define INC_ADC_H_

#include <main.h>

/*
 * @brief ADC GPIO Pin PA1->Potentiometer
 */
void adc_GPIO_config(void);
/*
 * @brief ADC Single Channel Auto-delayed Continuous Conversion Mode
 */
void adc_single_channel_auto_delayed_continuous_conv_config(void);
/*
 * @brief delay for ADC voltage regulator start-up time(20us)
 * A 80Mhz->CM=12.5ns->CM x 2000=25us>20us
 */
void adc_ADCVREG_STUP_delay(void);


#endif /* INC_ADC_H_ */



