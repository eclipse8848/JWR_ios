//
//  Stack.m
//  Stack
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Stack.h"

@implementation Stack
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stack = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)push:(id)data {
    [self.stack addObject:data];
}

- (id)pop {
    id tempData = [self.stack lastObject];
    [self.stack removeLastObject];
    return tempData;
}

@end
