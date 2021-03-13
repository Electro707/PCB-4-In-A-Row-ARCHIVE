/**
 * \mainpage
 * This program is for the Connect-4 Soldering Kit
 * \author Jamal Bouajjaj
 * 
 * Checkout main.c for all of the program.
 * 
 * \copyright MIT License
 */
/**
 * \file main.c
 * The main program file (The only file)
 */
/****************************************************************************************************
    Defines
****************************************************************************************************/

/**Set the CPU frequency to 16Mhz*/
#define F_CPU 16000000 
/**The number of times to blink the winner "chips" at the end of the game*/
#define WINNER_NUMB_WIN 5

/****************************************************************************************************
    Macros
****************************************************************************************************/
/**Macro to enable the SPI periferal*/
#define SPI_ENABLE SPCR |= 1<<6     
/**Macro to disable the SPI periferal*/
#define SPI_DISABLE SPCR &= ~(1<<6) 

/**Macro to enable the 74HC595's output*/
#define ENABLE_595_OUTPUT PORTB &= ~(1<<2) 
/**Macro to disable the 74HC595's output*/
#define DISABLE_595_OUTPUT PORTB |= (1<<2) 

/**Macro send data to the SPI bus,the wait until the periferal is ready for the next data*/
#define SEND_DATA_AND_WAIT(_DATA) SPDR = _DATA; while(!(SPSR & (1<<SPIF))) 
/**Macro that switches the active player variable to 1 or 2 depending on it's current state*/
#define SWITCH_ACTIVE_PLAYER active_player = (active_player == 1) ? 2 : 1
/**Macro to get the LED color depending of which player is selected (1 or 2)*/
#define PLAYER_COLOR_SELECTOR(_PLAYER) (_PLAYER == 0b01) ? 0b001 : 0b011

/****************************************************************************************************
    Includes
****************************************************************************************************/
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

/****************************************************************************************************
    Global Variables
****************************************************************************************************/
/**
 * An array to store the each LED's color for each row.
 * 
 * This variable is directly pushed unto the shift registers
 */
uint32_t led[6];    
uint8_t current_row = 0; /**< Store the current row from 0-5 */
uint32_t current_led = 0; /**< Store the current output mask 0-2 (See ISR(TIMER0_OVF_vect) for more details)*/
uint8_t status_led_color = 0;   /**< Store the status's LED color */
/**
 * Store the player locations's in this array.
 * 
 * Each dimension of this array is a row, and in each element the columns are in groups of 2 bits.\n
 * For example, 0b001000 for row #0 means that player 2 is on the second column fo row 0. 
 */
uint16_t players[6];        
uint8_t active_player = 0; /**< Stores the active player. 1 for player 1, 2 for player 2 */
/**
 * Store the row and column of the "chips" that made a player won in order to blink them
 */
uint8_t winner_location[2][4];

/**
 * A mask variable to mask the leds and status_led_color with red, green, then blue (as only the red,
 * green, or blue LEDs can be on at a time due to the common-cathode).
 * \todo Option to "reduce brightness" by software reducing duty cycle (maybe add a dummy mask of 0's ?)
 */
uint32_t mask_test[] = {
	0b001001001001001001001001,
	0b010010010010010010010010,
	0b100100100100100100100100,
};

/****************************************************************************************************
    Function Prototypes
****************************************************************************************************/
void reset_shift_registers(void);
void playerToLed(void);
int waitForButtonInput(void);
void clearBuffer(uint16_t *c, int array_lenght);
uint8_t checkForWinner(void);
void end_of_game(uint8_t who_won);
void fill_display_led(uint8_t color);

/**
 * The main function
 */
int main(void)
{
	// Set the LED sink pins to a low output and high impedance
	PORTC = 0;
	DDRC = 0b111111;
	// Set the buttons to input pull-up
	DDRD = 0x00;
	PORTD = 0xFF;
	// Set up PORTB pins
	DDRB |= 0b00101111; // Set all pins to output except for crystal, MISO, and PB0
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
	
	PORTB &= ~(1<<0);
	
	SPI_ENABLE;	
	sei();
	ENABLE_595_OUTPUT;

 	clearBuffer(players, 6);
 	active_player = 1;			// Set the active player to player 1
 	status_led_color = PLAYER_COLOR_SELECTOR(active_player);
    // A 2D array to determine where the winner's "chips" are at to blink them
    // The second dimension is for the row and column, then the first dimension is the row/column locations
     while (1) // The game loop!
     {
 		int c = waitForButtonInput();
        if(c == 7){
            end_of_game(0);
            continue;
        }
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
 			//number_of_turns++;			// Increase the number of turns
 			uint8_t w = checkForWinner();	// Check for who, or none, player that one
            if(w != 0){
                end_of_game(w);
                continue;
            }
            SWITCH_ACTIVE_PLAYER;		// Switch the active player if the row isn't fully occupied
 			status_led_color = PLAYER_COLOR_SELECTOR(active_player);
 		}
 	}
}


/**
 * This function ends the game by blinking the LED that made the player won,
 * then resets some variables
 * 
 * \param who_won The player who won the game if anybody won.\n
 * 0 For nobody\n
 * 1 For player 1\n
 * 2 For player 2
 */
void end_of_game(uint8_t who_won){
    // Blink thru the "chips" that won
    if (who_won!=0){
        //led_color = PLAYER_COLOR_SELECTOR(who_won);
        for(int i=0;i<WINNER_NUMB_WIN;i++){
            for(int k=0;k<4;k++){
                players[winner_location[0][k]] &= ~(0b11 << (winner_location[1][k]*2));
            }
            playerToLed();
            _delay_ms(400);
            for(int k=0;k<4;k++){
                players[winner_location[0][k]] |= (active_player << (winner_location[1][k]*2));
            }
            playerToLed();
            _delay_ms(400);
        }
    }
    else{
        uint8_t led_color = 0b111;
        fill_display_led(led_color);
        for(int i=0;i<5;i++){
            status_led_color = 0;
            _delay_ms(400);
            status_led_color = led_color;
            _delay_ms(400);
        }
    }
    
    // Used to wait until the player pressed the button before the game reset
    /* 
    while(1){	// Wait until button is pressed to reset game
        int c = waitForButtonInput();
        if(c == 7){		// If pressed the button right of the indicator
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
    }*/
    fill_display_led(0);
    clearBuffer(players, 6);
    active_player = 1;
    status_led_color = PLAYER_COLOR_SELECTOR(active_player);
}

/**
 * A function that resets the shift register thru pin PB4
 * Because that pin is set to an input no matter what when the SPI periferal
 * is enabled, we must disable it before we're able to control the pin
 */
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

/**
 * The LED updater interupt, beign triggered by Timer0
 * 
 * The LEDs are updated by using the shift registers, only turning on the red, green, then blue LEDs
 * during each row update.
 */
ISR(TIMER0_OVF_vect){
	PORTB &= ~(1<<1);
	//uint32_t to_s = (uint32_t)led[current_row] & (1L<<current_led);
	uint32_t to_s = ((uint32_t)led[current_row] | ((uint32_t)status_led_color << 21)) & mask_test[current_led];
	SEND_DATA_AND_WAIT(to_s >> 16);
	SEND_DATA_AND_WAIT(to_s >> 8);
	SEND_DATA_AND_WAIT(to_s >> 0);
	PORTB |= (1<<1);
	//if (++current_led == 12){
	if (++current_led == 3){
		current_led = 0;
		if (++current_row == 6){
			current_row = 0;
		}
		PORTC = 1<<current_row;
	}
}

/**
 * A function that converts the players array into the led array in order to be
 * outputed.
 * Because I wanted to prevent any flicker effect while the array is beign updated,
 * the interupts (the only one that exists is the LED updater one) are disabled while
 * the led array is beign eidted.
 */
void playerToLed(void){
	cli();
	for(int r=0;r<6;r++){
		led[r] = 0L; // Clear LED buffer
		for(int c=0;c<7;c++){
			uint8_t playerAtLoc = (players[r] >> (c*2)) & 0b11;
			uint8_t to_shift = 0;
			if(playerAtLoc != 0){
                to_shift = PLAYER_COLOR_SELECTOR(playerAtLoc);
            }
			led[r] |= ((uint32_t)to_shift << (c*3));
		}
	}
	sei();
}

/**
 * A function that waits until one of the buttons are pressed 
 * (either the column buttons or the generic button).
 * 
 * \return A number 0-6 corresponding to the column button pressed
 * or 7 for the general button
 */
int waitForButtonInput(void){
	while(PIND == 0xFF);
	for(int i=0;i<8;i++){	// Look for the button number that is pressed
		if(((PIND >> i) & 0b1) == 0){
			return i;
		}
	}
	return 0;
}

/**
 * A function that clears a 16-bit buffer with a given array_lenght
 * \todo Turn this into a macro
 */
void clearBuffer(uint16_t *c, int array_lenght){
	for(int i=0;i<array_lenght;i++){
		c[i] = 0;
	}
}

/**
 * A function that fills the entire display with a certain color
 * \param color The color to turn the display into. Need to be only 3-bits in size
 */
void fill_display_led(uint8_t color){
    cli();
	for(int r=0;r<6;r++){
        led[r] = 0L;
		for(int c=0;c<7;c++){
			led[r] |= ((uint32_t)color << (c*3));
		}
	}
	sei();
}

/**
 * A function to check for a game winner
 * \return 0 if no player won, 1 for player 1, and 2 for player 2
 * \note Thanks Spencer Hopwood for this function :)
 */
uint8_t checkForWinner(){
    int c, r, i;
	// Check vertical
	for(c=0;c<7;c++){		// Check every column
		uint8_t similarCounter = 0;		// Stores the number of same player in a row
		uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
		for(r=0;r<(6-1);r++){
			if( ((players[r]>>(c*2)) & 0b11) == ((players[r+1]>>(c*2)) & 0b11) ){		// If the player from the current and next row is the same, increment a counter
				if(((players[r]>>(c*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
					simlarPlayer = (players[r]>>(c*2))&0b11;	// Record the similar player
					winner_location[0][similarCounter] = r;
                    winner_location[1][similarCounter] = c;
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
		if(similarCounter >= 3){
            winner_location[0][similarCounter] = r+1;
            winner_location[1][similarCounter] = c;
			return simlarPlayer;
		}
	}

	// Check horizontal
	for(r=0;r<6;r++){		// Check every row
		uint8_t similarCounter = 0;		// Stores the number of same player in a column
		uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
		for(c=0;c<(7-1);c++){
			if( ((players[r]>>(c*2)) & 0b11) == ((players[r]>>((c+1)*2)) & 0b11) ){		// If the player from the current and next column is the same, increment a counter
				if(((players[r]>>(c*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
					simlarPlayer = (players[r]>>(c*2))&0b11;	// Record the similar player
					winner_location[0][similarCounter] = r;
                    winner_location[1][similarCounter] = c;
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
		if(similarCounter >= 3){
            winner_location[0][similarCounter] = r;
            winner_location[1][similarCounter] = c+1;
			return simlarPlayer;
		}
	}

	// Check diagonal (positive slope)
	// Check 4 diagonal in a row from the last 3 row and the first 4 column ( the only combination)
	for(c=0;c<4;c++){
		for(r=3;r<6;r++){
			uint8_t similarCounter = 0;		// Stores the number of same player in a column
			uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
			for(i=0;i<(4-1);i++){
				if( ((players[r-i]>>((c+i)*2)) & 0b11) == ((players[r-i-1]>>((c+i+1)*2)) & 0b11) ){		// If the player from the current and next column is the same, increment a counter
					if(((players[r-i]>>((c+i)*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
						simlarPlayer = (players[r-i]>>((c+i)*2)) & 0b11;	// Record the similar player
						winner_location[0][similarCounter] = r-i;
                        winner_location[1][similarCounter] = c+i;
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
			if(similarCounter >= 3){
                winner_location[0][similarCounter] = r-i-1;
                winner_location[1][similarCounter] = c+i+1;
				return simlarPlayer;
			}
		}
	}

	// Check diagonal (negative slope)
	// Check 4 diagonal in a row from the last 3 row and the first 4 column ( the only combination)
	for(c=6;c>2;c--){
		for(r=3;r<6;r++){
			uint8_t similarCounter = 0;		// Stores the number of same player in a column
			uint8_t simlarPlayer = 0;		// Stores the player for the previous variable
			for(i=0;i<(4-1);i++){
				if( ((players[r-i]>>((c-i)*2)) & 0b11) == ((players[r-i-1]>>((c-i-1)*2)) & 0b11) ){		// If the player from the current and next column is the same, increment a counter
					if(((players[r-i]>>((c-i)*2)) & 0b11) != 0){   		// Only increment counter if the player isn't 0 (none)
						simlarPlayer = (players[r-i]>>((c-i)*2)) & 0b11;	// Record the similar player
						winner_location[0][similarCounter] = r-i;
                        winner_location[1][similarCounter] = c-i;
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
			if(similarCounter >= 3){
                winner_location[0][similarCounter] = r-i-1;
                winner_location[1][similarCounter] = c-i-1;
				return simlarPlayer;
			}
		}
	}
	return 0;
}
