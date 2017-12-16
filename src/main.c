/* 
 * File:   main.c
 * Author: Isaac.Rose
 *
 * Created on December 14, 2017, 2:30 PM
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include "config.h"
#include "can.h"
#include "gpio.h"


int main(int argc, char** argv) {
    uint8_t myByte;
    uint16_t myWord;
    
    initGpio();
    initCan();
    
    while(1){
        myWord++;
        if(myWord > 5000){
            myWord = 0;
            blinkLed();
                   
        }
    }
    return (EXIT_SUCCESS);
}

