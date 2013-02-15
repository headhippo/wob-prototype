//
//  WOBCommand.h
//  wobprototype
//
//  Created by Mike Cendana on 2/15/13.
//  Copyright (c) 2013 HeadHippo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WOBWeapon;

@interface WOBCommand : NSObject

@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) NSInteger distance;
@property (nonatomic, assign) NSInteger degrees;
@property (nonatomic, strong) WOBWeapon *weapon;

@end
