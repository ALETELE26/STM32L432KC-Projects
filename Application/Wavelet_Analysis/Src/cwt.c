/*
 * cwt.c
 *
 *  Created on: 13 feb. 2025
 *      Author: Cuba
 */

#include <cwt.h>
#include <complex.h>

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
void convolve(arm_cfft_instance_f32 *pInv,
		complex_t *Ihat,
		complex_t *O1,
		complex_t *pOutput,
		Morlet_t *mor,
		uint32_t sigLen,
		uint32_t newsize,
		float32_t scale,
		bool isLastScale){

	if(isLastScale){
		//Inicializo buffer temporal
		complex_t *lastscalemem = (complex_t*)aligned_alloc(32, newsize*sizeof(complex_t));
		arm_fill_f32(0.0f, (float32_t*)lastscalemem, 2*newsize);
		fftbased(pInv, Ihat, O1, lastscalemem, mor->base.mother, newsize,
				scale,mor->base.imag_frequency,mor->base.doublesided);
		arm_copy_f32((float32_t*)lastscalemem,(float32_t*)pOutput, 2*newsize);
	}
	else{
		if(!pOutput)printf("LA SALIDA NO ES UN PUNTERO\r\n");
		fftbased(pInv, Ihat, O1,pOutput , mor->base.mother, newsize,
						scale,mor->base.imag_frequency,mor->base.doublesided);

	}
}

/*
 * @Brief Perform FFT-based convolution using a wavelet
 * @Parameters:
 * -pInv: FFTW plan for the inverse FFT
 * -Ihat: Pointer to the Fourier transformed input signal
 * -O1: Pointer to the output buffer for the convolution result
 * -pOut: Pointer to the output buffer for the final result
 * -mother: Pointer to the mother wavelet array
 * -size: Size of the FFT
 * -scale: Current scale for the wavelet transform
 * -imaginary: Boolean indicating if the wavelet is imaginary
 * -doublesided: Boolean indicating if the wavelet is double-sided
 * @Notes: This function performs the generation and multiplication of the daughter wavelet
 *         with the Fourier transformed input signal, aligns the output buffer, and executes
 *         the inverse FFT to obtain the final result.
 */
void fftbased(arm_cfft_instance_f32 *pInv,
		complex_t *Ihat,
		complex_t *O1,
		complex_t *pOut,
		float32_t *mother,
		uint16_t size,
		float32_t scale,
		bool imaginary,
		bool doublesided){

	//Realizo la multiplicacion
	daughter_wavelet_multiplication(Ihat, O1, mother, scale, size, imaginary, doublesided);
	//Realizo la IFFT del resultado de la multiplicacion
	arm_cfft_f32(pInv, (float32_t*)O1, IFFT, ENABLE);
	arm_copy_f32((float32_t*)O1,(float32_t*)pOut, 2*size);

}

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
void daughter_wavelet_multiplication(complex_t *input,
		complex_t *output,
		float32_t const *mother,
		float32_t  scale,
		uint16_t isize,
		bool imaginary,
		bool doublesided)
{
	float32_t isizef=(float32_t)isize;
	float32_t endpointf;
	uint32_t s1 = isize - 1;
	//Busco el indice hasta el cual aplico la multiplicacion
	if (isizef<(isizef*2.0f/scale)) {
		endpointf=isizef;
	} else {
		endpointf=(isizef*2.0f/scale);
	}
	//Calculo el paso en el indice de la escala
	float32_t step= (scale/2.0f);
	//Trunco endpointf para obtener el indice enter
	uint32_t endpoint= (uint32_t)endpointf;
	float32_t tmp;
	uint32_t index;
	//Preparo el vector por el cual voy a multiplicar
	float32_t *tmpVector=(float32_t*)malloc(sizeof(float32_t) * isize);

	arm_fill_f32(1.0f, tmpVector, isize);
	//Le hago el downsampling a la wavelet hija
	for (int q = 0; q < endpoint; q++) {
		tmp=step * (float32_t)q;
		if (tmp > isizef - 1) tmp = isizef - 1;
		int index = (int)tmp;
		tmpVector[q]=mother[index];
	}

	//Aplico la conjugada si es necesario
	if(imaginary)
	{
		float32_t *tmpVector2=(float32_t*)malloc(sizeof(float32_t) * isize);
		arm_fill_f32(0.0f, tmpVector2, isize);
		arm_cmplx_mult_real_f32((float32_t*)input, tmpVector,tmpVector2, endpoint);
		arm_cmplx_conj_f32(tmpVector2, (float32_t*)output,isize);
		free(tmpVector2);
	}
	else{
		//Multiplico la wavelet hija por la transformada de la señal
		arm_cmplx_mult_real_f32((float32_t*)input, tmpVector,(float32_t*)output, endpoint);
		free(tmpVector);
	}
	//Si se requiere procesar la parte negativa (doublesided)
	if(doublesided){
		for (int i = 0; i < endpoint;i++)
		{
			tmp=step * (float32_t)i;
			if (tmp > isizef - 1) tmp = isizef - 1;
			int index = (int)tmp;
			output[s1 -i].real = input[s1 - i].real * mother[index] * (1 - 2 * imaginary);
			output[s1 -i].imag = input[s1 - i].imag * mother[index];
		}
	}
}


/*
 * @Brief CWT with CMSIS-DSP implementation
 * @Parameters:
 * -Input signal:Array of floats of a real signal
 * -pOutput: Pointer of complex numbers to save the CWT results
 * -scales: Scale Object
 * -sigLen: Input Signal,
 * @Notes:algoritm based on fCWT library
 */
void cwt(Morlet_t *mor,
		Scales_t *scales,
		float32_t *inputSignal,
		uint32_t sigLen,
		complex_t *pOutput){
	//Arreglos Temporales
	complex_t *Ihat, *O1;
	//Encuentro la potencia de dos más cercana al tamaño de la señal de entrada
	const uint32_t newsize = find2power(sigLen);
	//Cannot pass the nyquist frequency
	assert(newsize <= 4096 && "Tamaño de la transformada no soportado");
	//Inicializo los resultados intermedios de la FFT
	//Como resultado de la RFFT tengo una salida de (N/2 + 1)numeros complejos
	Ihat = (complex_t*)aligned_alloc(32, newsize*sizeof(complex_t));
	O1 = (complex_t*)aligned_alloc(32, newsize*sizeof(complex_t));
	arm_fill_f32(0.0f, (float32_t*)Ihat, 2*newsize);
	arm_fill_f32(0.0f, (float32_t*)O1, 2*newsize);
	//Instancio mi estructura de FFT(En este caso real porque mi funcion de entrada es real)
	arm_rfft_fast_instance_f32 myFFTObject;
	//Instancio otra estructura pero para calcular la IFFT compleja
	arm_cfft_instance_f32 myIFFTObject;
	//Loa inicializo
	arm_status status;
	status=arm_rfft_fast_init_f32(&myFFTObject, newsize);
	status=arm_cfft_init_f32(&myIFFTObject, newsize);
	//Calculo la FFT
	arm_rfft_fast_f32(&myFFTObject, inputSignal,(float32_t *)Ihat, FFT);
	//Genero la wavelet madre en el dominio de la frecuencia
	morlet_Gen_Freq(mor, newsize);
	//Aplico al vector de salida la simetria hermitiana F(-w)=F*(w)
	//Esto me permite tener una señal cuando haga la transformada inversa
	for(int i=1; i<(newsize>>1); i++) {
		Ihat[newsize-i].real = Ihat[i].real;
		Ihat[newsize-i].imag = -Ihat[i].imag;
	}
	//Para cada una de las escalas se multiplican a cada punto
	//del espectro FFT de la señal de entrada
	for (int i = 0; i < scales->nscales; i++) {
		convolve(&myIFFTObject, Ihat, O1, pOutput, mor, sigLen,
				newsize, scales->scales[i], i==(scales->nscales-1));
		pOutput= pOutput + sigLen;
	}
	//Libero memoria que ya no necesito
	free(Ihat);
	free(O1);
	free(mor);
	free(scales);
}



uint32_t find2power(uint32_t n)
{
    // Si n es 0, definimos que la función retorne 0 para evitar bucle infinito.
    if(n == 0)
        return 0;

    uint32_t m2 = 1;
    // Mientras m2 sea menor que n, se multiplica por 2
    while(m2 < n) {
        m2 <<= 1;
    }
    return m2;
}
