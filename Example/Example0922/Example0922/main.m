//
//  main.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Cat.h"
#import "UniversityStudent.h"
int main(int argc, const char * argv[]) {
    
    Warrior *jason = [[Warrior alloc] init];
    jason.health = 1000;
    jason.physicalPower = 100;
    [jason physicalAttackTo:@"rose"];
    
    Cat *leo = [[Cat alloc] init];
    leo.name = @"레오";
    leo.color = @"검은";
    
    [leo cryTo:@"rose"];
    
    UniversityStudent *mike = [[UniversityStudent alloc] init];
    mike.name = @"마이크";
    mike.age = 25;
    mike.grade = 3;
    mike.major = @"BA";
    
    NSLog(@"\nmike의 이름은: %@ \n나이는: %ld \n그레이드는: %ld \n전공은: %@ 입니다.", mike.name, mike.age, mike.grade, mike.major);
    
    return 0;
}
