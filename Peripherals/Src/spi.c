/*
 * spi.c
 *
 *  Created on: 6 nov. 2024
 *      Author: Cuba
 */
#include <spi.h>


/**
 * @Brief SPI1 GPIO pins configuration
 * (PA5(A4)->SP1_SCK,PA6(A5)->SP1_MISO,PA7(A6)->SP1_MOSI)
 */
void spi_GPIO_config(void)
{
	//Enable GPIO port A clock
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
	//Alternate function mode
	GPIOA->MODER &=~ (GPIO_MODER_MODE5);
	GPIOA->MODER &=~ (GPIO_MODER_MODE6);
	GPIOA->MODER &=~ (GPIO_MODER_MODE7);
	GPIOA->MODER |= (GPIO_MODER_MODE5_1);
	GPIOA->MODER |= (GPIO_MODER_MODE6_1);
	GPIOA->MODER |= (GPIO_MODER_MODE7_1);
	//SPI1 is AF5
	GPIOA->AFR[0] &=~ (GPIO_AFRL_AFSEL5);
	GPIOA->AFR[0] &=~ (GPIO_AFRL_AFSEL6);
	GPIOA->AFR[0] &=~ (GPIO_AFRL_AFSEL7);
	GPIOA->AFR[0] |= (0x5UL << GPIO_AFRL_AFSEL5_Pos);
	GPIOA->AFR[0] |= (0x5UL << GPIO_AFRL_AFSEL6_Pos);
	GPIOA->AFR[0] |= (0x5UL << GPIO_AFRL_AFSEL7_Pos);
	//High speed Mode
	GPIOA->OSPEEDR &=~ (GPIO_OSPEEDER_OSPEEDR5);
	GPIOA->OSPEEDR &=~ (GPIO_OSPEEDER_OSPEEDR6);
	GPIOA->OSPEEDR &=~ (GPIO_OSPEEDER_OSPEEDR7);
	GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR5_1);
	GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR6_1);
	GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR7_1);
	/*Pull up resistance for all pins except SCLK*/
	GPIOA->PUPDR &=~ (GPIO_PUPDR_PUPD6);
	GPIOA->PUPDR &=~ (GPIO_PUPDR_PUPD7);
	GPIOA->PUPDR |= (GPIO_PUPDR_PUPD6_0);
	GPIOA->PUPDR |= (GPIO_PUPDR_PUPD7_0);
}

/**
 * @Brief SPI1 peripheral configuration
 */
void spi_config(uint32_t SYSTEM_CLK)
{
	//Enable SPI1 clock
	RCC->APB2ENR |= (RCC_APB2ENR_SPI1EN);
	//Baud Rate Generation
	SPI1->CR1 &=~ (SPI_CR1_BR);
	if (SYSTEM_CLK==16000000)//To generate a 1MHz baud rate
	{
		SPI1->CR1 |= (0x3UL << SPI_CR1_BR_Pos);
	}
	else//To generate a 625kHz baud rate(with fPCLK=80MHz)
	{
		SPI1->CR1 |= (0x6UL << SPI_CR1_BR_Pos);
	}
	//Clock phase
	SPI1->CR1 &=~ (SPI_CR1_CPHA);
	//Clock polarity
	SPI1->CR1 &=~ (SPI_CR1_CPOL);
	//Full-Duplex Mode
	SPI1->CR1 &=~ (SPI_CR1_RXONLY);
	SPI1->CR1 &=~ (SPI_CR1_BIDIMODE);
	//MSB First
	SPI1->CR1 &=~ (SPI_CR1_LSBFIRST);
	//Internal Slave enable
	SPI1->CR1 |= (SPI_CR1_SSM | SPI_CR1_SSI);
	//Mode Master
	SPI1->CR1 |= (SPI_CR1_MSTR);
	//Data word (8/16 bits)
	SPI1->CR2 &=~ (SPI_CR2_DS);
	SPI1->CR2 |= (SPI_CR2_DS_0 |SPI_CR2_DS_1|SPI_CR2_DS_2);
	//Set RX FIFO buffer threshold
	SPI1->CR2 |= (SPI_CR2_FRXTH);
	//Enabling SPI
	SPI1->CR1 |= (SPI_CR1_SPE);
	//	//Clear all error flags
	//	volatile uint32_t tempRead = SPI1->SR;



}

/**
 * @Brief SPI1 transmit
 */
bool spi_transmit(uint8_t *pointer_data,uint8_t len,uint32_t timeout)
{
	//Enable SPI1(if not)
	SPI1->CR1 |= (SPI_CR1_SPE);
	//Timeout initial ticks
	uint8_t dataIdx = 0;
	uint32_t startTick = rcc_msGetTicks();
	//While loop,TX data managing timeout
	while(dataIdx<len)
	{
		if(SPI1->SR & SPI_SR_TXE) //Tx buffer empty
		{
			SPI1->DR = pointer_data[dataIdx];
			dataIdx++;
		}
		else //Manage timeout
		{
			if((rcc_msGetTicks() - startTick)>= timeout) return false;
		}
	}
	//Wait for busy flag
	while((SPI1->SR & SPI_SR_BSY))
	{
		if((rcc_msGetTicks() - startTick)>= timeout) return false;
	}
	//Clear overrun conditions
	volatile uint32_t tempRead = SPI1->DR;
	tempRead = SPI1->SR;
	return true;

}

/**
 * @Brief SPI1 receive
 */
bool spi_receive(uint8_t *pointer_data,uint8_t len,uint32_t timeout)
{
	//Enable SPI1(if not)
	SPI1->CR1 |= (SPI_CR1_SPE);
	//Timeout initial ticks
	uint8_t dataIdx = 0;
	uint32_t startTick = rcc_msGetTicks();
	bool isTransmit=1;
	//While loop: TX first, then RX, managing timeout
	while(dataIdx<len)
	{
		//TX dummy data
		if((SPI1->SR & SPI_SR_TXE) && isTransmit) //Tx buffer empty
		{
			SPI1->DR = 0xFF;
			isTransmit=false;
		}
		if (SPI1->SR & SPI_SR_RXNE)
		{
			pointer_data[dataIdx] = SPI1->DR;
			dataIdx++;
			isTransmit=true;

		}
		else //Manage timeout
		{
			if((rcc_msGetTicks() - startTick)>= timeout) return false;
		}
	}
	//Wait for busy flag
	while((SPI1->SR & SPI_SR_BSY))
	{
		if((rcc_msGetTicks() - startTick)>= timeout) return false;
	}
	//Clear overrun conditions
	volatile uint32_t tempRead = SPI1->DR;
	tempRead = SPI1->SR;
	return true;

}

/**
 * @Brief SPI1 transmit/receive
 */
bool spi_transmitReceive(uint8_t *RX_buffer,uint8_t *TX_buffer,uint8_t len,uint32_t timeout)
{
	//Enable SPI1(if not)
	SPI1->CR1 |= (SPI_CR1_SPE);
	//Timeout initial ticks
	uint8_t dataIdx = 0;
	uint32_t startTick = rcc_msGetTicks();
	bool isTransmit=1;
	//While loop: TX first, then RX, managing timeout
	while(dataIdx<len)
	{
		//TX data
		if((SPI1->SR & SPI_SR_TXE) && isTransmit) //Tx buffer empty
		{
			SPI1->DR = TX_buffer[dataIdx];
			isTransmit=false;
		}
		//RX data
		if (SPI1->SR & SPI_SR_RXNE)
		{
			RX_buffer[dataIdx] = SPI1->DR;
			dataIdx++;
			isTransmit=true;

		}
		else //Manage timeout
		{
			if((rcc_msGetTicks() - startTick)>= timeout) return false;
		}
	}
	//Wait for busy flag
	while((SPI1->SR & SPI_SR_BSY))
	{
		if((rcc_msGetTicks() - startTick)>= timeout) return false;
	}
	//Clear overrun conditions
	volatile uint32_t tempRead = SPI1->DR;
	tempRead = SPI1->SR;
	return true;

}

/**
 * @Brief SD Chip Select pin configuration
 * PA4(A3)
 */
void spi_SD_CS_config(void)
{
	//Enable GPIO port A clock
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
	//Output mode
	GPIOA->MODER &=~ (GPIO_MODER_MODE4);
	GPIOA->MODER |= (GPIO_MODER_MODE4_0);
	//High speed Mode
	GPIOA->OSPEEDR &=~ (GPIO_OSPEEDER_OSPEEDR4);
	GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR4_1);
	/*Pull up resistance enable*/
	GPIOA->PUPDR &=~ (GPIO_PUPDR_PUPD4);
	GPIOA->PUPDR |= (GPIO_PUPDR_PUPD4_0);
	//Default value is HIGH
	GPIOA->BSRR |= (GPIO_BSRR_BS4);

}

/**
 * @Brief SD Chip Select Set/Reset
 */
void spi_cs_sd_write(bool state)
{
	if (state)
	{
		GPIOA->BSRR |= (GPIO_BSRR_BS4);
	}
	else
	{
		GPIOA->BSRR |= (GPIO_BSRR_BR4);
	}
}






