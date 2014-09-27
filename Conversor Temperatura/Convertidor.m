//
//  Convertidor.m
//  Conversor Temperatura
//
//  Created by Jhon Wilfer Orrego on 19/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "Convertidor.h"

@implementation Convertidor

-(NSString*)convertCtoF:(float)value{
    farenheit = value*9/5+32;
    return [NSString stringWithFormat:@"%.02f ºf", farenheit];
}

-(NSString*)convertFtoC:(float)value{
    celsius = (5*(value-32))/9;
    return [NSString stringWithFormat:@"%.02f ºC", celsius];
    

}

-(NSString*)convertCtoK:(float)value{
    kelvin = value + 273.15;
    return [NSString stringWithFormat:@"%.02f ºk", kelvin];
}

-(NSString*)convertKtoC:(float)value{
    kelvin = value - 273.15;
    return [NSString stringWithFormat:@"%.02f ºk", kelvin];
}



-(NSString*)convertKaF:(float)value{
    farenheit = (value - 273.15)*1.8+32;
    return [NSString stringWithFormat:@"%.02f ºF", farenheit];
}

-(NSString*)convertFtoK:(float)value{
    kelvin = ((5*(value-32))/9)+273.15;
    return [NSString stringWithFormat:@"%.02f ºK", kelvin];
    
}

@end
