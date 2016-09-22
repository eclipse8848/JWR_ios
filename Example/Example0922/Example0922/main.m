//
//  main.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//
//  Learn about inheritance & override & hidden
#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Cat.h"
#import "UniversityStudent.h"
#import "Student.h"
#import "Teacher.h"
#import "Horse.h"
#import "Dog.h"
#import "Elephant.h"
#import "Animal.h"
#import "GameCharacter.h"
int main(int argc, const char * argv[]) {
    

    
    
    
    Cat *leo = [[Cat alloc] init];
    leo.name = @"레오";
    leo.color = @"검은";
    
    
    Person *yagom = [[Person alloc] init];
    yagom.name = @"야곰이";
    
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
    
    [yagom adopt:leo];
    [uniStudent adopt:leo];
    [normalStudent adopt:leo];
    
    
    Dog *sampleDog = [[Dog alloc] init];
    sampleDog.name = @"뽀삐";
    
    Horse *sampleHorse = [[Horse alloc] init];
    sampleHorse.name = @"적토마";
    
    Elephant *sampleElephant = [[Elephant alloc] init];
    sampleElephant.name = @"코돌이";
    
    [leo cry];
    [sampleDog cry];
    [sampleHorse cry];
    [sampleElephant cry];
    
    
    return 0;
}
