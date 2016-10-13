//
//  StringCheckMachine.h
//  StackTest
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import  "StackTest.h"

@interface StringCheckMachine : NSObject

@property StackTest *stack;



- (BOOL)checkBracketString:(NSString *)str;
@end
