//
//  Sort.m
//  SortPractice
//
//  Created by 노정우 on 2016. 10. 9..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Sort.h"

@implementation Sort


- (NSArray *)selectionSort:(NSArray *)unsortedArray
{
    NSMutableArray *unsortedDataArray = [[NSMutableArray alloc] initWithArray:unsortedArray];
    NSInteger pointerMin;
    NSInteger i,j;
    NSInteger count = unsortedDataArray.count;
    
    for (j = 0; j < count;j++ )
    {
        pointerMin =j;
        for (i = j + 1;i < count; i++)
        {
            if ([unsortedDataArray objectAtIndex:i] < [unsortedDataArray objectAtIndex:pointerMin] )
            {
                pointerMin = i;
            }
        }
        if (pointerMin !=j) 
        {
            [unsortedDataArray exchangeObjectAtIndex:j withObjectAtIndex:pointerMin];
        }
    }
    return unsortedDataArray;
}

-(NSArray *)bubbleSort:(NSArray *)unsortedArray
{
    NSMutableArray *unsortedDataArray = [[NSMutableArray alloc] initWithArray:unsortedArray];
    NSInteger count = unsortedDataArray.count;
    NSInteger i;
    BOOL swapped = TRUE;
    while (swapped)
    {
        swapped = FALSE;
        for (i = 1; i < count; i++)
        {
            if ([unsortedDataArray objectAtIndex:(i-1)] > [unsortedDataArray objectAtIndex:i])
            {
                [unsortedDataArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                swapped = TRUE;
            }
        }
    }
    return unsortedDataArray;
}

- (NSArray *)insertionSort:(NSArray *)unsortedArray
{
    NSMutableArray *unsortedDataArray = [[NSMutableArray alloc] initWithArray:unsortedArray];
    NSInteger count = unsortedDataArray.count;
    NSInteger i, j;
    for(i = 1; i < count; i++)
    {
        j = i;
        while(j > 0 && [[unsortedDataArray objectAtIndex:(j - 1)] integerValue] > [[unsortedDataArray objectAtIndex:j] integerValue])
        {
            [unsortedDataArray exchangeObjectAtIndex:j withObjectAtIndex:(j - 1)];
            j = j - 1;
        }
    }
    return unsortedDataArray;
}


- (NSArray *)mergeSort:(NSArray *)unsortedArray
{
    if(unsortedArray.count < 2)
    {
        return unsortedArray;
    }
    NSInteger middle = unsortedArray.count / 2;
    NSRange left = NSMakeRange(0, middle);
    NSRange right = NSMakeRange(middle, unsortedArray.count - middle);
    NSArray *rightArr = [unsortedArray subarrayWithRange:right];
    NSArray *leftArr = [unsortedArray subarrayWithRange:left];
    
    NSArray *resultArray = [self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]];
    return resultArray;
}

- (NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSInteger right = 0;
    NSInteger left = 0;
    while (left < leftArr.count && right < rightArr.count)
    {
        if ([leftArr objectAtIndex:left] < [rightArr objectAtIndex:right])
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

- (NSArray *)quickSort:(NSArray *)unsortedArray
{
    NSMutableArray *unsortedDataArray = [[NSMutableArray alloc] initWithArray:unsortedArray];
    NSMutableArray *lessArray = [[NSMutableArray alloc] init];
    NSMutableArray *greaterArray = [[NSMutableArray alloc] init];
    if(unsortedDataArray.count < 1)
    {
        return nil;
    }
    NSInteger randomPivotPoint = arc4random() % unsortedDataArray.count;
    NSNumber *pivotValue = [unsortedDataArray objectAtIndex:randomPivotPoint];
    [unsortedDataArray removeObjectAtIndex:randomPivotPoint];
    for(NSNumber *num in unsortedDataArray)
    {
        if(num < pivotValue)
        {
            [lessArray addObject:num];
        }
        else
        {
            [greaterArray addObject:num];
        }
    }
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    return sortedArray;
}

@end
