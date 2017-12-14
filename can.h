/* 
 * File:   can.h
 * Author: Isaac.Rose
 *
 * Created on December 14, 2017, 5:17 PM
 */

#ifndef CAN_H
#define	CAN_H

#ifdef	__cplusplus
extern "C" {
#endif

    void initCan(void);
    
    void readCan(void);
    
    void writeCan(void);
    
    void intCan(void);

#ifdef	__cplusplus
}
#endif

#endif	/* CAN_H */

