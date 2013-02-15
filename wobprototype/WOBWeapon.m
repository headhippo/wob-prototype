//
//  WOBWeapon.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import "WOBWeapon.h"


@implementation WOBWeapon

@synthesize weaponId, model, name, level, type, minDamage, maxDamage, range;

- (id) initWithFile:(NSString*)filename {
    if ( (self=[super initWithFile:filename]) ) {
        [self setLevel:1];
    }
    
    return self;
}

@end
