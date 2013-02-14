//
//  WOBBot.h
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class WOBWeapon;

@interface WOBBot : CCSprite

@property (nonatomic, strong) NSString *botId;
@property (nonatomic, strong) NSString *ownerId;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, strong) WOBWeapon *primaryWeapon;
@property (nonatomic, strong) WOBWeapon *secondaryWeapon;
@property (nonatomic, assign) NSInteger maxSpeed;
@property (nonatomic, assign) NSInteger maxHealth;
@property (nonatomic, assign) NSInteger health;
@property (nonatomic, strong) NSMutableArray *achievements;

@end
