//
//  ViewController.m
//  Verificar Edad
//
//  Created by Jhon Wilfer Orrego on 17/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)validateAge:(id)sender {
    
    user = [[Person alloc]init];
    //[user setName:@"Jhon"];
    [user setName:_userText.text];
    //[user setAge:32];
    [user setAge:[_ageText.text intValue] ];
    [user setCity:_cityText.text];
    
    if([user userIsAdult]){
        _result.text =[NSString stringWithFormat:@"%@ es adulto y vive en %@",[user name], [user city]];
        //NSLog(@"%@ es adulto", [user name]);
    }else{
        //NSLog(@"%@ es niño", [user name]);
        _result.text =[NSString stringWithFormat:@"%@ es adulto y vive en %@",[user name], [user city]];
    }
    //oculta el teclado al terminar de editar.
    [self.view endEditing:YES];

}
@end
