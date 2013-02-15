//
//  WOBTurn.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBTurn.h"
#import "WOBConstants.h"

@implementation WOBTurn

- (id) init {
    if ( (self=[super init]) ) {
        [self setType:COMMAND_TYPE_TURN];
    }
    
    return self;
}

@end
