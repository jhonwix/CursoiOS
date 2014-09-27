//
//  MenuViewController.h
//  Segues y alertas
//
//  Created by Jhon Wilfer Orrego on 24/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController
- (IBAction)exitButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property NSString * dataTransfer;

@end
