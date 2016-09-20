//
//  Wizard.m
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard
- (id) attack {
    NSLog(@"공격합니다.");
    return nil;
}

- (id) stop {
    NSLog(@"정지합니다.");
    return nil;
}

- (id) move {
    NSLog(@"이동합니다.");
    return nil;
}

- (id) hold {
    NSLog(@"제자리멈춤!");
    return nil;
}
@end
