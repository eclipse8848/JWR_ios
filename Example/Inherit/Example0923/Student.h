//
//  Student.h
//  Example0923
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property NSString *school;
@property NSInteger grade;
@property NSString *credit;

- (instancetype)initWithName:(NSString *)name address:(NSString *)address schoolname:(NSString *)school
grade:(NSInteger)grade;

- (instancetype)initWithName:(NSString *)name address:(NSString *)address schoolname:(NSString *)school
                       grade:(NSInteger)grade credit:(NSString *)credit;
@end
