//
//  SecondViewController.h
//  Conversor Temperatura
//
//  Created by Jhon Wilfer Orrego on 19/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Convertidor.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *numberConvert;

- (IBAction)convertTemperature:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *resultConvert;

- (IBAction)convertTemperatureC:(id)sender;

@end

