//
//  ViewController.h
//  Segues y alertas
//
//  Created by Jhon Wilfer Orrego on 24/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuViewController.h"

@interface ViewController : UIViewController{
    MenuViewController * segundapantalla;
}
@property (strong, nonatomic) IBOutlet UITextField *userLoginName;
@property (strong, nonatomic) IBOutlet UITextField *passwordLoginName;


@end

