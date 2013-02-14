//
//  WOBMissileLauncher.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBMissileLauncher.h"
#import "WOBConstants.h"

@implementation WOBMissileLauncher

- (id) initWithFile:(NSString*)filename {
    if ( (self=[super initWithFile:filename]) ) {
        [self setWeaponId:@"weapon1"];
        [self setModel:@"Missile Launcher Prototype 1"];
        [self setName:@"Missile Launcher Prototype 1"];
        [self setLevel:1];
        [self setType:WEAPON_TYPE_MISSILE_LAUNCHER];
        [self setMinDamage:10];
        [self setMaxDamage:10];
        [self setRange:10];
    }
    
    return self;
}

@end
