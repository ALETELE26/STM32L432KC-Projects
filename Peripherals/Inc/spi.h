/*
 * spi.h
 *
 *  Created on: 6 nov. 2024
 *      Author: Cuba
 */

#ifndef INC_SPI_H_
#define INC_SPI_H_
#include <main.h>

/**
 * @Brief SPI1 GPIO pins configuration
 * (PA5(A4)->SP1_SCK,PA6(A5)->SP1_MISO,PA7(A6)->SP1_MOSI)
 */
void spi_GPIO_config(void);

/**
 * @Brief SPI1 peripheral configuration
 */
void spi_config(uint32_t SYSTEM_CLK);

/**
 * @Brief SPI1 transmit
 */
bool spi_transmit(uint8_t *pointer_data,uint8_t len,uint32_t timeout);

/**
 * @Brief SPI1 receive
 */
bool spi_receive(uint8_t *pointer_data,uint8_t len,uint32_t timeout);

/**
 * @Brief SPI1 transmit/receive
 */
bool spi_transmitReceive(uint8_t *RX_buffer,uint8_t *TX_buffer,uint8_t len,uint32_t timeout);

/**
 * @Brief SD Chip Select pin configuration
 * PA4(A3)
 */
void spi_SD_CS_config(void);

/**
 * @Brief SD Chip Select Set/Reset
 */
void spi_cs_sd_write(bool state);


#endif /* INC_SPI_H_ */
