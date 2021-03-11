#include "delay.h"

// Function to setup the delay function (MOVE TO IT'S OWN FILE)
void delaySetup(void){
	RCC->APB1ENR |= (1<<5); // Turn on tim7 clock
	TIM7->CR1 &= ~(1<<0); 	// Disable Counter
	TIM7->CR1 |= (1<<2); 	// Set so only overflow/underflow generates event
	TIM7->CR1 &= ~(1<<3); 	//Turn off one-pulse mode
	TIM7->PSC = 141; 		// Set prescaler so each 0xFF count is  1mS
	TIM7->EGR |= (1<<0);	// Update Timer
}
void delayMs(int ms){
	TIM7->CNT = 0x00; 					// Clear the timer
	TIM7->ARR = 0x00FF*ms; 				// Set count value to 0xFF times mS
	TIM7->CR1 |= (1<<0); 				// Enable Counter
	while((TIM7->SR & 0x01) == 0x00); 	// Wait until update
	TIM7->SR = 0x00;					// Clear statue
	TIM7->CR1 &= ~(1<<0); 				// Disable Counter
}
