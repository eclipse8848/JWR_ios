//
//  main.m
//  SortTest
//
//  Created by 노정우 on 2016. 10. 7..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectionSort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *tempArr = @[@22,@9,@2,@4,@10,@1,@5,@3,@7];
        SelectionSort *sort = [[SelectionSort alloc] init];
//        NSArray *resultArr = [sort sort:tempArr];
//        NSArray *resultArrSecond = [sort insertSort:tempArr];
//        NSArray *resultArrThird = [sort BubbleSort:tempArr];
//        NSLog(@"sortResult %@", resultArr);
//        NSLog(@"sortResultWithinsertSort %@", resultArrSecond);
//        NSLog(@"sortResultWithBubbleSort %@", resultArrThird);
//        NSLog(@"총 비교횟수는 %ld번 이고, 총 데이터 교환 횟수는 %ld입니다.", sort.totalCompareCount,sort.totalSwitchCount);
        NSArray *resultArrForth = [sort mergeSort:tempArr];
        NSLog(@"sortResultWithMergeSort %@", resultArrForth);
        
    }
    return 0;
}
