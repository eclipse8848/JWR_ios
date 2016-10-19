//
//  main.m
//  Stack2
//
//  Created by 노정우 on 2016. 10. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CheckBracketMachine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CheckBracketMachine *machine = [[CheckBracketMachine alloc] init];
        NSInteger i = [machine checkBracket:@"{{[[2]2]}]}"];
        NSLog(@"%ld", i);
    }
    return 0;
}
