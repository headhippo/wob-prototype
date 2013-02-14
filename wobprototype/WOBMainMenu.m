//
//  WOBMainMenu.m
//  wobprototype
//
//  Created by Mike Cendana on 2/14/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import "WOBMainMenu.h"


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
        [menu alignItemsVerticallyWithPadding:10];
        [menu setPosition:ccp(240, 120)];
        
        [self addChild:mainMenuBackgroundSprite z:0];
        [self addChild:menu z:1];
    }
    
    return self;
}

-(void) account {
    
}

-(void) createGame {
    
}

-(void) continueGame {
    
}

-(void) garage {
    
}

-(void) store {
    
}

@end
