//
//  Animal.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (id)cry{
    
    NSLog(@"%@가 웁니다.", self.name);
    return nil;
}

@end
