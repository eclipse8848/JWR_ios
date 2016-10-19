//
//  Stack.h
//  Stack2
//
//  Created by 노정우 on 2016. 10. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject
@property (assign,readonly) NSInteger count;

- (void)push: (id)anObject;
- (id)pop;
- (void)clear;

@end
