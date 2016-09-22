//
//  Student.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id)study {
    
    NSLog(@"공부를 합니다.");
    return nil;
    
}
- (id)adopt:(Animal *)someAnimal {
    
    NSLog(@"%@가 동물이름 %@를 입양하는데에 실패하였습니다. 아버지의 극심한반대로..", self.name, someAnimal.name);
    return nil;
}

@end
