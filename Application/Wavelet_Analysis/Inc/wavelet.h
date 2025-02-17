/*
 * wavelet.h
 *
 *  Created on: 11 feb. 2025
 *      Author: Cuba
 */

#ifndef WAVELET_ANALYSIS_INC_WAVELET_H_
#define WAVELET_ANALYSIS_INC_WAVELET_H_

#include <main.h>
#include "arm_math.h"
#include <math.h>
//_______________________________________________________________________________//
//*******************************Definiciones************************************//
#define PI        3.14159265358979f
#define TWOPI     6.28318531f
#define IPI4      0.75112554446f
#define LN_2      0.693147181f



//________________________________/////__________________________________________//




//_______________________________________________________________________________//
//****************************Estructuras y métodos******************************//
/*
 * @Brief Estructura para almacenar datos complejos
 */
typedef struct {
    float32_t real;
    float32_t imag;
} complex_t;


///* Declaración adelantada de la estructura para usarla en los prototipos */
//struct Wavelet_t;

////Prototipos de funciones "virtuales"
//typedef void (*GenFreqFunc)(struct Wavelet_t *self, int size);
//typedef void (*GenCpxTimeFunc)(struct Wavelet_t *self, complex_t *cpxNumber, int size, float scale);

/*
 * @Brief Estructura base Wavelet
 */
typedef struct{

	//Atributos
	uint32_t    width;
	float32_t   four_wavelen;
	float32_t  *mother;
	bool imag_frequency;
	bool doublesided;




}Wavelet_t;

/*
 * @Brief Estructura Wavelet Morlet
 */
typedef struct{

	//Ancho de la wavelet
	Wavelet_t base;
    float32_t fb;//En la notacion del libro es f sub 0
                 //Esta definida como la frecuencia central de la Wavelet
    float32_t ifb;//Es uno sobre f sub 0
    float32_t fb2;//Es 2 por f sub 0 al cuadrado


} Morlet_t;
//************************Metodos de la estructura Wavelet*********************//
/*
 * @Brief Constructor por default de la clase wavelet
 */
void wavelet_Init(Wavelet_t *w);

//************************Metodos de la estructura Morlet**********************//

/*
 * @Brief Constructor clase Morlet
 */
void morlet_Init(Morlet_t *mor,float32_t bandwidth);

/*
 * @Brief Generador de Morlet en el dominio del tiempo
 */
void morlet_Gen_Time(Morlet_t *mor, complex_t *cpxNumber, uint32_t size, float32_t scale);

/*
 * @Brief Generador de Morlet en el dominio de la frecuencia
 */
void morlet_Gen_Freq(Morlet_t *mor, uint32_t size);



//________________________________/////__________________________________________//

#endif /* WAVELET_ANALYSIS_INC_WAVELET_H_ */
