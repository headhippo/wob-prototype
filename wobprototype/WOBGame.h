//
//  WOBGame.h
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WOBMap;

@interface WOBGame : NSObject

@property (nonatomic, strong) NSString *gameId;
@property (nonatomic, assign) NSInteger state;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) NSInteger round;
@property (nonatomic, strong) WOBMap *map;
@property (nonatomic, assign) NSInteger numberOfPlayers;
@property (nonatomic, assign) NSInteger numberOfTeams;
@property (nonatomic, assign) NSInteger maxNumberOfPlayers;
@property (nonatomic, assign) NSInteger maxNumberOfTeams;
@property (nonatomic, assign) NSInteger maxCommandsPerTurn;
@property (nonatomic, assign) NSInteger maxMinutesPerTurn;
@property (nonatomic, assign) NSInteger maxNumberOfRounds;
@property (nonatomic, strong) NSMutableArray *participatingUsers;
@property (nonatomic, strong) NSMutableArray *winningUsers;
@property (nonatomic, strong) NSMutableArray *losingUsers;
@property (nonatomic, strong) NSMutableArray *participatingBots;
@property (nonatomic, strong) NSMutableArray *winningBots;
@property (nonatomic, strong) NSMutableArray *losingBots;
@property (nonatomic, strong) NSMutableArray *rounds;

@end
