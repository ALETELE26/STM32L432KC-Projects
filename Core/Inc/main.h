/*
 * main.h
 *
 *  Created on: Oct 1, 2024
 *      Author: Alejandro Iglesias Gutiérrez
 */

#ifndef INC_MAIN_H_
#define INC_MAIN_H_

#include <stm32l4xx.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <rcc.h>

/*
 * Configurations OPTIONS
 */
//-----------------------------------------//
#define SYSTEM_CLK			80000000
#define UART_BAUDRATE 		115200
//-----------------------------------------//




//Others Macros

#define ENABLE  1
#define DISABLE 0
#define SET		ENABLE
#define RESET 	DISABLE
#define FLAG_RESET	RESET
#define FLAG_SET	SET
//#define __USING_SD_CARD

#endif /* INC_MAIN_H_ */
