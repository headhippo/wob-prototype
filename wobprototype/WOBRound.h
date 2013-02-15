//
//  WOBRound.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WOBRound : NSObject

@property (nonatomic, assign) NSInteger state;
@property (nonatomic, strong) NSMutableDictionary *commands;

@end
