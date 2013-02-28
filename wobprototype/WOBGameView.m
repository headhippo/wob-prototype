//
//  WOBGameView.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import "WOBGameView.h"
#import "SimpleAudioEngine.h"
#import "WOBMainMenu.h"
#import "WOBGame.h"
#import "WOBMap.h"

@implementation WOBGameView

static WOBGame* _game = nil;

+ (void)setGame:(WOBGame*)game {
    _game = game;
}

+ (CCScene*)scene {
    CCScene *scene = [CCScene node];
    [scene addChild:[WOBGameView node]];
    return scene;
}

-(id) init {
    if( (self=[super init]) ) {
        CCSprite* mapSprite = (CCSprite*)_game.map;
        [mapSprite setPosition:ccp(240, 160)];
        
        CCSprite* botSprite = (CCSprite*)[_game.participatingBots objectAtIndex:0];
        [botSprite setPosition:[(NSValue*)[_game.map.spawnPoints objectAtIndex:0] CGPointValue]];
        
        [CCMenuItemFont setFontName:@"AmericanTypewriter"];
        [CCMenuItemFont setFontSize:18];
        
        CCMenuItem *mainMenuItem = [CCMenuItemFont itemWithString:@"MAIN MENU" target:self selector:@selector(displayMainMenu)];
        
        CCMenu *mainMenuMenu = [CCMenu menuWithItems:mainMenuItem, nil];
        [mainMenuMenu setPosition:ccp(75, 25)];
        
        [self addChild:mapSprite z:0];
        [self addChild:botSprite z:1];
        [self addChild:mainMenuMenu z:2];
        
        if (![[SimpleAudioEngine sharedEngine] isBackgroundMusicPlaying]) {
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"Battle.caf"];
        }
    }
    
    return self;
}

-(void) displayMainMenu {
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[WOBMainMenu scene]]];
}

@end
