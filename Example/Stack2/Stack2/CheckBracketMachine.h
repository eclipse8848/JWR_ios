//
//  CheckBracketMachine.h
//  Stack2
//
//  Created by 노정우 on 2016. 10. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Stack;
@interface CheckBracketMachine : NSObject
@property Stack *stack;

- (BOOL)checkBracket:(NSString *)str;
@end
