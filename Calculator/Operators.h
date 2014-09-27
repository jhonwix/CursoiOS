//
//  Operators.h
//  Calculator
//
//  Created by Jhon Wilfer Orrego on 20/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operators : NSObject{
    
    float numberOne;
    float numberTwo;
    float resultado;
}

//Crear get y set para las propiedades
-(float) numberOne;
-(void) setNumberOne:(float)value;

-(float) numberTwo;
-(void) setNumberTwo:(float)value;

-(float) resultado;
-(void) setResultado:(float)value;

//Metodos de Instancia
//Metodo con parametros
//-(float )suma:(float)number1 ySuma: (float)number2;

//Metodo con propiedades
-(float) suma2Numeros;

-(NSString*)resta:(float)value;
-(NSString*)Multiplicacion:(float)value;
-(NSString*)Division:(float)value;

@end
