//
//  WOBWeapon.h
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface WOBWeapon : CCSprite

@property (nonatomic, strong) NSString *weaponId;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) NSInteger minDamage;
@property (nonatomic, assign) NSInteger maxDamage;
@property (nonatomic, assign) NSInteger range;

@end
