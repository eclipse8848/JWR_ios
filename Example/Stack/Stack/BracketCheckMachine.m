//
//  BracketCheckMachine.m
//  Stack
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "BracketCheckMachine.h"

@implementation BracketCheckMachine

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stack = [[Stack alloc] init];
    }
    return self;
}

@end
