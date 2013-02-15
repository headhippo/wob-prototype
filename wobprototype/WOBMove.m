//
//  WOBMove.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBMove.h"
#import "WOBConstants.h"

@implementation WOBMove

- (id) init {
    if ( (self=[super init]) ) {
        [self setType:COMMAND_TYPE_MOVE];
    }
    
    return self;
}

@end
