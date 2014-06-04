//
//  HSGroceryAisle.m
//  HelloWorldApp
//
//  Created by Anthony Roldan on 6/4/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSGroceryAisle.h"

@implementation HSGroceryAisle

- (instancetype)initWithName:(NSString *)name andNumber:(NSNumber *)number
{
    self = [super init];
    if (self) {
        self.name = name;
        self.number = number;
    }
    return self;
}

@end
