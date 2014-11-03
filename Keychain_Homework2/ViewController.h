//
//  ViewController.h
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/2/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeychainModel.h"


@interface ViewController : UIViewController{
    
    IBOutlet UITextField *serviceText;
    IBOutlet UITextField *usernameText;
    IBOutlet UITextField *passwordText;
    IBOutlet UITextField *countText;
    IBOutlet UITextField *indexText;

    IBOutlet UIButton *forwardButton;
    IBOutlet UIButton *backwardsButton;
    IBOutlet UIButton *countButton;
    IBOutlet UIImageView *image;
    
    IBOutlet UISlider *indexSlider;
    int index;
}
@property (strong, nonatomic) KeychainModel* keychain;

-(IBAction)forwardPressed:(id)sender;
-(IBAction)backwardPressed:(id)sender;
-(void)displayValuesAtIndex:(int)index;
- (IBAction)sliderValueChanged:(id)sender;

@end

