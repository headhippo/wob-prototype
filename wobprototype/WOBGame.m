//
//  WOBGame.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBGame.h"
#import "WOBConstants.h"

@implementation WOBGame

@synthesize gameId, state, type, round, map, numberOfPlayers, numberOfTeams, maxNumberOfPlayers, maxNumberOfTeams;
@synthesize maxCommandsPerTurn, maxMinutesPerTurn, maxNumberOfRounds, rounds;
@synthesize participatingUsers, winningUsers, losingUsers, participatingBots, winningBots, losingBots;

- (id) init {
    if ( (self=[super init]) ) {
        [self setState:GAME_STATE_NEW];
        [self setRound:1];
        
        [self setParticipatingUsers:[NSMutableArray arrayWithCapacity:10]];
        [self setWinningUsers:[NSMutableArray arrayWithCapacity:10]];
        [self setLosingUsers:[NSMutableArray arrayWithCapacity:10]];
        
        [self setParticipatingBots:[NSMutableArray arrayWithCapacity:10]];
        [self setWinningBots:[NSMutableArray arrayWithCapacity:10]];
        [self setLosingBots:[NSMutableArray arrayWithCapacity:10]];
    }
    
    return self;
}


@end
