//
//  Person.h
//  Example0927
//
//  Created by 노정우 on 2016. 9. 27..
//  Copyright © 2016년 노정우. All rights reserved.
//
#import <Foundation/Foundation.h>

typedef struct character {
    CGFloat height;
    CGFloat weight;
}character;


@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property character info;
@end
