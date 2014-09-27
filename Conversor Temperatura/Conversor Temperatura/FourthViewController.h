//
//  FourthViewController.h
//  Conversor Temperatura
//
//  Created by Jhon Wilfer Orrego on 19/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Convertidor.h"

@interface FourthViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *numberConvert;

- (IBAction)convertTemperature:(id)sender;


- (IBAction)convertTemperatureF:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *resultConvert;

@end
