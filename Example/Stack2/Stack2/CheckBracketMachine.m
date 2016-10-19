//
//  CheckBracketMachine.m
//  Stack2
//
//  Created by 노정우 on 2016. 10. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "CheckBracketMachine.h"
#import "Stack.h"
@implementation CheckBracketMachine
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stack = [[Stack alloc] init];
    }
    return self;
}

- (BOOL)checkBracket:(NSString *)str {
    NSMutableArray *checkArray = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < str.length; i++) {
        NSString *strCharacter = [str substringWithRange:NSMakeRange(i, 1)];
        [checkArray addObject:strCharacter];
    }
    for (NSString *strCharacter in checkArray) {
        NSInteger tempInt = [self classifyBracket:strCharacter];
        
        switch (tempInt) {
            case 1:
            {    [self.stack push:strCharacter];
                break;
            }
            case 2:
            {
                NSString *popped = [self.stack pop];
                if (![self checkPairOpenBracket:popped withCloseBracket:strCharacter]) {
                    return NO;
                }
            }
            default:
                break;
        }
        
    }
    if (self.stack.count == 0) {
        return YES;
    }else {
        return NO;
    }
}

- (NSInteger)classifyBracket:(NSString *)bracket {
    if ([bracket isEqualToString:@"["] || [bracket isEqualToString:@"{"] || [bracket isEqualToString:@"("]) {
        return 1;
    }else if ([bracket isEqualToString:@"]"] || [bracket isEqualToString:@"}"] || [bracket isEqualToString:@")"]) {
        return 2;
    }else {
        return 3;
    }
}

- (BOOL)checkPairOpenBracket:(NSString *)openBracket withCloseBracket:(NSString *)closeBracket {
    NSString *convertedBracket;
    if([openBracket isEqualToString:@"["]) {
        convertedBracket = @"]";
    }else if ([openBracket isEqualToString:@"{"]) {
        convertedBracket = @"}";
    }else if ([openBracket isEqualToString:@"("]) {
        convertedBracket = @")";
    }
    
    if ([convertedBracket isEqualToString:closeBracket]) {
        return YES;
    }else {
        return NO;
    }
}
@end
