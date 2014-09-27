//
//  FourthViewController.m
//  Conversor Temperatura
//
//  Created by Jhon Wilfer Orrego on 19/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)convertTemperature:(id)sender {
    Convertidor * convertidor = [[Convertidor alloc]init];
    _resultConvert.text = [convertidor convertKaF:[_numberConvert.text floatValue]];
    [self.view endEditing:YES];

}

- (IBAction)convertTemperatureF:(id)sender {
    Convertidor * convertidor = [[Convertidor alloc]init];
    _resultConvert.text = [convertidor convertFtoK:[_numberConvert.text floatValue]];
    [self.view endEditing:YES];
    
}
@end
