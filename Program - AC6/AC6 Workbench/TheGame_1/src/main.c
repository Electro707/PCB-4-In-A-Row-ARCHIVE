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

// Some color definition
#define RED 0b001
#define GREEN 0b010
#define BLUE 0b100
#define PURPLE 0b101
#define CYAN 0b110
#define YELLOW 0b011
#define WHITE 0b111

// Define the color for player 1 and player 2
#define PLAYER1COLOR RED
#define PLAYER2COLOR YELLOW

// Macros to turn on the indicator LED
#define INDICATE_CLEAR GPIOC->ODR &= ~(0b111);
#define INDICATE_BLUE INDICATE_CLEAR GPIOC->ODR |= 0b100;
#define INDICATE_YELLOW INDICATE_CLEAR GPIOC->ODR |= 0b011;
#define INDICATE_GREEN INDICATE_CLEAR GPIOC->ODR |= 0b010;
#define INDICATE_RED INDICATE_CLEAR GPIOC->ODR |= 0b001;
#define INDICATE_WHITE INDICATE_CLEAR GPIOC->ODR |= 0b111;

#define SWITCH_ACTIVE_PLAYER active_player = (active_player == 1) ? 2 : 1;
// Array of the LED matrix
// Store each integer as a column, each array index as row
// For each column, store each bit as a color (0b111 = BGR)
int LED[6];

// Void to set up the interupt to update the LEDs
// The interupt handler will execute, for now, about once every 1 mS
void LEDInteruptSetup(void){
	__enable_irq();
	NVIC_EnableIRQ(TIM6_IRQn);

	RCC->APB1ENR |= (1<<4); 	// Turn on tim6 clock
	TIM6->CR1 &= ~(1<<0);		// Disable Counter
	TIM6->CR1 |= (1<<2); 		// Set so only overflow/underflow generates event
	TIM6->CR1 &= ~(1<<3); 		//Turn off one-pulse mode
	TIM6->PSC = 141; 			// Set prescaler
	TIM6->DIER |= (1<<0); 		// Enable interrupt
	TIM6->CNT = 0x00; 			// Clear the timer
	TIM6->ARR = 0x00FF; 		// Set count value to

	TIM6->EGR |= (1<<0);// Update register
}
// Macro to start the timer, thus start the interrupt
#define LEDInteruptStart TIM6->CR1 |= (1<<0); // Enable Counter

// Array for player location
// First dimension is for column, where it's 2 bit per LED ( to account for 2 players plus X)
// Second dimension is for each row
uint16_t players[6];

uint8_t active_player = 0; // Stores the active player. 1 for player 1, 2 for player 2


// Function to take player's location and convert it to an LED matrix
void playerToLed(){
	// Clear LED buffer
	for(int r=0;r<6;r++){LED[r] = 0;}

	for(int r=0;r<6;r++){
		for(int c=0;c<7;c++){
			uint8_t playerAtLoc = (players[r] >> c*2) & 0b11;
			if(playerAtLoc == 0b01){
				LED[r] |= (PLAYER1COLOR << c*3);
			}
			else if(playerAtLoc == 0b10){
				LED[r] |= (PLAYER2COLOR << c*3);
			}
		}
	}
}

// Function to clear the players array
void clearPlayers(){
	for(int i=0;i<6;i++){
		players[i] = 0;
	}
}

// Function that waits for a single button press. Returns the index of the button pressed
int waitForButtonInput(){
	int lastButton = 0; // Stores the previous state of the button GPIOC register
	while(1){
		uint16_t buttons = 0;			// Stores the shifted GPIOC input register
		uint16_t buttonColumn = 0;		// Stores the number of the button, from 0 to 8
		delayMs(20);
		buttons = (GPIOC->IDR >> 3) & 0b111111111;
		for(int i=0;i<9;i++){	// Look for the button number that is pressed
			if(((buttons >> i) & 0b1) == 0){
				buttonColumn = i;
				break;
			}
		}
		if( ((buttons >> buttonColumn) & 1) == ((lastButton >> buttonColumn) & 1) ){
			// Last and previous states are the same, do nothing
		}
		else{
			// Last and previous states are different
			if( ((buttons >> buttonColumn) & 1) == 0 ){ // If pressed the button to a logic high
				lastButton = buttons;
				return buttonColumn;
			}
		}
		lastButton = buttons;		// If the button high is the same as before,
	}
}

// Function to clear the buffer of an array
void clearBuffer(uint16_t *c, int array_lenght){
	for(int i=0;i<array_lenght;i++){
		c[i] = 0;
	}
}

// Function to check for a game winner
// Returns 0 if none, 1 for player 1, and 2 for player 2
uint8_t checkForWinner(){
	uint8_t winner_player = 0;
	// Check vertical
	for(int c=0;c<7;c++){		// Check every column
		uint8_t similarCounter = 0;		// Stores the number of same player in a row
		uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
		for(int r=0;r<(6-1);r++){
			if( ((players[r]>>(c*2)) & 0b11) == ((players[r+1]>>(c*2)) & 0b11) ){		// If the player from the current and next row is the same, increment a counter
				if(((players[r]>>(c*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
					simlarPlayer = (players[r]>>(c*2))&0b11;	// Record the similar player
					similarCounter++;							// Increment counter
					if(similarCounter >= 3){					// If counter is increment to 3 ( repreating player 4 times), return
						break;
					}
				}
			}
			else{			// If the player isn't the same as the next row, reset the counter and player variable
				similarCounter = 0;
				simlarPlayer = 0;
			}
		}
		// If there was a similarity, exit and return the player number
		if(similarCounter == 3){
			winner_player = simlarPlayer;
			break;
		}
	}

	// Check horizontal
	for(int r=0;r<6;r++){		// Check every row
		uint8_t similarCounter = 0;		// Stores the number of same player in a column
		uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
		for(int c=0;c<(7-1);c++){
			if( ((players[r]>>(c*2)) & 0b11) == ((players[r]>>((c+1)*2)) & 0b11) ){		// If the player from the current and next column is the same, increment a counter
				if(((players[r]>>(c*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
					simlarPlayer = (players[r]>>(c*2))&0b11;	// Record the similar player
					similarCounter++;							// Increment counter
					if(similarCounter >= 3){					// If counter is increment to 3 ( repreating player 4 times), return
						break;
					}
				}
			}
			else{			// If the player isn't the same as the next row, reset the counter and player variable
				similarCounter = 0;
				simlarPlayer = 0;
			}
		}
		// If there was a similarity, exit and return the player number
		if(similarCounter == 3){
			winner_player = simlarPlayer;
			break;
		}
	}

	// Check diagonal (positive slope)
	// Check 4 diagonal in a row from the last 3 row and the first 4 column ( the only combination)
	for(int c=0;c<4;c++){
		for(int r=3;r<6;r++){
			uint8_t similarCounter = 0;		// Stores the number of same player in a column
			uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
			for(int i=0;i<(4-1);i++){
				if( ((players[r-i]>>((c+i)*2)) & 0b11) == ((players[r-i-1]>>((c+i+1)*2)) & 0b11) ){		// If the player from the current and next column is the same, increment a counter
					if(((players[r-i]>>((c+i)*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
						simlarPlayer = (players[r-i]>>((c+i)*2)) & 0b11;	// Record the similar player
						similarCounter++;							// Increment counter
						if(similarCounter >= 3){					// If counter is increment to 3 ( repreating player 4 times), return
							break;
						}
					}
				}
				else{			// If the player isn't the same as the next row, reset the counter and player variable
					similarCounter = 0;
					simlarPlayer = 0;
				}
			}
			// If there was a similarity, exit and return the player number
			if(similarCounter == 3){
				winner_player = simlarPlayer;
				break;
			}
		}
	}

	// Check diagonal (negative slope)
	// Check 4 diagonal in a row from the last 3 row and the first 4 column ( the only combination)
	for(int c=6;c>2;c--){
		for(int r=3;r<6;r++){
			uint8_t similarCounter = 0;		// Stores the number of same player in a column
			uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
			for(int i=0;i<(4-1);i++){
				if( ((players[r-i]>>((c-i)*2)) & 0b11) == ((players[r-i-1]>>((c-i-1)*2)) & 0b11) ){		// If the player from the current and next column is the same, increment a counter
					if(((players[r-i]>>((c-i)*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
						simlarPlayer = (players[r-i]>>((c-i)*2)) & 0b11;	// Record the similar player
						similarCounter++;							// Increment counter
						if(similarCounter >= 3){					// If counter is increment to 3 ( repreating player 4 times), return
							break;
						}
					}
				}
				else{			// If the player isn't the same as the next row, reset the counter and player variable
					similarCounter = 0;
					simlarPlayer = 0;
				}
			}
			// If there was a similarity, exit and return the player number
			if(similarCounter == 3){
				winner_player = simlarPlayer;
				break;
			}
		}
	}
	return winner_player;
}
int main(void)
{

	// Initialization stuff
	SystemInit();
	delaySetup();

	RCC->APB2ENR |= (1<<4); 	// Enable PORTC clock
	RCC->APB2ENR |= (1<<3); 	// Enable PORTB clock
	RCC->APB2ENR |= (1<<2); 	// Enable PORTA clock
	RCC->APB2ENR |= (1<<0);		// Enable Alternate Function clock
	// Re-map PB3 and PB4 so they can act as output
	AFIO->MAPR |= (0b010<<24);
	// Enable single-RGB led output pins as...outputs (Max of 2Mhz, 0b0010 per pin)
	GPIOC->CRL &= ~(0xFFF<<0);
	GPIOC->CRL |= (0x222<<0);
	// Enable the pushbutton with internal pull-up (0b1000 per pin)
	GPIOC->CRL &= ~(0xFFFFF<<12);
	GPIOC->CRL |= (0x88888<<12);
	GPIOC->CRH &= ~(0xFFFF);
	GPIOC->CRH |= (0x8888);
	GPIOC->ODR |= (0b111111111<<3);	// Enable internal pull-up for pushbuttons

	// Set GPIOB and GPIOA pins to outputs (the ones meant as output) (0b0001 or 0x1 per pin)
	GPIOA->CRL = 0x11111114;
	GPIOA->CRH = 0x44411111;
	GPIOB->CRL = 0x11111111;
	GPIOB->CRH = 0x11111141;

	LEDInteruptSetup();			// Set up the LED refresh interrupt
	LEDInteruptStart			// Start the interrupt

	active_player = 1;			// Set the active player to player 1

	int number_of_turns = 0;	// Variable to record the current number of moves
	while(1){
		if(active_player == 1){INDICATE_RED}else{INDICATE_YELLOW} // Turn on the indicator LED depending on who is the active player
		int c = waitForButtonInput();		// Wait for the user to press a button
		int w;								// Creates w variable for the winner/reset loop
		if(c > 6){			// If pushed the last 2 pushbuttons ( the ones next to the indicator)
			if(c == 8){		// If the one pushed is the last one...
				w = 3;			// Set the game so it resets without a winner
			}
		}
		else{				// If the button pressed is one of the column ones
			int foundRow = 0;		// Variable to store if the lowest row has been found thru the for loop
			// Check for the lowest row to assign the player's column selection to
			if(((players[0] >> (c*2)) & 0b11) == 0){		// Only switch player and find the row if the column isn't fully occupied
				for(int r=1;r<6;r++){		// Cycle thru all but one row
					players[r-1] |= active_player << (c*2);		// Set the row LED on of the last row on the loop
					if(r != 1){players[r-2] &= ~(0b11 << (c*2));}		// If the loop isn't the first one, set the last last row off
					if(((players[r] >> (c*2)) & 0b11) != 0){		// If the row is occupied, exit the loop ( the led should be set from the last 2 lines)
						foundRow = 1;		// Set the foundRow variable to a 1
						break;		// Break out of the for loop
					}
					playerToLed();		// Update the LED array to showcase the animation
					delayMs(75);		// Delay for animation
				}
				if(foundRow == 0){		// If didn't find the non-ocupied row, must be the last one
					players[5] |= active_player << (c*2);
					players[5-1] &= ~(0b11 << (c*2));
				}
				SWITCH_ACTIVE_PLAYER		// Switch the active player if the row isn't fully occupied
				number_of_turns++;			// Increase the number of turns
			}
			playerToLed();

			w=checkForWinner();	// Check for who, or none, player that one
		}

		// If there is nothing to exit out of the game loop and there is more number of turns than the number of LEDs, consider it a tie
		if(w == 0 && number_of_turns == (6*7)){		// If there is no winner, check if the board is fully occupied
			w = 3;		// Set the reset flag to reset with no winner
		}

		////////////////////////////////////////////////////////////////////////////////////////////////////
		//Reset loop, only is activated if there is a winner or it is to be reset by software
		if(w!= 0){
			// Blink thru the indicator LED
			for(int i=0;i<5;i++){
				INDICATE_CLEAR
				delayMs(400);
				if(w == 1){INDICATE_RED}
				else if(w == 2){INDICATE_YELLOW}
				else if(w == 3){INDICATE_WHITE}		//w = 3 if the board is full or game reset
				delayMs(400);
			}
			INDICATE_BLUE
			while(1){	// Wait until button is pressed to reset game
				int c = waitForButtonInput();
				if(c == 7){		// If pressed the button right of the indicator
					// Reset the variables
					active_player = 1;
					number_of_turns = 0;
					// Clear the buffer
					clearBuffer(players, 6);
					playerToLed();
					// Exit out of this loop to return to the game loop
					break;
				}
			}
		}
	}

}

uint8_t InteruptRowCounter = 0;
void TIM6_IRQHandler(void){
	TIM6->SR = 0x00; // Clear statue

	int gpioAodr = 0;
	int gpioBodr = 0;

	gpioAodr |= (LED[InteruptRowCounter] & 0b1111111) << 1;
	gpioAodr |= ((LED[InteruptRowCounter] >> 16) & 0b11111) << 8;

	gpioBodr |= ((LED[InteruptRowCounter] >> 7) & 0b111);
	gpioBodr |= ((LED[InteruptRowCounter] >> 10) & 0b111111) << 10;
	gpioBodr |= (1<<((5-InteruptRowCounter)+3));

	GPIOA->ODR = gpioAodr;
	GPIOB->ODR = gpioBodr;

	InteruptRowCounter++;
	if(InteruptRowCounter > 5){
		InteruptRowCounter = 0;
	}
}
