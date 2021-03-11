/*
	Note: For the LED sink pins, they should be driven as a open-drain output (so either LOW or Z)
	Note: Due to my 
*/
#define F_CPU 16000000

#define SPI_ENABLE SPCR |= 1<<6
#define SPI_DISABLE SPCR &= ~(1<<6)

#define ENABLE_595_OUTPUT PORTB &= ~(1<<2)
#define DISABLE_595_OUTPUT PORTB |= (1<<2)

#define SEND_DATA_AND_WAIT(_DATA) SPDR = _DATA; while(!(SPSR & (1<<SPIF)))

#define SWITCH_ACTIVE_PLAYER active_player = (active_player == 1) ? 2 : 1

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

uint32_t led[6];
uint8_t current_row = 0; // Store the current row from 0-5
uint32_t current_led = 0; // Store the current row from 0-5

uint16_t players[6];
uint8_t active_player = 0; // Stores the active player. 1 for player 1, 2 for player 2

void reset_shift_registers(void);
void playerToLed(void);
int waitForButtonInput(void);
void clearBuffer(uint16_t *c, int array_lenght);
uint8_t checkForWinner(void);

int main(void)
{
	// Set the LED sink pins to a low output and high impedance
	DDRC = 0;
	PORTC = 0;
	// Set the buttons to input pull-up
	DDRD = 0x00;
	PORTD = 0xFF;
	// Set up PORTB pins
	DDRB |= 0b00101110; // Set all pins to output except for crystal, MISO, and PB0
	reset_shift_registers();
	PORTB |= 1<<4; // Due to SRCLR pin being controlled by SPI, it now has a pull-up to avoid it going LOW
	DISABLE_595_OUTPUT;
	// Set up SPI module
	SPCR = 0b00010000; // Master mode - Highest clock
	SPSR |= 1<<0; // Enable clock 2x multiplication
	// Set up update timer
	TCCR0B = 2; // Set divider to CLK/8
	TIMSK0 = 0x01; // Set time interrupt
	
	// Clear LEDs variable
	for(int i=0;i<6;i++){led[i] = 0;}
	
	SPI_ENABLE;	
	sei();
	ENABLE_595_OUTPUT;
	
	
	// Test for a single LED
// 	PORTB &= ~(1<<1);
// 	SPI_ENABLE;
// 	SEND_DATA_AND_WAIT(0);
// 	SEND_DATA_AND_WAIT(0);
// 	SEND_DATA_AND_WAIT(0b100);
// 	PORTB |= (1<<1);
// 	DDRC |= 1<<0; // Set fist row enable
// 	ENABLE_595_OUTPUT; 

	clearBuffer(players, 6);
	active_player = 1;			// Set the active player to player 1
    while (1) 
    {
		int c = waitForButtonInput();
		_delay_ms(75);		// Delay for button noise
		int foundRow = 0;		// Variable to store if the lowest row has been found thru the for loop
		if(((players[0] >> (c*2)) & 0b11) == 0){		// Only switch player and find the row if the column isn't fully occupied
			for(int r=1;r<6;r++){		// Cycle thru all but one row
				players[r-1] |= active_player << (c*2);		// Set the row LED on of the last row on the loop
				if(r != 1){players[r-2] &= ~(0b11 << (c*2));}		// If the loop isn't the first one, set the last last row off
				playerToLed();		// Update the LED array to showcase the animation
				if(((players[r] >> (c*2)) & 0b11) != 0){		// If the row is occupied, exit the loop ( the led should be set from the last 2 lines)
					foundRow = 1;		// Set the foundRow variable to a 1
					break;		// Break out of the for loop
				}
				_delay_ms(75);		// Delay for animation
			}
			if(foundRow == 0){		// If didn't find the non-ocupied row, must be the last one
				players[5] |= active_player << (c*2);
				players[5-1] &= ~(0b11 << (c*2));
				playerToLed();
			}
			SWITCH_ACTIVE_PLAYER;		// Switch the active player if the row isn't fully occupied
			//number_of_turns++;			// Increase the number of turns
			int w = checkForWinner();	// Check for who, or none, player that one
			
			//Reset loop, only is activated if there is a winner or it is to be reset by software
			if(w!= 0){
				_delay_ms(250);
				for(int i=0;i<6;i++){led[i] = 0;}
				// Blink thru the indicator LED
				for(int i=0;i<5;i++){
					if(w == 1){led[0] = 0b001001001;}
					else if(w == 2){led[0] = 0b011011011;}
					_delay_ms(400);
					led[0] = 0;
					_delay_ms(400);
				}
				while(1){	// Wait until button is pressed to reset game
					int c = waitForButtonInput();
					if(c == 1){		// If pressed the button right of the indicator
						// Reset the variables
						active_player = 1;
						//number_of_turns = 0;
						// Clear the buffer
						clearBuffer(players, 6);
						playerToLed();
						_delay_ms(500);
						// Exit out of this loop to return to the game loop
						break;
					}
				}
			}
		}
	}
}

// Function to reset 74HC595s
void reset_shift_registers(void){
	SPI_DISABLE; // Disable SPI so it doesn't override pin
	DDRB |= 1<<4; // Set reset pin as output
	PORTB |= 1<<4; // Set reset pin HIGH
	_delay_ms(20);
	PORTB &= ~(1<<4); // Set reset pin LOW
	_delay_ms(20);
	PORTB |= 1<<4; // Set reset pin HIGH
	_delay_ms(20);
	DDRB &= ~(1<<4); // Set reset pin as input
}

// 12 
uint32_t mask_test[] = {
	0b001001,
	0b001001000000,
	0b001001000000000000,
	0b100000000000000000000,
	0b010010,
	0b010010000000,
	0b010010000000000000,
	0b010000000000000000000,
	0b100100,
	0b100100000000,
	0b100100000000000000,
	0b001000000000000000000,
};

// Update vector for LEDs
ISR(TIMER0_OVF_vect){
	PORTB &= ~(1<<1);
	//uint32_t to_s = (uint32_t)led[current_row] & (1L<<current_led);
	uint32_t to_s = (uint32_t)led[current_row] & mask_test[current_led];
	SEND_DATA_AND_WAIT(to_s >> 16);
	SEND_DATA_AND_WAIT(to_s >> 8);
	SEND_DATA_AND_WAIT(to_s >> 0);
	PORTB |= (1<<1);
	//if (++current_led == 22){
	if (++current_led == 12){
		current_led = 0;
		if (++current_row == 6){
			current_row = 0;
		}
		DDRC = 1<<current_row;
	}
}

// Function to take player's location and convert it to an LED matrix
void playerToLed(void){
	cli();
	for(int r=0;r<6;r++){
		led[r] = 0L; // Clear LED buffer
		for(int c=0;c<7;c++){
			uint8_t playerAtLoc = (players[r] >> (c*2)) & 0b11;
			uint8_t to_shift=0;
			// There's a tenerary operation because of a misfault in PCB design
			if(playerAtLoc == 0b01){
				to_shift = (c==6) ? 0b100: 0b001;
			}
			else if(playerAtLoc == 0b10){
				to_shift = (c==6) ? 0b110: 0b011;
			}
			led[r] |= ((uint32_t)to_shift << (c*3));
		}
	}
	sei();
}

int waitForButtonInput(void){
	while(PIND == 0xFF);
	for(int i=0;i<7;i++){	// Look for the button number that is pressed
		if(((PIND >> i) & 0b1) == 0){
			return 6-i;
		}
	}
	return 0;
}

// TODO: Turn this into a macro
// Function to clear the buffer of an array
void clearBuffer(uint16_t *c, int array_lenght){
	for(int i=0;i<array_lenght;i++){
		c[i] = 0;
	}
}


// Function to check for a game winner
// Returns 0 if none, 1 for player 1, and 2 for player 2
uint8_t checkForWinner(void){
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