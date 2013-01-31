//
//  DGViewController.h
//  alerta
//
//  Created by Nelson Hernandez on 24/01/13.
//  Copyright (c) 2013 Nelson Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DGViewController : UIViewController <UIAlertViewDelegate,UIActionSheetDelegate>
- (IBAction)alertSimple:(id)sender;
- (IBAction)actionSheet:(id)sender;

@end
