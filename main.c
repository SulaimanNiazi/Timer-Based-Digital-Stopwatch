/*
 * File:   main.c
 * Author: SulaimanNiazi
 *
 * Created on February 25, 2025, 3:38 PM
 */

#define _XTAL_FREQ 20000000

#include <xc.h>
#include<string.h>

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

void main(void){
    TRISCbits.TRISC6 = 0;
    TRISCbits.TRISC7 = 1;
    PORTCbits.RC6 = 0;
    TRISBbits.TRISB0 = 1;
    TXSTA = 0x26;
    RCSTA = 0x90;
    SPBRG = 0x81;
    TXIE = 1;
    TXIF=0;
    txstr("Sulaiman");
    tx(0x0D);
    while(1){
    }
    return;
}
