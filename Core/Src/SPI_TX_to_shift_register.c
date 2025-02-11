///*
// * SPI_TX_to_shift_register.c
// *
// *  Created on: 12 nov. 2024
// *      Author: Cuba
// */
//
//
//#include <main.h>
//#include <uart.h>
//#include <spi.h>
//#include <gpio.h>
//uint32_t SYSTEM_CLK=80000000;
//uint8_t data=0;
//int main (void)
//{
//	//----------Setup------------------------------//
//
//	//Clock Source 80MHz
//	rcc_MSI_config();
//	//System Timer Configuration
//	rcc_SysTick_config(SYSTEM_CLK/8000);
//	//SPI configuration
//	spi_GPIO_config();
//	spi_SD_CS_config();
//	spi_config(SYSTEM_CLK, false,1);
//	rcc_msDelay(100);
//	//----------Loop forever-----------------------//
//	while(1)
//	{
//		for (data = 0; data < 256; ++data) {
//			spi_cs_sd_write(false);//Listening data
//			spi_transmit((uint8_t *)&data, 1, 100);
//			spi_cs_sd_write(true);//Transfer complete latch the data
//			rcc_msDelay(500);
//		}
//
//
//
//	}
//	return 0;
//}
//
//
