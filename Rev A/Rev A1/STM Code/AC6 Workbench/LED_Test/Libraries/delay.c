#include "delay.h"

void initDelay(){ // Function to initialize delay(Using TIMER6 in this case)
	RCC->APB1ENR |= (1<<0); // Turn on tim2 clock
	TIM2->CR1 &= ~(1<<0); // Disable Counter
	TIM2->CR1 |= (1<<2); // Set so only overflow/underflow generates event
	TIM2->CR1 &= ~(1<<3); //Turn off one-pulse mode
	TIM2->ARR = 0x00FF; // Set count value to 256
	TIM2->PSC = 141; // Set prescaler to 1mS
	TIM2->EGR |= (1<<0);// Update register
}
void delayMs(int ms){
	TIM2->CNT = 0x00; // Clear the timer
	TIM2->ARR = 0x00FF*ms; // Set count value to 256
	TIM2->CR1 |= (1<<0); // Enable Counter
	while((TIM2->SR & 0x01) == 0x00); // Wait until update
	TIM2->SR = 0x00; // Clear statue
	TIM2->CR1 &= ~(1<<0); // Disable Counter
}
