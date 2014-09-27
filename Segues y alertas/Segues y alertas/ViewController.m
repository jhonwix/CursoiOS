//
//  ViewController.m
//  Segues y alertas
//
//  Created by Jhon Wilfer Orrego on 24/09/14.
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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    /* solo sirve para conexion directa
    segundapantalla = [segue destinationViewController];
    segundapantalla.dataTransfer = _userLoginName.text;*/
    
    segundapantalla = [[segue.destinationViewController viewControllers]objectAtIndex:0];
    segundapantalla.dataTransfer=_userLoginName.text;
    
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([_passwordLoginName.text isEqualToString:@"123"]){
        return YES;
    }
    
    return NO;
}

@end
