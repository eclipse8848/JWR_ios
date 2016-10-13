//
//  Warrior.m
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (id) physicalAttack:(id)to {
    NSLog(@"%@에게 물리공격을 가합니다.", to);
    return nil;
}
- (id) jump:(id)to {
    NSLog(@"%@에게로 점프 합니다.", to);
    return nil;
}

@end
