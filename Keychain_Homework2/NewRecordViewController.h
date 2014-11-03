//
//  NewRecordViewController.h
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/9/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeychainModel.h"
#import "SiteValue.h"

@interface NewRecordViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *webText;
@property (strong, nonatomic) IBOutlet UITextField *usernameText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
@property (strong, nonatomic) IBOutlet UITextField *countText;

@property (strong, nonatomic) KeychainModel* keychain;

- (IBAction)savePressed:(id)sender;
- (IBAction)cancelPressed:(id)sender;

@end
