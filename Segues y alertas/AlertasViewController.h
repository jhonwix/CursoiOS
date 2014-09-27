//
//  AlertasViewController.h
//  Segues y alertas
//
//  Created by Jhon Wilfer Orrego on 24/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertasViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>{
    UIAlertView * alerta;
    
}

- (IBAction)alertaSimple:(id)sender;

- (IBAction)alertaCampos:(id)sender;

- (IBAction)hojaAcciones:(id)sender;

@end
