/*
 * signals.c
 *
 *  Created on: 9 feb. 2025
 *      Author: Cuba
 */
#include <signals.h>


const float _5hz_signal[SIGNAL_5HZ_LEN]=
{
		0,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,1.2246e-16,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-2.4493e-16,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,3.6739e-16,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-4.8986e-16,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,6.1232e-16,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-7.3479e-16,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-2.6955e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-9.7972e-16,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,1.1022e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-1.2246e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-2.2056e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-1.4696e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-1.9607e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,5.3909e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,5.3897e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-9.0649e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,5.6346e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-2.2044e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,5.8795e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-2.4493e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-9.8096e-16,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,4.4112e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,6.3694e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-2.9392e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-4.911e-16,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,3.9213e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-7.3516e-15,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-3.429e-15,0.30902,0.58779,0.80902,0.95106,1,0.95106,0.80902,0.58779,0.30902,-1.238e-18,-0.30902,-0.58779,-0.80902,-0.95106,-1,-0.95106,-0.80902,-0.58779,-0.30902,-1.0779e-14

};

const float32_t inputSignal_f32_1kHz_15kHz[SIGNAL_F32_1KHZ_15KHZ_LEN] =
{
		+0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		-0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
		-0.8660254038f, -0.4619397663f, -1.3194792169f, -1.1827865776f, -0.5000000000f, -1.1827865776f, -1.3194792169f, -0.4619397663f,
		-0.8660254038f, -1.2552931065f, -0.3535533906f, -0.4174197128f, -1.0000000000f, -0.1913417162f, +0.0947343455f, -0.5924659585f,
		+0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		+0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
		-0.8660254038f, -0.4619397663f, -1.3194792169f, -1.1827865776f, -0.5000000000f, -1.1827865776f, -1.3194792169f, -0.4619397663f,
		-0.8660254038f, -1.2552931065f, -0.3535533906f, -0.4174197128f, -1.0000000000f, -0.1913417162f, +0.0947343455f, -0.5924659585f,
		+0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		+0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
		-0.8660254038f, -0.4619397663f, -1.3194792169f, -1.1827865776f, -0.5000000000f, -1.1827865776f, -1.3194792169f, -0.4619397663f,
		-0.8660254038f, -1.2552931065f, -0.3535533906f, -0.4174197128f, -1.0000000000f, -0.1913417162f, +0.0947343455f, -0.5924659585f,
		-0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		-0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
		-0.8660254038f, -0.4619397663f, -1.3194792169f, -1.1827865776f, -0.5000000000f, -1.1827865776f, -1.3194792169f, -0.4619397663f,
		-0.8660254038f, -1.2552931065f, -0.3535533906f, -0.4174197128f, -1.0000000000f, -0.1913417162f, +0.0947343455f, -0.5924659585f,
		+0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		+0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
		-0.8660254038f, -0.4619397663f, -1.3194792169f, -1.1827865776f, -0.5000000000f, -1.1827865776f, -1.3194792169f, -0.4619397663f,
		-0.8660254038f, -1.2552931065f, -0.3535533906f, -0.4174197128f, -1.0000000000f, -0.1913417162f, +0.0947343455f, -0.5924659585f,
		-0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		+0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
		-0.8660254038f, -0.4619397663f, -1.3194792169f, -1.1827865776f, -0.5000000000f, -1.1827865776f, -1.3194792169f, -0.4619397663f,
		-0.8660254038f, -1.2552931065f, -0.3535533906f, -0.4174197128f, -1.0000000000f, -0.1913417162f, +0.0947343455f, -0.5924659585f,
		-0.0000000000f, +0.5924659585f, -0.0947343455f, +0.1913417162f, +1.0000000000f, +0.4174197128f, +0.3535533906f, +1.2552931065f,
		+0.8660254038f, +0.4619397663f, +1.3194792169f, +1.1827865776f, +0.5000000000f, +1.1827865776f, +1.3194792169f, +0.4619397663f,
		+0.8660254038f, +1.2552931065f, +0.3535533906f, +0.4174197128f, +1.0000000000f, +0.1913417162f, -0.0947343455f, +0.5924659585f,
		+0.0000000000f, -0.5924659585f, +0.0947343455f, -0.1913417162f, -1.0000000000f, -0.4174197128f, -0.3535533906f, -1.2552931065f,
};

/*
 * @Brief Pseudo delay
 */
void pseudoDelay(uint32_t cycles)
{
	for (int i = 0; i < cycles; ++i) {}
}
/*
 * @Brief Signal Plotter
 */
void standard_Plot_Input_Signal(float *signal,uint32_t signal_Lenght)
{

	for (int i = 0; i < signal_Lenght; ++i)
	{
		printf("%f\r\n",signal[i]);
		pseudoDelay(9000);
	}

}

/*
 * @Brief f32-type Signal Plotter
 */
void f32_Plot_Input_Signal(float32_t *signal,uint32_t signal_Lenght)
{

	for (int i = 0; i < signal_Lenght; ++i)
	{
		printf("%f\r\n",signal[i]);
		pseudoDelay(9000);
		//rcc_msDelay(1);
	}

}

/*
 * @Brief Create a linear Chirp signal
 * @Par:
 * -fs: frecuencia de muestreo de la señal (Hz)
 * -deltaT:tiempo muestreado de la señal    (sec)
 */
float32_t* createChirp(uint32_t fs,float32_t deltaT,float32_t freq_Inicial,float32_t freq_Final){
	//Number of samples is sampling rate by time
	uint32_t num_Samples= (uint32_t)((float32_t)fs * deltaT);
	//Inicialize my signal vector
	float32_t *signal=(float32_t*)malloc(sizeof(float32_t)*num_Samples);
	// Generar el vector de tiempo
	float32_t *time = (float *)malloc(num_Samples * sizeof(float));
	float32_t *time_alCuadrado = (float *)malloc(num_Samples * sizeof(float));
	float32_t *temp1= (float *)malloc(num_Samples * sizeof(float));
	float32_t *temp2= (float *)malloc(num_Samples * sizeof(float));
	for (int i = 0; i < num_Samples; i++) {
		time[i] = (float32_t)i / (float32_t)fs;
	}
	//Calculo la tasa de cambio de la frecuencia
	float32_t k=(freq_Final-freq_Inicial)/time[num_Samples-1];

	//Elevo al cuadrado mi vector temporal
	arm_mult_f32(time, time, time_alCuadrado, num_Samples);
	//temp1=(t^2)*0.5k
	arm_scale_f32(time_alCuadrado, (0.5f*k), temp1, num_Samples);
	//temp2=t*f0
	arm_scale_f32(time, freq_Inicial, temp2, num_Samples);
	//time_alcuadrado=(t*f0)+((t^2)*0.5k)
	arm_add_f32(temp2, temp1, time_alCuadrado,num_Samples);
	//time=((t*f0)+((t^2)*0.5k))*(2*PI)
	arm_scale_f32(time_alCuadrado, (2.0f*PI), time, num_Samples);
	//Generate my signal
	for (int i = 0; i < num_Samples; ++i) {
		signal[i]=arm_sin_f32(time[i]);
	}
	//Libero los vectores auxiliares
	free(time);
	free(temp1);
	free(time_alCuadrado);
	free(temp2);

	return signal;
}


