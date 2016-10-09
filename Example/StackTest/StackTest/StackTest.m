//
//  StackTest.m
//  StackTest
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "StackTest.h"

@implementation StackTest

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
    id objectToPop = [self.stack lastObject];
    [self.stack removeLastObject];
    return objectToPop;
}

- (BOOL)isEmpty {
    if([self.stack count] == 0) {
        return YES;
    }
    return NO;
}
//- (NSString *)bracketTest:(id)data {
//    NSMutableArray *tmpArr = [[NSMutableArray alloc] init];
//    
//    
//}



@end
