//
//  Person.m
//  Example0923
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Person.h"

@implementation Person
//  초기화 메서드 구현 instancetype을 쓴다
- (instancetype)initWithName:(NSString *)name
                  isHandsome:(BOOL)isHandsome
{
    self = [super init];
    
    self.name = name;
    self.isHandsome = isHandsome;
    
    return self;
}

- (instancetype)initWithName:(NSString *)name
                         age:(NSInteger)age
{
    
    self = [super init];
    
    self.name = name;
    self.age = age;
    return self;
}

- (instancetype)initWithName:(NSString *)name
                     address:(NSString *)address
{
        self = [super init];
    
    self.name = name;
    self.address = address;
    return self;
}

- (instancetype)initWithAge:(NSInteger)age
                    address:(NSString *)address
                        sex:(NSString *)sex
{
    self = [super init];
    
    self.age = age;
    self.address = address;
    self.sex = sex;
    return self;
}
@end
