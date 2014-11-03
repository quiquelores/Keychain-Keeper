//
//  ViewController.m
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/2/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "NewRecordViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //initialize keychain and set index to 0
    _keychain = [[KeychainModel alloc] init];
    index= 0;
    
    //populate keychain
    [_keychain addEntryWithSiteValue:[SiteValue siteWithWebsite:@"fb" andUsername:@"username" andPassword:@"password" andCount:1]];
    [_keychain addEntryWithSiteValue:[SiteValue siteWithWebsite:@"twitter" andUsername:@"tweet" andPassword:@"tweetword" andCount:0]];
    [_keychain addEntryWithSiteValue:[SiteValue siteWithWebsite:@"amazon" andUsername:@"compulsiveBuyer123" andPassword:@"words" andCount:100]];
    [self displayValuesAtIndex: index];
}
-(void) viewWillAppear:(BOOL)animated{
    [self displayValuesAtIndex:index];
} //end viewWillAppear

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)forwardPressed:(id)sender{
    [self displayValuesAtIndex: (index+1)];
}   // end forwardPressed

-(IBAction)backwardPressed:(id)sende{
    [self displayValuesAtIndex: (index-1)];
}   //end backwardPressed

-(void)displayValuesAtIndex:(int)newIndex{
    if(newIndex<=0){
        //disable backwards button
        [backwardsButton setEnabled:FALSE];
        [backwardsButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [backwardsButton setAlpha:0.3];

    } else{
        //enable backwards button
        [backwardsButton setEnabled:TRUE];
        [backwardsButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [backwardsButton setAlpha:1];
    }
    if(newIndex == ([_keychain.entries count] -1)){
        //disable forward button
        [forwardButton setEnabled:FALSE];
        [forwardButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [forwardButton setAlpha:0.3];
    }
    else{
        //enable forward Button
        [forwardButton setEnabled:TRUE];
        [forwardButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [forwardButton setAlpha:1];


    }
    //update info displayed
    index = newIndex;
    SiteValue * curr = [_keychain getEntryAtIndex:index];
    serviceText.text = [curr website];
    usernameText.text = [curr username];
    passwordText.text = [curr password];
    countText.text = [NSString stringWithFormat:@"%d", [curr count]];
    indexSlider.maximumValue = [_keychain.entries count] -1;
    indexSlider.value = index;
    indexText.text = [NSString stringWithFormat:@"%d", index];
} //end displayValuesAtIndex

- (IBAction)sliderValueChanged:(id)sender {
    index = (int)[indexSlider value];
    [self displayValuesAtIndex:index];
} // end sliderValueChanged

- (IBAction)incrementButtonPressed:(id)sender {
    [[_keychain getEntryAtIndex:index] incCount];
    [self displayValuesAtIndex:index];
}

-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NewRecordViewController *nextController = segue.destinationViewController;
    nextController.keychain = self.keychain;
}

@end
