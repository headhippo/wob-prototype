//
//  WOBGameServer.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WOBServerRequest;
@class WOBServerResponse;

@interface WOBGameServer : NSObject

+ (WOBGameServer*) server;

- (WOBServerResponse*) callGameServer:(WOBServerRequest*)request;

@end
