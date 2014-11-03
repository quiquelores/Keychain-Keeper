//
//  SiteValue.m
//  Keychain_Homework2
//
//  Created by Quique Lores on 10/9/14.
//  Copyright (c) 2014 nyu.edu. All rights reserved.
//

#import "SiteValue.h";
@implementation SiteValue

+(id) siteWithWebsite:(NSString*) newWebsite andUsername:(NSString *)newUsername andPassword:(NSString *)newPassword andCount:(int)newCount{
    SiteValue* sv= [SiteValue alloc];
    sv = [sv initWithWebSite: newWebsite andUsername:newUsername andPassword:newPassword andCount:newCount];
    return sv;
} //end siteWithUsername andPassword andCount

-(id) init{
    if(self = [super init]){
        count = 0;
    }
    return self;
} //end init

-(id) initWithWebSite: (NSString*) newWebsite andUsername:(NSString*)newUsername andPassword:(NSString*) newPassword andCount:(int)newCount{
    if(self = [super init]){
        website = newWebsite;
        count = newCount;
        username = newUsername;
        password = newPassword;
    }
    return self;
} //end initWithUsername andPassword andCount

//getters and setters

-(int) count{
    return count;
} //end count

-(void) setCount:(int)newCount{
    count = newCount;
} //end setCount


-(NSString*) website{
    return website;
} //end website

-(void) setWebsite:(NSString *)newWebsite{
    website = newWebsite;
} //end setWebsite

-(NSString*) username{
    return username;
} //end username

-(void) setUsername:(NSString *)newUsername{
    username = newUsername;
} //end setUsername

-(NSString*) password{
    return password;
} //end password

-(void) setPassword:(NSString*)newPassword{
    password = newPassword;
} //end setPassword

//end getters and setters

-(void) incCount{
    count = [self count] + 1;
} //end incCount

@end