//
//  WOBGetUpdatedGameRequest.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBServerRequest.h"

@interface WOBGetUpdatedGameRequest : WOBServerRequest

@property (nonatomic, strong) NSString *gameId;

@end
