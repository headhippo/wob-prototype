//
//  WOBMap.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface WOBMap : CCSprite

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *supportedGameTypes;
@property (nonatomic, strong) NSMutableArray *spawnPoints;

+(id) sprite;

@end
