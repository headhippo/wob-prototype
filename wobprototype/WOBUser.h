//
//  WOBUser.h
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WOBUser : NSObject

@property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *login;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, strong) NSMutableArray *games;
@property (nonatomic, strong) NSMutableArray *bots;
@property (nonatomic, strong) NSMutableArray *weapons;
@property (nonatomic, strong) NSMutableArray *achievements;

@end
