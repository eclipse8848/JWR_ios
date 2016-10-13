//
//  Student.m
//  Example0923
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Student.h"

@implementation Student


- (instancetype)initWithName:(NSString *)name address:(NSString *)address schoolname:(NSString *)school
                       grade:(NSInteger)grade{
    self = [super initWithName:name address:address];
    
    /*self.name = name;
    self.address = address; */
    self.school = school;
    self.grade = grade;
    return self;
}

// 이름, 주소, 학교, 학년, 성적
- (instancetype)initWithName:(NSString *)name address:(NSString *)address schoolname:(NSString *)school
                       grade:(NSInteger)grade credit:(NSString *)credit {
    
    self = [self initWithName:name address:address schoolname:school grade:grade];
    
    self.credit = credit;
    return self;
    

}
@end
