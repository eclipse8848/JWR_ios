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
    [me runTo:she bySpeed:@"35"];

    

    return 0;
}
