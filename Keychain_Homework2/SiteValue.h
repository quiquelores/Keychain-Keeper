//
//  SiteValue.h
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/9/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject {
    
    int count;
    NSString *website;
    NSString *username;
    NSString *password;
}

+(id) siteWithWebsite:(NSString*) newWebsite andUsername:(NSString*)newUsername andPassword:(NSString*)newPassword andCount:(int)newCount;
-(id) initWithWebSite: (NSString*) newWebsite andUsername:(NSString*)newUsername andPassword:(NSString*)newPassword andCount:(int)newCount;

-(int) count;
-(void) setCount:(int)newCount;
-(void) incCount;

-(NSString*) website;
-(void) setWebsite:(NSString*)newWebsite;

-(NSString*) username;
-(void) setUsername:(NSString*)newUsername;

-(NSString*) password;
-(void) setPassword:(NSString*)newPassword;

@end
