//
//  WOBSubmitTurnRequest.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBServerRequest.h"

@interface WOBSubmitTurnRequest : WOBServerRequest

@property (nonatomic, strong) NSString *gameId;
@property (nonatomic, strong) NSMutableArray *commands;

@end
