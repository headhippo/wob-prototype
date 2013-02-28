//
//  WOBMainMenu.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import "WOBMainMenu.h"
#import "SimpleAudioEngine.h"
#import "WOBGameServer.h"
#import "WOBCreateGameRequest.h"
#import "WOBCreateGameResponse.h"

#import "WOBGameView.h"

@implementation WOBMainMenu

+ (CCScene*)scene {
    CCScene *scene = [CCScene node];
    [scene addChild:[WOBMainMenu node]];
    return scene;
}

-(id) init {
    if( (self=[super init]) ) {
        CCSprite *mainMenuBackgroundSprite = [CCSprite spriteWithFile:@"MainMenuBackground.png"];
        [mainMenuBackgroundSprite setPosition:ccp(240, 160)];
        
        [CCMenuItemFont setFontName:@"AmericanTypewriter"];
        [CCMenuItemFont setFontSize:26];
        
        CCMenuItem *accountItem = [CCMenuItemFont itemWithString:@"ACCOUNT" target:self selector:@selector(account)];
        CCMenuItem *createGameItem = [CCMenuItemFont itemWithString:@"CREATE GAME" target:self selector:@selector(createGame)];
        CCMenuItem *continueGameItem = [CCMenuItemFont itemWithString:@"CONTINUE GAME" target:self selector:@selector(continueGame)];
        CCMenuItem *garageItem = [CCMenuItemFont itemWithString:@"GARAGE" target:self selector:@selector(garage)];
        CCMenuItem *storeItem = [CCMenuItemFont itemWithString:@"STORE" target:self selector:@selector(store)];
        
        CCMenu *menu = [CCMenu menuWithItems:accountItem, createGameItem, continueGameItem, garageItem, storeItem, nil];
        [menu alignItemsVerticallyWithPadding:7];
        [menu setPosition:ccp(330, 110)];
        
        [self addChild:mainMenuBackgroundSprite z:0];
        [self addChild:menu z:1];
        
        if (![[SimpleAudioEngine sharedEngine] isBackgroundMusicPlaying]) {
            [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"Menu.caf"];
        }
    }
    
    return self;
}

-(void) account {
    
}

-(void) createGame {
    [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
    
    WOBCreateGameRequest* request = [[WOBCreateGameRequest alloc] init];
    WOBCreateGameResponse* response = (WOBCreateGameResponse*)[[WOBGameServer server] callGameServer:request];
    
    [WOBGameView setGame:response.game];
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[WOBGameView scene]]];
}

-(void) continueGame {
    
}

-(void) garage {
    
}

-(void) store {
    
}

@end
