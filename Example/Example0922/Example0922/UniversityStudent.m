//
//  UniversityStudent.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent

- (id)goMT {
    
    NSLog(@"MT를 갑니다.");
    return nil;
}
- (id)adopt:(Animal *)someAnimal {
    
    NSLog(@"%@가 동물이름 %@를 입양하는데에 실패하였습니다. 기숙사 정책에 의하여..", self.name, someAnimal.name);
    return nil;
}
@end
