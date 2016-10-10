//
//  main.m
//  SortPracticeSecond
//
//  Created by 노정우 on 2016. 10. 9..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray *data = @[@23, @1, @9, @10, @5, @3, @12, @15, @1];
        Sort *test = [[Sort alloc] init];
        
        NSArray *selectionResult = [test selectionSort:data];
        NSArray *insertionResult = [test insertionSort:data];
        NSArray *bubbleResult = [test bubbleSort:data];
        NSArray *mergeResult = [test mergeSort:data];
        NSArray *quickResult = [test quickSort:data];
        
        NSLog (@"selectionSort result: %@\n---------------------", selectionResult);
        NSLog (@"insertionSrot result: %@\n---------------------", insertionResult);
        NSLog (@"bubble result: %@\n---------------------", bubbleResult);
        NSLog (@"merge result: %@\n---------------------", mergeResult);
        NSLog (@"quick result: %@\n---------------------", quickResult);
        
    }
    return 0;
}
