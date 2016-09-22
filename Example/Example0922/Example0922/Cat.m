//
//  Cat.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (id)cry {
    [super cry];
    NSLog(@"고양이 %@가 야옹하고 웁니다.", self.name);
    return nil;
}
@end
