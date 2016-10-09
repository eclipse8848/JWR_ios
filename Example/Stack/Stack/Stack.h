//
//  Stack.h
//  Stack
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

@property NSMutableArray *stack;

- (void)push:(id)data;
- (id)pop;

@end
