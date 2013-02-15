//
//  WOBBot.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import "WOBBot.h"


@implementation WOBBot

@synthesize botId, ownerId, model, name, level, primaryWeapon, secondaryWeapon, maxSpeed, maxHealth, health, achievements;

+(id) sprite {
    return nil;
}

- (id) initWithFile:(NSString*)filename {
    if ( (self=[super initWithFile:filename]) ) {
        [self setLevel:1];
        [self setAchievements:[NSMutableArray arrayWithCapacity:10]];
    }
    
    return self;
}

@end
