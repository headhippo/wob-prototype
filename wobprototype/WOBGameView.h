//
//  WOBGameView.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class WOBGame;

@interface WOBGameView : CCLayer

+ (void)setGame:(WOBGame*)game;

+ (CCScene*)scene;

@end
