/*
 * cwt.h
 *
 *  Created on: 11 feb. 2025
 *      Author: Cuba
 */

#ifndef WAVELET_ANALYSIS_INC_CWT_H_
#define WAVELET_ANALYSIS_INC_CWT_H_

#include <main.h>
#include "arm_math.h"
#include <arm_const_structs.h>
#include <wavelet.h>
#include <scales.h>
//_______________________________________________________________________________//
//************Opciones de configuracion del calculo de la CWT********************//
#define SIGNAL_SAMPLES   1024  // N
#define NUM_SCALES       64    // M
//************Otras definiciones*************************************************//
#define FFT   0
#define IFFT  1

//________________________________/////__________________________________________//

//_______________________________________________________________________________//
//***********************Prototipos de las funciones*****************************//
/*
 * @Brief CWT with CMSIS-DSP implementation
 * @Parameters:
 * -Input signal:Array of floats of a real signal
 * -pOutput: Pointer of complex numbers to save the CWT results
 * -mor:    Wavelet object
 * -scales: Scale Object
 * -sigLen: Input Signa,
 * @Notes:algoritm based on fCWT library
 */
void cwt(Morlet_t *mor,Scales_t *scales,float32_t *inputSignal,uint32_t sigLen,complex_t *pOutput);

/*
 * @Brief Convolve in time domain using a single wavelet
 * @Parameters:
 * -pInv: FFTW object pointer for the inverse FFT
 * -Ihat: Pointer to the Fourier transformed input signal
 * -O1: Pointer to the output buffer for the convolution result
 * -out: Pointer to the output buffer for the final result
 * -wav: Pointer to the Wavelet object
 * -size: Size of the original input signal
 * -newsize: Size of the zero-padded input signal (nearest power of 2)
 * -scale: Current scale for the wavelet transform
 * -lastscale: Boolean indicating if this is the last scale
 * @Notes: This function performs the convolution in the frequency domain using FFT.
 *         If lastscale is true, the result is copied to the output buffer.
 *         Otherwise, the result is directly written to the output buffer.
 */
void convolve(arm_cfft_instance_f32 *pInv,complex_t *Ihat,complex_t *O1,complex_t *pOutput,Morlet_t *mor,uint32_t sigLen,uint32_t newsize,float32_t scale,bool isLastScale);

/*
 * @Brief Perform FFT-based convolution using a wavelet
 * @Parameters:
 * -pInv: FFTW plan for the inverse FFT
 * -Ihat: Pointer to the Fourier transformed input signal
 * -O1: Pointer to the output buffer for the convolution result
 * -mother: Pointer to the mother wavelet array
 * -size: Size of the FFT
 * -scale: Current scale for the wavelet transform
 * -imaginary: Boolean indicating if the wavelet is imaginary
 * -doublesided: Boolean indicating if the wavelet is double-sided
 * @Notes: This function performs the generation and multiplication of the daughter wavelet
 *         with the Fourier transformed input signal, aligns the output buffer, and executes
 *         the inverse FFT to obtain the final result.
 */
void fftbased(arm_cfft_instance_f32 *pInv, complex_t *Ihat, complex_t *O1,complex_t *pOut, float32_t *mother, uint16_t size, float32_t scale, bool imaginary, bool doublesided);

/*
 * @Brief Perform multiplication of the daughter wavelet with the Fourier transformed input signal
 * @Parameters:
 * -input: Pointer to the Fourier transformed input signal
 * -output: Pointer to the output buffer for the multiplication result
 * -mother: Pointer to the mother wavelet array
 * -scale: Current scale for the wavelet transform
 * -isize: Size of the FFT
 * -imaginary: Boolean indicating if the wavelet is imaginary
 * -doublesided: Boolean indicating if the wavelet is double-sided
 * @Notes: This function performs the generation and multiplication of the daughter wavelet
 *         with the Fourier transformed input signal. It uses AVX instructions if available
 *         for optimized performance. The result is stored in the output buffer.
 */
void daughter_wavelet_multiplication(complex_t *input, complex_t *output, float32_t const *mother, float32_t  scale, uint16_t isize, bool imaginary, bool doublesided);


/*
 * @Brief funcion para buscar la primera pot de 2 que sea >= a n
 *
 */
uint32_t find2power(uint32_t n);


//___________________________________/////_______________________________________//



#endif /* WAVELET_ANALYSIS_INC_CWT_H_ */
