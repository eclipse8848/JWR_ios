//
//  main.m
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {

    // <데이터타입> *<변수이름> = <객체의 주소>; <--객체 만들기
    Person *me = [[Person alloc] init];
    // 프로퍼티 값을 설정하는 코드(set)
    me.name = @"jeongwoo";
    me.sex = @"male";
    me.age = @"32";
    
    Person *you = [[Person alloc] init];
    you.name = @"yagom";
    you.sex = @"male";
    you.age = @"15";
    
    Person *she = [[Person alloc] init];
    she.name = @"jenny";
    she.sex = @"female";
    she.age = @"22";
    
    Person *he = [[Person alloc] init];
    he.name = @"allen";
    he.sex = @"male";
    he.age = @"14";
    
    
    
    Warrior *jack = [[Warrior alloc] init];
    jack.health = @"300";
    jack.mana = @"10";
    jack.physicalPower = @"30";
    jack.magicalPower = @"10";
    
    
    Wizard *rose = [[Wizard alloc] init];
    rose.health = @"10000";
    rose.mana = @"150000";
    rose.physicalPower = @"10";
    rose.magicalPower = @"350000";
    
    
    
    //get 프로퍼티의 값을 가져와본다.
    NSLog(@"Her name is %@", she.name);
    NSLog(@"Her name is %@, sex: %@", she.name, she.sex);
    NSLog(@"Her age is %@", she.age);
    
    she.age = @"25";
    NSLog(@"Her age is %@", she.age);
    NSLog(@"\nHer name is %@ \nsex: %@ \nage: %@", she.name, she.sex, she.age);
    
    me.age = she.age;
    NSLog(@"\nMy name is %@ \nsex: %@ \nage: %@", me.name, me.sex, me.age);
    
    NSLog(@"Your name is %@  sex: %@  age: %@", you.name, you.sex, you.age);
    
    
    return 0;
}
