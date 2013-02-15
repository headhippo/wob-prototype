//
//  WOBConstants.h
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>

extern int const WEAPON_TYPE_MISSILE_LAUNCHER;

extern int const GAME_STATE_NEW;
extern int const GAME_STATE_IN_PROGRESS;
extern int const GAME_STATE_COMPLETE;
extern int const GAME_STATE_CANCELED;

extern int const GAME_TYPE_SINGLE_BOT_TEST;

extern int const COMMAND_TYPE_MOVE;
extern int const COMMAND_TYPE_TURN;
extern int const COMMAND_TYPE_ATTACK;

extern int const ROUND_STATE_WAITING;
extern int const ROUND_STATE_READY;

extern int const ACHIEVEMENT_TYPE_USER;
extern int const ACHIEVEMENT_TYPE_BOT;

@interface WOBConstants : NSObject

@end
