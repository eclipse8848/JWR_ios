//
//  main.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//
//  Learn about inheritance
#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Cat.h"
#import "UniversityStudent.h"
#import "Student.h"
#import "Teacher.h"
int main(int argc, const char * argv[]) {
    
    Warrior *jason = [[Warrior alloc] init];
    jason.name = @"전사철수";
    jason.health = 1000;
    jason.physicalPower = 100;
    
    
    Wizard *rose = [[Wizard alloc] init];
    rose.name = @"법사영희";
    rose.health = 700;
    rose.physicalPower = 50;
    [rose physicalAttackTo:jason];
    
    Wizard *mave = [[Wizard alloc] init];
    mave.name = @"리사";
    mave.health = 650;
    mave.physicalPower = 100;
    
    [rose physicalAttackTo:mave];
    
    
    Cat *leo = [[Cat alloc] init];
    leo.name = @"레오";
    leo.color = @"검은";
    
    [leo cryTo:@"rose"];
    
    UniversityStudent *uniStudent = [[UniversityStudent alloc] init];
    uniStudent.name = @"마이크";
    uniStudent.age = 25;
    uniStudent.grade = 3;
    uniStudent.major = @"BA";
    
    
    Teacher *computerTeacher = [[Teacher alloc] init];
    computerTeacher.name = @"민희";
    computerTeacher.subject = @"컴퓨터";
    
    Student *normalStudent = [[Student alloc] init];
    normalStudent.name = @"정우";
    Student *otherStudent = [[Student alloc] init];
    otherStudent.name = @"영희";
    [computerTeacher teach:normalStudent];
    [computerTeacher teach:otherStudent];
    
    [computerTeacher teach:uniStudent];
    
    [uniStudent adopt:leo];
    
    
    return 0;
}
