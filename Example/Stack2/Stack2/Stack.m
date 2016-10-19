//
//  Stack.m
//  Stack2
//
//  Created by 노정우 on 2016. 10. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Stack.h"
@interface Stack()
@property (strong) NSMutableArray *data;
@end
@implementation Stack
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.data = [[NSMutableArray alloc] init];
        _count = 0;
    }
    return self;
}
- (void)push:(id)anObject {
    [self.data addObject:anObject];
    _count++;
}

- (id)pop {
    id obj = nil;
    if ([self.data count]) {
        obj = [self.data lastObject];
        [self.data removeLastObject];
        _count = self.data.count;
    }
    return obj;
}

- (void)clear {
    [self.data removeAllObjects];
    _count = 0;
}
@end
