/*
 * File:   main.c
 * Author: SulaimanNiazi
 *
 * Created on February 25, 2025, 3:38 PM
 */

#define tx_pin          PORTCbits.RC6
#define tx_pinDIR       TRISCbits.TRISC6
#define button_pin      PORTBbits.RB0
#define button_pinDIR   TRISBbits.TRISB0

#define _XTAL_FREQ 20000000
#include <xc.h>
#include <stdio.h>
#include <string.h>

#pragma config FOSC = HS, WDTE = OFF, PWRTE = ON, BOREN = ON, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF  

void tx(unsigned char value){
    TXREG = value;
    while(!TXIF);
    TXIF = 0;
}

void txstr(char line[]){
    uint16_t length = (uint16_t)strlen(line);
    for(uint16_t x = 0; x < length; x++){
        tx((uint8_t)line[x]);
    }
}

void updateTimer(uint16_t mins, uint16_t secs, uint16_t msecs){
    char line[20];
    sprintf(line, "%d:%d:%d", mins, secs, msecs);
    tx(0x0C);               //clear screen
    txstr(line);
}

void main(void){
    //Initialization of pins and variables
    button_pinDIR = 1;
    uint16_t mins = 0, secs = 0, msecs = 0;
    TRISB1 = 0;
    RB1 = 0;
    
    //initialization of UART
    tx_pinDIR = 0;
    tx_pin = 0;
    TXSTA = 0x26;           //8 bit asynchronous fast mode transmit enabled
    RCSTA = 0x80;           //no address no errors and serial port enabled
    SPBRG = 0x81;           //SPBRG = 130 for Baud rate of 9600 using Fosc = 20MHz
    TXIE = 1;
    TXIF=0;
    
    //initialization of timer1
    /*TMR1IE = 1;
    T1CON = 0x01;           //timer1 on, internal clock, 1:1 prescaler
    TMR1H = 0xEC;
    TMR1L = 0x78;*/
    
    while(1){
        __delay_ms(10);
        if(msecs == 99){
            msecs = 0;
            if(secs == 59){
                secs = 0;
                if(mins == 59){
                    mins = 0;
                }
                else{
                    mins++;
                }
            }
            else{
                secs++;
                RB1 = !RB1;
            }
        }
        else{
            msecs++;
        }
        updateTimer(mins, secs, msecs);
    }
    return;
}
