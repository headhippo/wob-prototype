//
//  WOBAttack.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBAttack.h"
#import "WOBConstants.h"

@implementation WOBAttack

- (id) init {
    if ( (self=[super init]) ) {
        [self setType:COMMAND_TYPE_ATTACK];
    }
    
    return self;
}

@end
