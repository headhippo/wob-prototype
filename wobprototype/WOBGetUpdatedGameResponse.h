//
//  WOBGetUpdatedGameResponse.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBServerResponse.h"

@class WOBGame;

@interface WOBGetUpdatedGameResponse : WOBServerResponse

@property (nonatomic, strong) WOBGame *game;

@end
