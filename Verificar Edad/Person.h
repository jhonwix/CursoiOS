//
//  Person.h
//  Verificar Edad
//
//  Created by Jhon Wilfer Orrego on 17/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString * name;
    int age;
    NSString * city;
}
//Metodos Set y Get de name

-(NSString*) name;
-(void) setName:(NSString*)value;

//Metodo Set y Get de age

-(int)age;
-(void) setAge:(int)value;

//Metodo Set y Get de city
-(NSString*) city;
-(void) setCity:(NSString*)value;

-(BOOL) userIsAdult;

@end
