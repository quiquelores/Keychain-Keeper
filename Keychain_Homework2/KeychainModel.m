//
//  KeychainModel.m
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/9/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import "KeychainModel.h"

@implementation KeychainModel

-(void) addEntryWithSiteValue:(SiteValue*) sv {
    if(_entries == nil){
        _entries = [NSMutableArray new];
    }
    [_entries addObject:sv];
} //end addEntryWithSiteValue

-(SiteValue*) getEntryAtIndex:(int) index{
    return [_entries objectAtIndex:index];
}//get EntryAtIndex

@end
