//
//  ViewController.h
//  Verificar Edad
//
//  Created by Jhon Wilfer Orrego on 17/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController{
    Person * user;
}
@property (strong, nonatomic) IBOutlet UITextField *userText;

@property (strong, nonatomic) IBOutlet UITextField *ageText;

@property (strong, nonatomic) IBOutlet UILabel *result;

@property (strong, nonatomic) IBOutlet UITextField *cityText;

- (IBAction)validateAge:(id)sender;

@end
