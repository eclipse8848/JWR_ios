//
//  SelectionSort.h
//  SortTest
//
//  Created by 노정우 on 2016. 10. 7..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectionSort : NSObject

@property NSInteger totalCompareCount;
@property NSInteger totalSwitchCount;


- (NSArray *)sort:(NSArray *)list;
- (NSArray *)insertSort:(NSArray *)list;
- (NSArray *)BubbleSort:(NSArray *)list;
- (NSArray *)mergeSort:(NSArray *)list;
@end
