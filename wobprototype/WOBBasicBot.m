//
//  WOBBasicBot.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBBasicBot.h"
#import "WOBMissileLauncher.h"

@implementation WOBBasicBot

+(id) sprite {
    return [WOBBasicBot spriteWithFile:@"Bot.png"];
}

- (id) initWithFile:(NSString*)filename {
    if ( (self=[super initWithFile:filename]) ) {
        [self setBotId:@"bot1"];
        [self setOwnerId:@"user1"];
        [self setModel:@"Basic Bot Prototype 1"];
        [self setName:@"Basic Bot Prototype 1"];
        [self setPrimaryWeapon:[WOBMissileLauncher spriteWithFile:@"Bot.png"]];
        [self setSecondaryWeapon:[WOBMissileLauncher spriteWithFile:@"Bot.png"]];
        [self setMaxSpeed:10];
        [self setMaxHealth:100];
        [self setHealth:100];
    }
    
    return self;
}

@end
