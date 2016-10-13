//
//  StackTest.h
//  StackTest
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackTest : NSObject

- (void)push:(id)data;
- (id)pop;
- (BOOL)isEmpty;
@property NSMutableArray *stack;

@end
