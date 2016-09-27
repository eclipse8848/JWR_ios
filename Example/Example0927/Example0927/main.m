//
//  main.m
//  Example0927
//
//  Created by 노정우 on 2016. 9. 27..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger a = 4;
        NSInteger *b = &a;
        
        NSLog(@"b = %ld", *b);
        
        
        
    }
    return 0;
}
