//
//  WOBBasicMap.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBBasicMap.h"
#import "WOBConstants.h"

@implementation WOBBasicMap

+(id) sprite {
    return [WOBBasicMap spriteWithFile:@"GameBackground.png"];
}

- (id) initWithFile:(NSString*)filename {
    if ( (self=[super initWithFile:filename]) ) {
        [self setName:@"Basic Map 1"];
        
        [self setSupportedGameTypes:[NSMutableArray arrayWithCapacity:10]];
        [self.supportedGameTypes addObject:[NSNumber numberWithInt:GAME_TYPE_SINGLE_BOT_TEST]];
        
        [self setSpawnPoints:[NSMutableArray arrayWithCapacity:10]];
        [self.spawnPoints addObject:[NSValue valueWithCGPoint:ccp(240, 50)]];
    }
    
    return self;
}

@end
