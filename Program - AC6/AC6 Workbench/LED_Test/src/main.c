/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f10x.h"
#include "delay.h"

// All rows are in PORTB
#define ROW1PIN 8
#define ROW2PIN 7
#define ROW3PIN 6
#define ROW4PIN 5
#define ROW5PIN 4
#define ROW6PIN 3

#define RED 0b001
#define GREEN 0b010
#define BLUE 0b100
#define PURPLE 0b101
#define CYAN 0b110
#define YELLOW 0b011
#define WHITE 0b111

// Store each integer as a column, each array index as row
// For each column, store each bit as a color (0b111 = BGR)
int LED[6];


void turnOnRow(uint8_t row){
	int gpioAodr = 0;
	int gpioBodr = 0;

	gpioAodr |= (LED[row] & 0b1111111) << 1;
	gpioAodr |= ((LED[row] >> 16) & 0b11111) << 8;

	gpioBodr |= ((LED[row] >> 7) & 0b111);
	gpioBodr |= ((LED[row] >> 10) & 0b111111) << 10;
	gpioBodr |= (1<<((5-row)+3));

	GPIOA->ODR = gpioAodr;
	GPIOB->ODR = gpioBodr;
}
int main(void)
{
	// Initialization stuff
	SystemInit();
	initDelay();

	RCC->APB2ENR |= (1<<4); 	// Enable PORTC clock
	RCC->APB2ENR |= (1<<3); 	// Enable PORTB clock
	RCC->APB2ENR |= (1<<2); 	// Enable PORTA clock
	RCC->APB2ENR |= (1<<0);		// Enable Alternate Function clock
	// Remap PB3 and PB4 so they can act as output
	AFIO->MAPR |= (0b010<<24);
	// Enable single-RGB led output pins as...outputs
	GPIOC->CRL &= ~(0xFFF<<0);
	GPIOC->CRL |= (0x222<<0);
	// Set GPIOB and GPIOA pins to outputs (the ones meant as output) (0b0001 or 0x1 for byte per pin)
	GPIOA->CRL = 0x11111114;
	GPIOA->CRH = 0x44411111;
	GPIOB->CRL = 0x11111111;
	GPIOB->CRH = 0x11111141;

	uint8_t row = 0;
	uint8_t color = 0;
	uint8_t column = 0;

	while(1){

		switch(color){
			case 0:
				LED[row] = RED << (column*3);
			break;
			case 1:
				LED[row] = GREEN << (column*3);
			break;
			case 2:
				LED[row] = BLUE << (column*3);
			break;
			case 3:
				LED[row] = PURPLE << (column*3);
			break;
			case 4:
				LED[row] = CYAN << (column*3);
			break;
			case 5:
				LED[row] = YELLOW << (column*3);
			break;
			case 6:
				LED[row] = WHITE << (column*3);
			break;
		}


		turnOnRow(row);
		delayMs(100);

		color++;
		if(color > 6){
			color = 0;
			column++;
			if(column >= 7){
				column = 0;
				row++;
				if(row > 5){
					row = 0;
				}
			}
		}


	}
}
