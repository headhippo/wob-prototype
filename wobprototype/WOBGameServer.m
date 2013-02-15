//
//  WOBGameServer.m
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import "WOBGameServer.h"
#import "WOBCreateGameRequest.h"
#import "WOBCreateGameResponse.h"
#import "WOBSubmitTurnRequest.h"
#import "WOBSubmitTurnResponse.h"
#import "WOBGetUpdatedGameRequest.h"
#import "WOBGetUpdatedGameResponse.h"

#import "WOBSingleBotTestGame.h"
#import "WOBBasicBot.h"

@implementation WOBGameServer

static WOBGameServer* server = nil;

+ (WOBGameServer*) server {
    if (server == nil) {
        server = [[WOBGameServer alloc] init];
    }
    
    return server;
}

- (WOBServerResponse*) callGameServer:(WOBServerRequest*)request {
    if (request == nil) {
        return nil;
    } else if ([request isMemberOfClass:[WOBCreateGameRequest class]]) {
        WOBCreateGameResponse* response = [[WOBCreateGameResponse alloc] init];
        
        response.game = [[WOBSingleBotTestGame alloc] init];
        [response.game.participatingBots addObject:[WOBBasicBot sprite]];
        
        return response;
    } else if ([request isMemberOfClass:[WOBSubmitTurnRequest class]]) {
        return nil;
    } else if ([request isMemberOfClass:[WOBGetUpdatedGameRequest class]]) {
        return nil;
    } else {
        return nil;
    }
}

@end
