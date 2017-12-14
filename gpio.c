#include <stdint.h>
#include "gpio.h"
#include "pic18f25k80.h"


    void initGpio(void){
        //set GPIO RBO
        TRISBbits.TRISB5 = 0;
        PORTBbits.RB5 = 1;
    }
    
    void blinkLed(void){
        PORTBbits.RB5 ^= 1;
    }
