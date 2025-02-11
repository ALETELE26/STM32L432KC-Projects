/*
 ******************************************************************************
 * @file    user_diskio_spi.c
 * @brief   This file contains the common defines and functions prototypes for
 *          the user_diskio_spi driver implementation
 ******************************************************************************
 * Portions copyright (C) 2014, ChaN, all rights reserved.
 * Portions copyright (C) 2017, kiwih, all rights reserved.
 *
 * This software is a free software and there is NO WARRANTY.
 * No restriction on use. You can use, modify and redistribute it for
 * personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
 * Redistributions of source code must retain the above copyright notice.
 *
 ******************************************************************************
 *
 *  Portions copyright (C) 2019, VadRov, all right reserved.
 *  низкоуровневый драйвер для работы с SD картой по SPI, в том числе, с DMA
 *  Модифицировано: 2019, VadRov
 *  версия 1.1 (NO_HAL)
 *
 *  https://zen.yandex.ru/vadrov
 *  https://www.youtube.com/c/VadRov
 *  https://vk.com/vadrov
 */

#include <user_diskio_spi.h>
#include "main.h"

//extern uint32_t millis; //Contador de milisegundos. Esta variable debe incrementarse en 1.
//cada milisegundo, en la int. del Systick Timer

//-------------------------------- Configuración de SPI y DMA ----------------------------
#define SPI_SD				SPI1 	//Puerto SPI conectado a la SD
#define SD_INI_SPEED		1 		//Velocidad SPI al inicializar la tarjeta:
/*									0 - FCLK/2,
									1 - FCLK/4,
									2 - FCLK/8,
									3 - FCLK/16,
									4 - FCLK/32,
									5 - FCLK/64,
									6 - FCLK/128,
									7 - FCLK/256
 */
#define SD_MAX_SPEED		1 		//Velocidad SPI después de la inicialización de la tarjeta

#define SD_USE_DMA					//Usando DMA -> comentar si no hay DMA

#ifdef SD_USE_DMA           		            //Configuraciones del canal DMA (cuando está activo):
#define SD_DMA_CNTR_RX		     DMA1               //Controlador DMA para datos recibidos
#define SD_DMA_CNTR_RX_NUMBER    1                  //#del DMA usado
#define SD_DMA_CHANNEL_RX_DIR	 DMA1_Channel2		//Canal DMA para datos recibidos
#define SD_DMA_CHANNEL_RX_NUMBER 2                  //#del canal del DMA usado
#define SD_DMA_CNTR_TX		     DMA1	            //Controlador DMA para datos transmitidos
#define SD_DMA_CNTR_TX_NUMBER    1                  //#del DMA usado
#define SD_DMA_CHANNEL_TX_DIR    DMA1_Channel3		//Canal DMA para datos transmitidos
#define SD_DMA_CHANNEL_TX_NUMBER 3                  //#del canal del DMA usado
#endif
#define GPIO_SD_CS_PORT		GPIOA	//Puerto de la señal CS de la tarjet SD
#define GPIO_SD_CS_PIN		4U		//Pin de la señal CS de la tarjet SD

#define SD_TIMEOUT			100		//Tiempo de espera permitido en ms

//----------------------------------- Fin de los ajustes ---------------------------------

/* Definitions for MMC/SDC command */
#define CMD0		(0x40+0)	/* GO_IDLE_STATE */
#define CMD1		(0x40+1)	/* SEND_OP_COND (MMC) */
#define ACMD41		(0xC0+41)	/* SEND_OP_COND (SDC) */
#define CMD8		(0x40+8)	/* SEND_IF_COND */
#define CMD9		(0x40+9)	/* SEND_CSD */
#define CMD10		(0x40+10)	/* SEND_CID */
#define CMD12		(0x40+12)	/* STOP_TRANSMISSION */
#define ACMD13		(0xC0+13)	/* SD_STATUS (SDC) */
#define CMD16		(0x40+16)	/* SET_BLOCKLEN */
#define CMD17		(0x40+17)	/* READ_SINGLE_BLOCK */
#define CMD18		(0x40+18)	/* READ_MULTIPLE_BLOCK */
#define CMD23		(0x40+23)	/* SET_BLOCK_COUNT (MMC) */
#define ACMD23		(0xC0+23)	/* SET_WR_BLK_ERASE_COUNT (SDC) */
#define CMD24		(0x40+24)	/* WRITE_BLOCK */
#define CMD25		(0x40+25)	/* WRITE_MULTIPLE_BLOCK */
#define CMD55		(0x40+55)	/* APP_CMD */
#define CMD58		(0x40+58)	/* READ_OCR */

/* MMC card type flags (MMC_GET_TYPE) */
#define CT_MMC		0x01            /* MMC ver 3 */
#define CT_SD1		0x02            /* SD ver 1 */
#define CT_SD2		0x04            /* SD ver 2 */
#define CT_SDC		(CT_SD1|CT_SD2) /* SD */
#define CT_BLOCK	0x08            /* Block addressing */

#define SELECT()	(GPIO_SD_CS_PORT->BSRR |= (0x1UL << (GPIO_SD_CS_PIN)))//Reset the bit
#define DESELECT()	(GPIO_SD_CS_PORT->BSRR |= (0x1UL << ((GPIO_SD_CS_PIN)+16U)))//Set the bit

//------------------------------Funciones del SPI para la tarjeta SD---------------------------------
// La variable speed puede variar entre:
//                                  0 - FCLK/2,
//									1 - FCLK/4,
//									2 - FCLK/8,
//									3 - FCLK/16,
//									4 - FCLK/32,
//									5 - FCLK/64,
//									6 - FCLK/128,
//									7 - FCLK/256
static void set_sd_interface_speed(uint8_t speed)
{
	if (speed > 7) speed = 7;//Validador
	SPI_SD->CR1 &= ~SPI_CR1_SPE; //Detengo el SPI
	SPI_SD->CR1 &= ~(0x07UL<<(3U)); //Modifico la velocidad del SPI1
	SPI_SD->CR1 |= (uint32_t)(speed<<(3U));
	SPI_SD->CR1 |= SPI_CR1_SPE; // Inicio el SPI
}
/*
 * @brief SPI transmit/receive a byte(sencillo)
 *!Necesita esperar por un TXE antes, importante!
 */
static BYTE spi_rw(BYTE wval)
{
	*((volatile uint8_t *)&SPI_SD->DR) = wval;
	while(!(SPI_SD->SR & SPI_SR_RXNE)) ;
	while (SPI_SD->SR & SPI_SR_BSY) ;
	return *((volatile uint8_t *)&SPI_SD->DR);
}

#define xmit_spi(dat)		 spi_rw(dat)
#define rcvr_spi()			 spi_rw(0xFF)
#define rcvr_spi_m(dst)  *(dst)=spi_rw(0xFF)

#ifdef SD_USE_DMA

typedef enum {
	SPI_Transfer_Receive = 0,
	SPI_Transfer_Transmit
} SPI_TransferType;

//Recepción/transmisión SPI DMA full duplex master para STM32L4 - sin interrupciones de eventos externos

static void SPI_DMA_TransmitReceive(SPI_TransferType type, const BYTE* buff, uint16_t buff_size)
{
	uint8_t tmp = 0xFF;
	DMA_Channel_TypeDef *dma_RX = SD_DMA_CHANNEL_RX_DIR;
	DMA_Channel_TypeDef *dma_TX = SD_DMA_CHANNEL_TX_DIR;
	//Activar los relojes del DMA y el SPI
	RCC->AHB1ENR |=(0x1UL <<(SD_DMA_CNTR_RX_NUMBER-1));
	RCC->AHB1ENR |=(0x1UL <<(SD_DMA_CNTR_TX_NUMBER-1));

	if(SPI_SD==SPI1)
	{
		RCC->APB2ENR |=(RCC_APB2ENR_SPI1EN);
	}
	else
	{
		RCC->APB1ENR1 |=(RCC_APB1ENR1_SPI3EN);
	}
	//Disable SPI1(if not)
	SPI_SD->CR1 &= ~(SPI_CR1_SPE);
	//desactivar transmisiones DMA
	//(varios parámetros de transmisión DMA solo se pueden configurar
	//cuando las transmisiones están deshabilitadas)
	dma_RX->CCR &= ~(DMA_CCR_EN);
	dma_TX->CCR &= ~(DMA_CCR_EN);
	//espera a que se apaguen los canales DMA
	while ((dma_RX->CCR &= ~(DMA_CCR_EN)) || (dma_TX->CCR &= ~(DMA_CCR_EN))) { }
	//Limpiar todas las banderas del DMA
	SD_DMA_CNTR_TX->IFCR |= (0x1UL << ((SD_DMA_CHANNEL_TX_NUMBER-1)*4));
	SD_DMA_CNTR_RX->IFCR |= (0x1UL << ((SD_DMA_CHANNEL_RX_NUMBER-1)*4));
	//Seleccionando SPI1-TX y SPI1-RX como las funciones de los canales DMA
	if(SD_DMA_CNTR_RX==DMA1)
	{
		DMA1_CSELR->CSELR &= ~(DMA_CSELR_C2S);
		DMA1_CSELR->CSELR |= (0x1UL << DMA_CSELR_C2S_Pos);
	}
	else
	{
		DMA2_CSELR->CSELR &= ~(DMA_CSELR_C3S);
		DMA2_CSELR->CSELR |= (0x4UL << DMA_CSELR_C3S_Pos);
	}
	if(SD_DMA_CNTR_TX==DMA1)
	{
		DMA1_CSELR->CSELR &= ~(DMA_CSELR_C3S);
		DMA1_CSELR->CSELR |= (0x1UL << DMA_CSELR_C3S_Pos);
	}
	else
	{
		DMA2_CSELR->CSELR &= ~(DMA_CSELR_C4S);
		DMA2_CSELR->CSELR |= (0x4UL << DMA_CSELR_C4S_Pos);
	}
	//Deshabilitando todas las interrupciones
	dma_RX->CCR &= ~ (DMA_CCR_TEIE | DMA_CCR_TCIE | DMA_CCR_HTIE);
	//Dandole mas prioridad a la RX
	dma_RX->CCR &= ~ (DMA_CCR_PL);
	dma_RX->CCR |= (DMA_CCR_PL_0 | DMA_CCR_PL_1);//Prioridad muy alta
	dma_TX->CCR &= ~ (DMA_CCR_PL);
	dma_TX->CCR |= (DMA_CCR_PL_1);//Prioridad alta
	//Configuraciones DMA
	if(type == SPI_Transfer_Receive) //прием
		{
			dma_RX->CCR &= ~(DMA_CCR_PINC); //Direccion del periferico estatica
			dma_RX->CCR |= (DMA_CCR_MINC);  //Direccion de memoria dinamica(buffer)
			dma_TX->CCR &= ~(DMA_CCR_PINC | DMA_CCR_MINC);//Dst y Src Estaticos
			dma_TX->CMAR = (uint32_t)&tmp; //Direccion de memoria a dummy data(Src)
			dma_RX->CMAR = (uint32_t)buff; //Direccion de memoria al buffer(Dst)
		}
		else if (type == SPI_Transfer_Transmit)
		{
			dma_RX->CCR &= ~(DMA_CCR_PINC | DMA_CCR_MINC); //Dst y Src Estaticos
			dma_TX->CCR &= ~(DMA_CCR_PINC); //Direccion del periferico estatica
			dma_TX->CCR |= (DMA_CCR_MINC);   //Direccion de memoria dinamica(buffer)
			dma_TX->CMAR = (uint32_t)buff; //Direccion de memoria al buffer(Src)
			dma_RX->CMAR = (uint32_t)&tmp; //Direccion de memoria a dummy data(Dst)
		}
	dma_RX->CCR &=~ (DMA_CCR_DIR); //En RX se lee desde el periferico
	dma_TX->CCR |= (DMA_CCR_DIR); //En RX se lee desde memoria
	dma_RX->CPAR = dma_TX->CPAR = (uint32_t)(&SPI_SD->DR);//Direccion de periferico apunta al DR del SPI
	dma_RX->CNDTR = dma_TX->CNDTR = (uint32_t)buff_size;//El tamaño del buffer indica el numero de transferencias DMA
	//Empezando las comunicaciones DMA
	//1.Habilitar el buffer de Rx DMA del SPI
	SPI_SD->CR2 |= (SPI_CR2_RXDMAEN );
	//2.Habilitar los canales DMA del TX y RX
	dma_RX->CCR |= (DMA_CCR_EN);
	dma_TX->CCR |= (DMA_CCR_EN);
	//3.Habilitar el buffer de Tx DMA del SPI
	SPI_SD->CR2 |= (SPI_CR2_TXDMAEN );
	//4.Habilitar el SPI
	SPI_SD->CR1 |= (SPI_CR1_SPE);
	//Espero por la bandera de fin de transferencias DMA
	while(!(((SD_DMA_CNTR_TX->ISR) & (0x1UL << (1+((SD_DMA_CHANNEL_TX_NUMBER-1)*4))))
	&&((SD_DMA_CNTR_RX->ISR) & (0x1UL << (1+((SD_DMA_CHANNEL_RX_NUMBER-1)*4)))))) {};
	//Desactivando las comunicaciones DMA
	//1.Desactivo los canales DMA del TX y el RX
	dma_RX->CCR &= ~(DMA_CCR_EN);
	dma_TX->CCR &= ~(DMA_CCR_EN);
	//2.Espero a que la FIFO de TX este vacía
    while((SPI_SD->SR) & (SPI_SR_FTLVL)) {};
    //3.Espero que se desocupe el SPI
    while((SPI_SD->SR) & (SPI_SR_BSY)) {};
    //4.Deshabilito el SPI
    SPI_SD->CR1 &= ~(SPI_CR1_SPE);
    //5.Leo hasta que la FIFO de recepcion se vacie
    while((SPI_SD->SR) & (SPI_SR_FRLVL))
    {
    	//Leo el caracter recibido
    	tmp=(uint8_t)(SPI_SD->DR);
    }
    (void)tmp;
	//6.Deshabilito los buffers de RX y TX DMA del SPI
    SPI_SD->CR2 &= ~(SPI_CR2_TXDMAEN | SPI_CR2_RXDMAEN);
}

#else
static void spi_r_multi(BYTE *rval, uint16_t cnt)
{
	uint8_t* pRxData = (uint8_t*)rval;
	uint16_t txCnt = cnt;

	while(txCnt > 0)
	{
		*((volatile uint8_t *)&SPI_SD->DR) = 0xFF;
		txCnt--;
		while(!(SPI_SD->SR & SPI_SR_RXNE));
		*pRxData = *((volatile uint8_t *)&SPI_SD->DR);
		pRxData++;
	}
	while (SPI_SD->SR & SPI_SR_BSY) ;
}
#endif // SD_USE_DMA

/* SD card definitions */
static volatile DSTATUS Stat = STA_NOINIT; //	Disk status
static BYTE CardType;	 // Card type flags

static BYTE wait_ready(void)
{
	BYTE res;
	rcvr_spi();
	uint32_t initialTick = rcc_msGetTicks();
	do {
		res = rcvr_spi();
		if (rcc_msGetTicks() - initialTick > SD_TIMEOUT) { //TIMEOUT managment
			res = 0;
			break;
		}
	} while (res != 0xFF);
	return res;
}

static BYTE send_cmd(BYTE cmd, LBA_t arg)
{
	BYTE res;

	if(cmd & 0x80){	// ACMD<n> is the command sequence of CMD55-CMD<n>
		cmd &= 0x7F;
		res = send_cmd(CMD55, 0);
		if(res > 1) return res;
	}

	DESELECT();
	SELECT();
	if(wait_ready() != 0xFF){
		return 0xFF;
	}

	// transmit cmd + arg + crc
	xmit_spi(cmd);					// Start + Command index
	int b_sector = 8 * (sizeof(LBA_t) - 1);
	for ( ; b_sector >= 0; b_sector -= 8) {
		xmit_spi((BYTE)(arg >> b_sector));
	}
	BYTE crc = 0x01; // Dummy CRC + Stop
	if(cmd == CMD0) crc = 0x95;			// Valid CRC for CMD0(0)
	if(cmd == CMD8) crc = 0x87;			// Valid CRC for CMD8(0x1AA)
	xmit_spi(crc);

	// Receive command response
	if(cmd == CMD12) rcvr_spi();		// Skip a stuff byte when stop reading

	// Wait for a valid response in timeout of 10 attempts
	BYTE attempt = 10;
	do {
		res = rcvr_spi();
	} while ((res & 0x80) && (--attempt));

	return res;
}

DSTATUS USER_SPI_initialize(BYTE drv)
{
	BYTE n, cmd, ty = 0, ocr[4];
	DESELECT();
	set_sd_interface_speed(SD_INI_SPEED); //медленное spi
	SELECT();

	for(n=10; n; n--) rcvr_spi();	// 80 dummy clocks

	if(0x01 == send_cmd(CMD0, 0))
	{
		// Enter Idle state
		if(0x01 == send_cmd(CMD8, 0x1AA))
		{
			// SDHC ?
			for(n=0; n<4; n++) ocr[n] = rcvr_spi(); // Get trailing return value of R7 response

			if((0x01 == ocr[2]) && (0xAA == ocr[3]))
			{
				// The card can work at VDD range of 2.7-3.6V
				while(send_cmd(ACMD41, (1UL << 30)));	// Wait for leaving idle state (ACMD41 with HCS bit)

				if(0x00 == send_cmd(CMD58, 0))
				{
					// Check CCS bit in the OCR
					for(n=0; n<4; n++) ocr[n] = rcvr_spi();
					ty = (ocr[0] & 0x40) ? CT_SD2 | CT_BLOCK : CT_SD2;
				}
			}
		}
		else
		{
			// SDSC or MMC
			if(send_cmd(ACMD41, 0) <= 0x01)
			{
				// SDSC
				ty = CT_SD1;
				cmd = ACMD41;
			}
			else
			{
				// MMC
				ty = CT_MMC;
				cmd = CMD1;
			}

			while(send_cmd(cmd, 0)); // Wait for leaving idle state

			if(send_cmd(CMD16, 512) != 0)	// Set R/W block length to 512
				ty = 0;
		}
	}
	CardType = ty;
	DESELECT();

	if(ty)
	{
		// Initialization succeeded
		Stat &= ~STA_NOINIT; // Clear STA_NOINIT
//		set_sd_interface_speed(SD_MAX_SPEED); // SPI A LA MAXIMA VELOCIDAD
	}
	else
	{
		// Initialization failed
		if(!(Stat & STA_NOINIT))
		{
			SELECT();
			wait_ready();
			DESELECT();
		}

		Stat |= STA_NOINIT;
	}

	return Stat;
}

DSTATUS USER_SPI_status(BYTE drv)
{
	return Stat;
}

// NOTE: btr must be multiple of 4
static uint8_t rcvr_datablock(BYTE *buff, UINT btr)
{
	BYTE token;
	uint32_t tick = rcc_msGetTicks();
	do {
		token = rcvr_spi();
		if (rcc_msGetTicks() - tick > SD_TIMEOUT) { //Проверка на TIMEOUT
			token = 0;
			break;
		}
	} while (token == 0xFF); // wait for data packet in timeout of 100ms
	if(token != 0xFE) return 0;	// not a valid data token

#ifdef SD_USE_DMA
	SPI_DMA_TransmitReceive(SPI_Transfer_Receive, buff, btr);
#else
	if(btr == 512)
	{
		spi_r_multi(buff, btr);
	}
	else if(btr == 16)
	{
		spi_r_multi(buff, btr);
	}
	else
	{
		do {
			rcvr_spi_m(buff++);
			rcvr_spi_m(buff++);
			rcvr_spi_m(buff++);
			rcvr_spi_m(buff++);
		} while (btr -= 4);
	}
#endif

	rcvr_spi(); // discard CRC
	rcvr_spi();
	return 1;
}

DRESULT USER_SPI_read(BYTE drv, BYTE *buff, LBA_t sector, UINT count)
{
	if(!count) return RES_PARERR;
	if(Stat & STA_NOINIT) return RES_NOTRDY;
	if(!(CardType & CT_BLOCK)) sector *= 512;	// Convert to byte address if needed

	if(1 == count)
	{
		// CMD17 - READ_SINGLE_BLOCK
		if(0x00 == send_cmd(CMD17, sector))
		{
			if(rcvr_datablock(buff, 512)) count = 0;
		}
	}
	else
	{
		// CMD18 - READ_MULTIPLE_BLOCK
		if(0x00 == send_cmd(CMD18, sector))
		{
			do {
				if(!rcvr_datablock(buff, 512)) break;
				buff += 512;
			} while (--count);
			send_cmd(CMD12, 0); // CMD12 - STOP_TRANSMISSION
		}
	}
	DESELECT();

	return count ? RES_ERROR : RES_OK;
}

#if _FS_READONLY == 0
// token - Data/Stop token
static uint8_t xmit_datablock(const BYTE *buff, BYTE token)
{
	BYTE resp;
#ifndef SD_USE_DMA
	BYTE wc;
#endif

	if(0xFF != wait_ready()) return 0;
	xmit_spi(token); // transmit Data token

	if(0xFD != token) // Is data token
	{
		// transmit the 512 byte data block to MMC
#ifdef SD_USE_DMA
		SPI_DMA_TransmitReceive(SPI_Transfer_Transmit, buff, 512);
#else
		wc = 0;
		do {
			xmit_spi(*buff++);
			xmit_spi(*buff++);
		} while (--wc);
#endif

		// CRC (Dummy)
		xmit_spi(0xFF);
		xmit_spi(0xFF);

		// Receive data response
		resp = rcvr_spi();
		if((resp & 0x1F) != 0x05) // If not accepted, return with error
			return 0;
	}

	return 1;
}

DRESULT USER_SPI_write(BYTE drv, const BYTE *buff, LBA_t sector, UINT count)
{
	if(!count) return RES_PARERR;
	if(Stat & STA_NOINIT) return RES_NOTRDY;
	if(Stat & STA_PROTECT) return RES_WRPRT;
	if(!(CardType & CT_BLOCK)) sector *= 512;	// Convert to byte address if needed

	if(1 == count)
	{
		// CMD24 - WRITE_BLOCK
		if((0x00 == send_cmd(CMD24, sector)) && xmit_datablock(buff, 0xFE)) count = 0;
	}
	else
	{
		// CMD25 - WRITE_MULTIPLE_BLOCK
		if(CardType & CT_SDC) send_cmd(ACMD23, count);
		if(0x00 == send_cmd(CMD25, sector))
		{
			do {
				if(!xmit_datablock(buff, 0xFC)) break;
				buff += 512;
			} while (--count);

			if(!xmit_datablock(0, 0xFD)) // STOP_TRAN token
				count = 1;
		}
	}
	DESELECT();

	return count ? RES_ERROR : RES_OK;
}
#endif /* _READONLY == 0 */

DRESULT USER_SPI_ioctl(BYTE drv, BYTE ctrl,	void *buff)
{
	DRESULT res = RES_ERROR;
	BYTE n, csd[16], *ptr = buff;
	WORD csize;

	if(Stat & STA_NOINIT) return RES_NOTRDY;

	switch(ctrl)
	{
	case CTRL_SYNC:
		// Make sure that no pending write process
		if(0xFF == wait_ready()) res = RES_OK;
		break;

	case GET_SECTOR_COUNT:
		// Get number of sectors on the disk (DWORD)
		if((0x00 == send_cmd(CMD9, 0)) && rcvr_datablock(csd, 16))
		{
			if((csd[0] >> 6) == 1)
			{
				// SDC version 2.00
				csize = csd[9] + ((WORD)csd[8] << 8) + 1;
				*(DWORD*)buff = (DWORD)csize << 10;
			}
			else
			{
				// SDC version 1.XX or MMC
				n = (csd[5] & 15) + ((csd[10] & 128) >> 7) + ((csd[9] & 3) << 1) + 2;
				csize = (csd[8] >> 6) + ((WORD)csd[7] << 2) + ((WORD)(csd[6] & 3) << 10) + 1;
				*(DWORD*)buff = (DWORD)csize << (n - 9);
			}
			res = RES_OK;
		}
		break;

	case GET_SECTOR_SIZE:
		// Get R/W sector size (WORD)
		*(WORD*)buff = 512;
		res = RES_OK;
		break;

	case GET_BLOCK_SIZE:
		// Get erase block size in unit of sector (DWORD)
		if(CardType & CT_SD2)
		{
			// SDC version 2.00
			if(0x00 == send_cmd(ACMD13, 0))
			{
				// Read SD status
				rcvr_spi();
				if(rcvr_datablock(csd, 16))
				{
					// Read partial block
					for (n = 64 - 16; n; n--) rcvr_spi();	// Purge trailing data
					*(DWORD*)buff = 16UL << (csd[10] >> 4);
					res = RES_OK;
				}
			}
		}
		else
		{
			// SDC version 1.XX or MMC
			if((0x00 == send_cmd(CMD9, 0)) && rcvr_datablock(csd, 16))
			{
				// Read CSD
				if(CardType & CT_SD1)
				{
					// SDC version 1.XX
					*(DWORD*)buff = (((csd[10] & 63) << 1) + ((WORD)(csd[11] & 128) >> 7) + 1) << ((csd[13] >> 6) - 1);
				}
				else
				{
					// MMC
					*(DWORD*)buff = ((WORD)((csd[10] & 124) >> 2) + 1) * (((csd[11] & 3) << 3) + ((csd[11] & 224) >> 5) + 1);
				}
				res = RES_OK;
			}
		}
		break;

	case MMC_GET_TYPE:
		// Get card type flags (1 byte)
		*ptr = CardType;
		res = RES_OK;
		break;

	case MMC_GET_CSD:
		// Receive CSD (CMD9) as a data block (16 bytes)
		if((0x00 == send_cmd(CMD9, 0)) && rcvr_datablock(ptr, 16)) res = RES_OK;
		break;

	case MMC_GET_CID:
		// Receive CID (CMD10) as a data block (16 bytes)
		if((0x00 == send_cmd(CMD10, 0)) && rcvr_datablock(ptr, 16))	res = RES_OK;
		break;

	case MMC_GET_OCR:
		// Receive OCR (CMD58) as an R3 resp (4 bytes)
		if(0x00 == send_cmd(CMD58, 0))
		{
			for(n=4; n; n--) *ptr++ = rcvr_spi();
			res = RES_OK;
		}
		break;

	case MMC_GET_SDSTAT:
		// Receive SD status (ACMD13) as a data block (64 bytes)
		if(0x00 == send_cmd(ACMD13, 0))
		{
			rcvr_spi();
			if(rcvr_datablock(ptr, 64)) res = RES_OK;
		}
		break;

	default:
		res = RES_PARERR;
	}

	DESELECT();
	return res;
}
