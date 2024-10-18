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
 * @brief ADC Single Channel Continuous Conversion Mode
 */
void adc_single_channel_continuos_conv_config(void);
#endif /* INC_ADC_H_ */



