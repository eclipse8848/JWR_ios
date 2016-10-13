//
//  Wizard.m
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

- (id) windStorm:(id)to {
    NSLog(@"%@에게 윈드스톰을 가합니다.", to);
    return nil;
}
- (id) magicalAttack:(id)to {
    NSLog(@"%@에게 마법공격을 가합니다.",to);
    return nil;
}
- (id) heal:(id)to howmuch:(id)point {
    NSLog(@"%@를 %@포인트 만큼 치유해 줍니다.", to, point);
    return nil;
}


@end
