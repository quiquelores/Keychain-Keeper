//
//  KeychainModel.h
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/9/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

@interface KeychainModel : NSObject

@property (strong, nonatomic) NSMutableArray* entries;


-(void) addEntryWithSiteValue:(SiteValue*) sv;
-(SiteValue*) getEntryAtIndex:(int) index;

@end
