//
//  Node.h
//  Example0928
//
//  Created by 노정우 on 2016. 9. 28..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property NSInteger value;

@property Node *next;
@property Node *previous;

@property NSInteger index;

@end
