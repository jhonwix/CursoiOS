//
//  Convertidor.h
//  Conversor Temperatura
//
//  Created by Jhon Wilfer Orrego on 19/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Convertidor : NSObject
{
    float celsius;
    float farenheit;
    float kelvin;
}

//metodos de instancia

//Primer convertidor C a F
-(NSString*)convertCtoF:(float)value;

-(NSString*)convertFtoC:(float)value;

//Segundo convertidor C a K
-(NSString*)convertCtoK:(float)value;
-(NSString*)convertKtoC:(float)value;

//Tercer Convertidor K a F
-(NSString*)convertKaF:(float)value;
-(NSString*)convertFtoK:(float)value;
@end
