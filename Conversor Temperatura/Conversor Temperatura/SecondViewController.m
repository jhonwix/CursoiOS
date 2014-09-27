//
//  SecondViewController.m
//  Conversor Temperatura
//
//  Created by Jhon Wilfer Orrego on 19/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTemperature:(id)sender {
    Convertidor * convertidor = [[Convertidor alloc]init];
    _resultConvert.text = [convertidor convertCtoF:[_numberConvert.text floatValue]];
    [self.view endEditing:YES];
}
- (IBAction)convertTemperatureC:(id)sender {
    Convertidor * convertidor = [[Convertidor alloc]init];
    _resultConvert.text = [convertidor convertFtoC:[_numberConvert.text floatValue]];
    [self.view endEditing:YES];
}
@end
