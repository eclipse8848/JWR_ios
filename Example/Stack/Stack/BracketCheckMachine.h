//
//  BracketCheckMachine.h
//  Stack
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Stack;
@interface BracketCheckMachine : NSObject

@property Stack *stack;

- (BOOL)bracketCheck:(NSString *)data;
@end
