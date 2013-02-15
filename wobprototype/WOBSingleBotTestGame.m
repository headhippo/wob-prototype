//
//  WOBSingleBotTestGame.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBSingleBotTestGame.h"
#import "WOBConstants.h"
#import "WOBBasicMap.h"

@implementation WOBSingleBotTestGame

- (id) init {
    if ( (self=[super init]) ) {
        [self setGameId:@"game1"];
        [self setState:GAME_STATE_IN_PROGRESS]; // single player game, no need to wait on players, go straight to in progress
        [self setType:GAME_TYPE_SINGLE_BOT_TEST];
        [self setMap:[WOBBasicMap sprite]];
        [self setNumberOfPlayers:1];
        [self setNumberOfTeams:0];
        [self setMaxNumberOfPlayers:1];
        [self setMaxNumberOfTeams:0];
        [self setMaxCommandsPerTurn:5];
        [self setMaxMinutesPerTurn:-1];
        [self setMaxNumberOfRounds:50];
        [self setRounds:[NSMutableArray arrayWithCapacity:50]];
    }
    
    return self;
}

@end
