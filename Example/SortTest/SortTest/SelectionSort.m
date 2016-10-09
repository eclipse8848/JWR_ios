//
//  SelectionSort.m
//  SortTest
//
//  Created by 노정우 on 2016. 10. 7..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort

- (NSArray *)sort:(NSArray *)list {
    
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    self.totalSwitchCount = 0;
    self.totalCompareCount = 0;
    //리스트의 시작부터 끝까지 확인
    for (NSInteger i = 0; i < unSortedList.count; i++) {
        //최소값 구하기
        NSInteger minValue = [unSortedList[i] integerValue];
        NSInteger minIndex = i;
        //i 다음번쨰의 숫자중 가장 작은수를 찾아내기
        for (NSInteger j = i; j < unSortedList.count; j++) {
            
            NSInteger comparValue = [unSortedList[j] integerValue];
            self.totalCompareCount ++;
            if (minValue > comparValue) {
                minValue = comparValue;
                minIndex = j;
            }
        }
        //리스트의 데이터 교환
        //i번째는 minIndex로, minIndex는 i번째로
        if (i != minIndex) {
            [unSortedList exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
            self.totalSwitchCount++;
        }
    }
    
    return unSortedList;
    
}

- (NSArray *)BubbleSort:(NSArray *)list {
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    
    for (NSInteger i = 1; i <unSortedList.count; i++) {
        NSInteger key = [unSortedList[i] integerValue];
        NSInteger j = i - 1;
        while (j >= 0 && key < [unSortedList[j] integerValue]){
            
            [unSortedList exchangeObjectAtIndex:j withObjectAtIndex:j+1];
//            [unSortedList exchangeObjectAtIndex:j withObject:unSortedList[j+1]];
            j--;
        }
    }
        
        
    return unSortedList;
    
}

- (NSArray *)insertSort:(NSArray *)list {
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    
    for (NSInteger i = 1; i <unSortedList.count; i++) {
        NSInteger key = [unSortedList[i] integerValue];
        NSInteger j = i - 1;
        while (j >= 0 && key < [unSortedList[j] integerValue]){
            [unSortedList removeObject:unSortedList[i]];
            [unSortedList insertObject: [NSNumber  numberWithInteger:key] atIndex:j];
            //            [unSortedList exchangeObjectAtIndex:j withObject:unSortedList[j+1]];
            j--;
        }
    }
    
    
    return unSortedList;
    
}
-(NSArray *)mergeSort:(NSArray *)unsortedArray
{
    if (unsortedArray.count < 2)
    {
        return unsortedArray;
    }
    NSInteger middle = unsortedArray.count/2;
    NSRange left = NSMakeRange(0, middle);
    NSRange right = NSMakeRange(middle, unsortedArray.count - middle);
    NSArray *rightArr = [unsortedArray subarrayWithRange:right];
    NSArray *leftArr = [unsortedArray subarrayWithRange:left];
    //Or iterate through the unsortedArray and create your left and right array
    //for left array iteration starts at index =0 and stops at middle, for right array iteration starts at midde and end at the end of the unsorted array
    NSArray *resultArray =[self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]];
    return resultArray;
}

-(NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSInteger right = 0;
    NSInteger left = 0;
    while (left < leftArr.count && right < rightArr.count)
    {
        if ([[leftArr objectAtIndex:left] integerValue] < [[rightArr objectAtIndex:right] integerValue])
        {
            [result addObject:[leftArr objectAtIndex:left++]];
        }
        else
        {
            [result addObject:[rightArr objectAtIndex:right++]];
        }
    }
    NSRange leftRange = NSMakeRange(left, leftArr.count - left);
    NSRange rightRange = NSMakeRange(right, rightArr.count - right);
    NSArray *newRight = [rightArr subarrayWithRange:rightRange];
    NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
    newLeft = [result arrayByAddingObjectsFromArray:newLeft];
    return [newLeft arrayByAddingObjectsFromArray:newRight];
}




@end
