/*
 * SD_writing.c
 *
 *  Created on: 7 nov. 2024
 *      Author: Cuba
 */


#include <main.h>
#include <uart.h>
#include <spi.h>
#include <gpio.h>
#include <fatfs.h>
uint32_t SYSTEM_CLK=16000000;
//FatFs variables
FRESULT fresult;
FATFS fs;
DWORD freeClusters;
FATFS *pFatFs;
uint32_t total_size,free_space;;
int main (void)
{
	//----------Setup------------------------------//
	//16 MHz HSI Clock configuration
	rcc_HSI_UART_config();
	//System Timer Configuration
	rcc_SysTick_config(SYSTEM_CLK/8000);
	//User led configuration
	gpio_LED_config();
	//UART configuration
	uart_UART2_GPIO_config();
	uart_UART2_config(SYSTEM_CLK);
	//SD Card initialization
	spi_SD_CS_config();
	spi_GPIO_config();
	spi_config(SYSTEM_CLK);
	MX_FATFS_Init(); //Initialize FatFs layer
	rcc_msDelay(100);
	//Mount SD Card
	fresult=f_mount(&fs, "", 1);
	if (fresult != FR_OK)
	{
		printf("Failed to mount SD card to FatFs\r\n");
	}
	else
	{
		printf("Successfully Mounted SD card\r\n");
	}
	//Print status
	printf("SD card result = %d\r\n",fresult);
	//Read SD card size and free space
	f_getfree("",&freeClusters, &pFatFs);
    total_size= (pFatFs->n_fatent - 2)*pFatFs->csize;
    free_space = freeClusters*pFatFs->csize;
    //SD card clusters have 512Bytes
    //For that we want the number of clusters/2
    //(number of 1024bytes(1KB) clusters)
    printf("%lu KB total drive space.\r\n",total_size/2);
    printf("%lu KB available space.\r\n",free_space/2);

	//----------Loop forever-----------------------//
	while(1)
	{
       gpio_LED_toggleGreen();
       rcc_msDelay(500);
	}
	return 0;
}


