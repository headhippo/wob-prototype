//
//  WOBRound.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBRound.h"
#import "WOBConstants.h"

@implementation WOBRound

@synthesize state, commands;

- (id) init {
    if ( (self=[super init]) ) {
        [self setState:ROUND_STATE_WAITING];
        [self setCommands:[NSDictionary dictionary]];
    }
    
    return self;
}

@end
