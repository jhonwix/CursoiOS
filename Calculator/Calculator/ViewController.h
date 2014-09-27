//
//  ViewController.h
//  Calculator
//
//  Created by Jhon Wilfer Orrego on 20/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Operators.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *numberone;
@property (strong, nonatomic) IBOutlet UITextField *numberTwo;
@property (strong, nonatomic) IBOutlet UILabel *result;

- (IBAction)suma:(id)sender;

- (IBAction)resta:(id)sender;

- (IBAction)multi:(id)sender;

- (IBAction)division:(id)sender;


@end

