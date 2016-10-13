//
//  main.m
//  Example0928
//
//  Created by 노정우 on 2016. 9. 28..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DoubleLinkedList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DoubleLinkedList *dLink = [[DoubleLinkedList alloc] init];
        [dLink addLastValue:10];
        [dLink addLastValue:9];
        [dLink addLastValue:15];
        [dLink printAllNode];
        NSLog(@"---------------");
        [dLink removeLast];
        [dLink printAllNode];
        
    }
    return 0;
}
