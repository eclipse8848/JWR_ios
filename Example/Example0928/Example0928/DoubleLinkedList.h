//
//  DoubleLinkedList.h
//  Example0928
//
//  Created by 노정우 on 2016. 9. 28..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface DoubleLinkedList : NSObject

@property Node *header;

@property NSInteger lastIndex;

- (void)addLastValue:(NSInteger)value;
- (void)printAllNode;
- (void)removeLast;
@end
