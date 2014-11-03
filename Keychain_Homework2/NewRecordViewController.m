//
//  NewRecordViewController.m
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/9/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import "NewRecordViewController.h"

@interface NewRecordViewController ()

@end

@implementation NewRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)webExitEditing:(id)sender {
    [sender resignFirstResponder];
    [_usernameText becomeFirstResponder];
}
- (IBAction)usernameExitEditing:(id)sender {
    [sender resignFirstResponder];
    [_passwordText becomeFirstResponder];
}
- (IBAction)passwordExitEditing:(id)sender {
    [sender resignFirstResponder];
    [_countText becomeFirstResponder];
}
- (IBAction)countExitEditing:(id)sender {
    [sender resignFirstResponder];
}
-(IBAction)backgroundTap:(id)sender{
    [_webText resignFirstResponder];
    [_usernameText resignFirstResponder];
    [_passwordText resignFirstResponder];
    [_countText resignFirstResponder];
}


- (IBAction)savePressed:(id)sender {
    NSString* web = _webText.text;
    NSString *user = _usernameText.text;
    NSString *pass = _passwordText.text;
    int count = [_countText.text intValue];
    if([web isEqualToString:@""] || [user isEqualToString:@""] || [pass isEqualToString:@""] || [_countText.text isEqualToString:@""]){
        UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                           message:@"Please fill out all fields."
                                                          delegate:self
                                                 cancelButtonTitle:@"OK"
                                                 otherButtonTitles:nil];
        [theAlert show];
        return;
    }
    
    SiteValue *sv = [SiteValue siteWithWebsite:web andUsername:user andPassword:pass andCount:count];
    [_keychain addEntryWithSiteValue:sv];
    [self dismissViewControllerAnimated:YES completion:nil];
    //[KeychainModel addEntryWithSiteValue: sv];
}

- (IBAction)cancelPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
