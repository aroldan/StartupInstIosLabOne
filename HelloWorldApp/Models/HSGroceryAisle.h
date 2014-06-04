//
//  HSGroceryAisle.h
//  HelloWorldApp
//
//  Created by Anthony Roldan on 6/4/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSGroceryAisle : NSObject

@property (nonatomic) NSNumber *number;
@property (nonatomic) NSString *name;
@property (nonatomic) NSArray *items;

- (instancetype)initWithName:(NSString *)name andNumber:(NSNumber *)number;

@end
