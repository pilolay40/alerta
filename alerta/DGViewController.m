//
//  DGViewController.m
//  alerta
//
//  Created by Nelson Hernandez on 24/01/13.
//  Copyright (c) 2013 Nelson Hernandez. All rights reserved.
//

#import "DGViewController.h"

@interface DGViewController ()

@end

@implementation DGViewController

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

- (IBAction)alertSimple:(id)sender {
    UIAlertView *alerta =[[UIAlertView alloc]
                          initWithTitle:@"Un titulo"
                                message:@"Un mensaje"
                               delegate:self
                      cancelButtonTitle:@"Ok"
                      otherButtonTitles:@"Tusabes", nil];
    [alerta setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
    [alerta show];
}

- (IBAction)actionSheet:(id)sender {
    UIActionSheet *action =[[UIActionSheet alloc] initWithTitle:@""
                                                       delegate:self
                                              cancelButtonTitle:@"BOton cancel"
                                         destructiveButtonTitle:@"Destructivo"
                                              otherButtonTitles:@"Otro mas", nil];
    [action showInView:[self view]];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"La vaina es %@ ",[actionSheet buttonTitleAtIndex:buttonIndex]);
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"El boton es %@",[alertView buttonTitleAtIndex:buttonIndex]);
    UITextField *texto= [alertView textFieldAtIndex:0];
   // NSLog([texto text]);
}
@end
