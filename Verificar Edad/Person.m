//
//  Person.m
//  Verificar Edad
//
//  Created by Jhon Wilfer Orrego on 17/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "Person.h"

@implementation Person
-(NSString *)name{
    return name;
}
-(void)setName:(NSString *)value{
    name = value;
}
-(int)age{
    return age;
}
-(void) setAge:(int)value{
    age=value;
}
-(NSString *)city{
    return city;
}
-(void)setCity:(NSString *)value{
    city = value;
}
-(BOOL)userIsAdult{
    if (age >=18){
        return YES;
    }
    return NO;
}


@end
