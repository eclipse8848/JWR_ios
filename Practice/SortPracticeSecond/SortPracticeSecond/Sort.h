//
//  Sort.h
//  SortPracticeSecond
//
//  Created by 노정우 on 2016. 10. 9..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sort : NSObject
@property NSArray *unsortedArray;

- (NSArray *)selectionSort:(NSArray *)unsortedArray;
- (NSArray *)bubbleSort:(NSArray *)unsortedArray;
- (NSArray *)insertionSort:(NSArray *)unsortedArray;
- (NSArray *)mergeSort:(NSArray *)unsortedArray;
- (NSArray *)quickSort:(NSArray *)unsortedArray;


@end
