//
//  Person.m
//  Example0927
//
//  Created by 노정우 on 2016. 9. 27..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)setHeight:(CGFloat)height weight:(CGFloat)weight {
    
    character tempInfo = {height, weight};
    self.info = tempInfo;
}

- (character)personInfo {
    
    return self.info;
}

@end
