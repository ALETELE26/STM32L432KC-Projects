/*
 * scales.h
 *
 *  Created on: 12 feb. 2025
 *      Author: Cuba
 */

#ifndef WAVELET_ANALYSIS_INC_SCALES_H_
#define WAVELET_ANALYSIS_INC_SCALES_H_

#include <main.h>
#include <arm_math.h>
#include <math.h>
#include <wavelet.h>

//Tipos de escalas posibles
typedef enum {
    FCWT_LINSCALES,
    FCWT_LOGSCALES,
    FCWT_LINFREQS
} SCALETYPE;

/*
 * @Brief Scales Class
 * @Atributos:
 * -scales:  puntero de floats de escalas calculadas
 * -fs:      frecuencia de muestreo de la señal de entrada
 * -fourwavl:longitud de la wavelet en el dominio de Fourier
 * -nscales: numero de escalas a calcular
 */

typedef struct{

    float32_t *scales;
    int32_t    fs;
    int32_t    nscales;


}Scales_t;

/*
 * @Brief Constructor de la estructura escala
 * -myScales:objeto de escalas
 * -wav:   objeto de la wavelet
 * -st:    tipo de escalas que se quiere calcular
 * -afs:   frecuencia de muestreo de la señal de entrada
 * -af0:   frecuencia inicial donde se desea analizar la señal
 * -af1:   frecuencia final donde se desea analizar la señal
 * -afn:   numero de escalas a calcular
 *
 */
void scales_Init(Scales_t *myScales,Wavelet_t *wav,SCALETYPE st,int32_t afs, float32_t af0, float32_t af1, int32_t afn);

/*
 * @Brief Generador del array de escalas en forma logaritmica
 * @Parameters
 * -myScales:objeto de escalas
 * -base: base del logaritmo usado para calcular las escalas
 * -fs:   frecuencia de muestreo de la señal de entrada
 * -f0:   frecuencia inicial donde se desea analizar la señal
 * -f1:   frecuencia final donde se desea analizar la señal
 * -fn:   numero de escalas a calcular
 */
void calculate_logscale_array(Scales_t *myScales,float32_t base, int32_t fs, float32_t f0, float32_t f1, int32_t fn);

/*
 * @Brief Generador del array de escalas en forma lineal
 * @Parameters
 * -myScales:objeto de escalas
 * -fs:   frecuencia de muestreo de la señal de entrada
 * -f0:   frecuencia inicial donde se desea analizar la señal
 * -f1:   frecuencia final donde se desea analizar la señal
 * -fn:   numero de escalas a calcular
 */
void calculate_linscale_array(Scales_t *myScales, int32_t fs, float32_t f0, float32_t f1, int32_t fn);


/*
 * @Brief Generador del array de frecuencias en forma lineal
 * @Parameters
 * -myScales:objeto de escalas
 * -fs:   frecuencia de muestreo de la señal de entrada
 * -f0:   frecuencia inicial donde se desea analizar la señal
 * -f1:   frecuencia final donde se desea analizar la señal
 * -fn:   numero de escalas a calcular
 */
void calculate_linfreq_array(Scales_t *myScales, int32_t fs, float32_t f0, float32_t f1, int32_t fn);




#endif /* WAVELET_ANALYSIS_INC_SCALES_H_ */
