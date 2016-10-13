//
//  main.m
//  StackTest
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringCheckMachine.h"
#import "StackTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        StringCheckMachine *machine = [[StringCheckMachine alloc] init];
        NSInteger i =[machine checkBracketString:@"{[]fadsfds}"];
        NSLog(@"%ld",i);
    }
    return 0;
}
