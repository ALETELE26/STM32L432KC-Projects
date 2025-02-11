///*
// * SD_writing.c
// *
// *  Created on: 7 nov. 2024
// *      Author: Cuba
// */
//
//
//#include <main.h>
//#include <uart.h>
//#include <spi.h>
//#include <gpio.h>
//#include "ff.h"
////Configurations
//#define SYSTEM_CLK 72000000
////SPI Handler object instance
//SPI_Handle_t mySPI_Handler;
////FatFs variables
//FRESULT fresult;
//FATFS fs;
//DWORD freeClusters;
//FATFS *pFatFs;
//uint32_t total_size,free_space;;
//FIL file;
//UINT readBytes=0;
//UINT writeBytes=0;
//#define BUFFER_SIZE 128
//char buffer[BUFFER_SIZE];  // to store strings..
//int bufsize (char *buf)
//{
//	int i=0;
//	while (*buf++ != '\0') i++;
//	return i;
//}
//
//void clear_buffer (void)
//{
//	for (int i=0; i<BUFFER_SIZE; i++) buffer[i] = '\0';
//}
//
//int main (void)
//{
//	//----------Setup------------------------------//
//	//72 MHz HSI Clock configuration
//	rcc_MSI_PLL_config(SYSTEM_CLK);
//	//System Timer Configuration
//	rcc_SysTick_config(SYSTEM_CLK/8000);
//	//User led configuration
//	gpio_LED_config();
//	//UART configuration
//	uart_UART2_GPIO_config();
//	uart_UART2_config(SYSTEM_CLK);
//	//SD Card initialization
//	spi_GPIO_config();
//	spi_config(SYSTEM_CLK,&mySPI_Handler);
//	//Mount SD Card
//	fresult=f_mount(&fs, "/", 1);
//	if (fresult != FR_OK)
//	{
//		printf("Failed to mount SD card to FatFs\r\n");
//	}
//	else
//	{
//		printf("Successfully Mounted SD card\r\n");
//	}
//	//Print status
//	printf("SD card result = %d\r\n",fresult);
////	//Read SD card size and free space
////	f_getfree("",&freeClusters, &pFatFs);
////	total_size= (pFatFs->n_fatent - 2)*pFatFs->csize;
////	free_space = freeClusters*pFatFs->csize;
////	//SD card clusters have 512Bytes
////	//For that we want the number of clusters/2
////	//(number of 1024bytes(1KB) clusters)
////	printf("%lu KB total drive space.\r\n",total_size/2);
////	printf("%lu KB available space.\r\n",free_space/2);
//
//	//Open a file for r/w
//	fresult=f_open(&file, "Test3.txt", FA_OPEN_ALWAYS | FA_READ | FA_WRITE | FA_CREATE_ALWAYS );
//	if (fresult != FR_OK)
//	{
//		printf("Failed to open a file\r\n");
//	}
//	else
//	{
//		printf("Successfully opened file\r\n");
//		//Write to the file
//		strcpy (buffer, "Trabajando sin HAL,con mis funciones a base de registros.");
//		fresult=f_write(&file, buffer, bufsize(buffer), &writeBytes);
//		//f_puts("This is a test in STM32, getting started uSD Card.", &file);
//		if (fresult != FR_OK)
//		{
//			printf("Failed to write a file in the SD card \r\n");
//		}
//		else
//		{
//			printf("The file was written successfully\r\n");
//			/* Close file */
//			f_close(&file);
//			// Clearing buffer to show that result obtained is from the file
//			clear_buffer();
//			/* Open file to read */
//			fresult = f_open(&file, "Test3.txt", FA_READ);
//			if (fresult != FR_OK)
//			{
//				printf("Failed to open a file for read\r\n");
//			}
//			else
//			{
//				printf("Successfully opened file for read\r\n");
//				//Read data from the file
//				fresult=f_read(&file, buffer, f_size(&file), &readBytes);
//				if (fresult != FR_OK)
//				{
//					printf("Failed to read a file in the SD card \r\n");
//				}
//				else
//				{
//					printf("The file was read successfully\r\n");
//					printf(buffer);
//					printf("\n");
//				}
//			}
//		}
//		f_close(&file);
//		clear_buffer();
//	}
//
//		//----------Loop forever-----------------------//
//		while(1)
//		{
//			gpio_LED_toggleGreen();
//			rcc_msDelay(500);
//		}
//		return 0;
//	}
//
//
