//
//  ViewController.m
//  Calculator
//
//  Created by Jhon Wilfer Orrego on 20/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)suma:(id)sender {
    Operators * obOper = [[Operators alloc]init];
    
    //Ejecuta el metodo con parametros (se peude co propiedades)
    //_result.text = [NSString stringWithFormat:@"%f",[obOper suma:[_numberone.text intValue] ySuma:[_numberTwo.text intValue]]];
    
    //Metodo con propiedades
    [obOper setNumberOne:[_numberone.text floatValue]];
    [obOper setNumberTwo:[_numberTwo.text floatValue]];
    _result.text = [NSString stringWithFormat:@"%f",[obOper suma2Numeros]];
    
}

- (IBAction)resta:(id)sender {
    int result = [ _numberone.text intValue] - [_numberTwo.text intValue];
    _result.text=[NSString stringWithFormat:@"%d", result];
}

- (IBAction)multi:(id)sender {
    int result = [ _numberone.text intValue] * [_numberTwo.text intValue];
    _result.text=[NSString stringWithFormat:@"%d", result];
}

- (IBAction)division:(id)sender {
    int result = [ _numberone.text intValue] / [_numberTwo.text intValue];
    _result.text=[NSString stringWithFormat:@"%d", result];
}
@end
