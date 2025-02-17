/*
 * signals.h
 *
 *  Created on: 9 feb. 2025
 *      Author: Cuba
 */

#ifndef WAVELET_ANALYSIS_INC_SIGNALS_H_
#define WAVELET_ANALYSIS_INC_SIGNALS_H_

#include <main.h>
#include <arm_math.h>
#include <math.h>


#define SIGNAL_5HZ_LEN 			  301
#define SIGNAL_F32_1KHZ_15KHZ_LEN 320


/*
 * @Brief Signal Plotter
 */
void standard_Plot_Input_Signal(float *signal,uint32_t signal_Lenght);

/*
 * @Brief f32-type Signal Plotter
 */
void f32_Plot_Input_Signal(float32_t *signal,uint32_t signal_Lenght);

/*
 * @Brief Pseudo delay
 */
void pseudoDelay(uint32_t cycles);


/*
 * @Brief Create a linear Chirp signal
 * @Par:
 * -fs: frecuencia de muestreo de la señal (Hz)
 * -deltaT:tiempo muestreado de la señal    (sec)
 */
float32_t* createChirp(uint32_t fs,uint8_t deltaT);

#endif /* WAVELET_ANALYSIS_INC_SIGNALS_H_ */
