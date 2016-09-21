//
//  Cat.m
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Cat.h"
#import "Warrior.h"
@implementation Cat

- (id)cryAt:(Warrior *)someOne {
    NSLog(@"%@고양이 %@가 전사 %@을 보고 짖습니다.", self.color, self.name, someOne.name);
    return nil;
}
@end
