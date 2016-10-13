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
    //메서드를 호출한다 or 메시지를 보낸다.
    [me run];
    [me walk];
    [me sleep];
    //매서드와 매개변수 호출
    [me eat:@"사과"];
    [me speak:@"영어"];
    [me drink:@"콜라"];
    
    Person *you = [[Person alloc] init];
    you.name = @"lion";
    [me eat:you.name];
    
    Person *she = [[Person alloc] init];
    she.name = @"jenny";
    she.sex = @"female";
    she.age = @"22";
    [me runTo:she bySpeed:@"40"];
    [me runTo:she.name bySpeed:@"100"];
    [me speakTo:she.name topic:@"컴퓨터" language:@"한국"];
    [me speakTo:she.name topic:@"요리" language:@"스페인"];
    
    [she make:@"나무로보트"];
    [she sleepAt:@"침대" when:@"저녁10"];
    [me think:she.name];
    [she smell:me.name];
    
    
    
    //get 프로퍼티의 값을 가져와본다.
    NSLog(@"Her name is %@", she.name);
    NSLog(@"Her name is %@, sex: %@", she.name, she.sex);
    NSLog(@"Her age is %@", she.age);
    
    //프로퍼티 값을 변경후 가져와본다.
    she.age = @"25";
    NSLog(@"Her age is %@", she.age);
    NSLog(@"\nHer name is %@ \nsex: %@ \nage: %@", she.name, she.sex, she.age);
    
    
    //객체에게 이런이런 일을 해달라 명령함.
    [she sleep];
    [she walk];
    [she run];
    
    //객체끼리의 상호작용
    [me runTo:she.name bySpeed:@"35"];
    
    //Wizard클래스 프로퍼티값 정의
    Wizard *lego = [[Wizard alloc] init];
    lego.health = @"100";
    lego.mana = @"350";
    lego.physicalPower = @"20";
    lego.magicalPower = @"1000";
    
    //Wizard클래스 객체의 프로퍼티 값 확인
    NSLog(@"lego's health: %@ \nlego's mana: %@ \nlego's physicalPower: %@ \nlego's magicalPower: %@",
          lego.health, lego.mana, lego.physicalPower, lego.magicalPower);
    
    //Wizard 클래스에서 생성된 객체의 매서드 호출 및 매개변수 값을 더한 메소드 호출
    [lego windStorm:she.name];
    [lego magicalAttack:@"영수"];
    [lego heal:me.name howmuch:@"750"];
    
    Warrior *jacks = [[Warrior alloc] init];
    jacks.health = @"500";
    jacks.mana = @"30";
    jacks.physicalPower = @"1500";
    jacks.magicalPower = @"50";
    
    NSLog(@"jacks's health: %@ \n mana: %@ \n physicalPower: %@ \n magicalPower: %@",
          jacks.health, jacks.mana, jacks.physicalPower, jacks.magicalPower);
    
    //Wizard 클래스에서 생성된 객체와 Warrior 클래스에서 생성된 객체 간의 상호작용
    [lego windStorm:jacks];
    [jacks jump:lego];
    [jacks physicalAttack:lego];
    
    
    

    return 0;
}
