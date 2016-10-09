//
//  main.m
//  SortPractice
//
//  Created by 노정우 on 2016. 10. 9..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *tempArr = @[@4, @6, @2, @1, @5, @15, @9, @10, @11];
        Sort *sort = [[Sort alloc] init];
        
        NSArray *mergeSortResult = [sort mergeSort:tempArr];
        NSArray *selectionSortResult = [sort selectionSort:tempArr];
        NSArray *bubbleSort = [sort bubbleSort:tempArr];
        NSArray *insertionSortResult = [sort insertionSort:tempArr];
        NSArray *quickSortResult = [sort quickSort:tempArr];
        NSLog(@"mergeSort result: %@\n----------------------------", mergeSortResult);
        NSLog(@"selectionSort result : %@\n---------------------------", selectionSortResult);
        NSLog(@"bubbleSort result : %@\n----------------------------", bubbleSort);
        NSLog(@"insertionSort result : %@\n---------------------------", insertionSortResult);
        NSLog(@"quickSort result : %@\n---------------------------", quickSortResult);
    }
    return 0;
}
