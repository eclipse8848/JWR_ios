//
//  Person.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Person.h"
#import "Animal.h"
@implementation Person

- (id)eat {
    
    NSLog(@"먹습니다.");
    return nil;
}
- (id)adopt:(Animal *)someAnimal {
    
    NSLog(@"%@가 동물이름 %@를 입양했습니다.", self.name, someAnimal.name);
    return nil;
}
@end
