//
//  main.m
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
int main(int argc, const char * argv[]) {
    
//  타입 변수이름 = 값;
    Warrior *jack = [[Warrior alloc] init];
    jack.name = [[NSString alloc] initWithUTF8String:"전사"];//@"전사" 라고 축약하여씀
    jack.level = 15;
    jack.health = 200;
    jack.mana = 50;
    jack.physicalPower = 150;
    jack.magicalPower = -150;
    jack.isAlive = YES;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //objective-c 의 Boolean타입 true & false 가 아닌 yes & no 로 정의
    BOOL isYagomHandsome = YES;
    BOOL compareResult = NO;
    
    //정수형 타입 signed
    NSInteger signedInteger = -100;
    NSInteger twoHundred = 200;
    
    //부호가 없는 정수형 타입
    NSUInteger unsignedInteger = 100;
    NSUInteger threeHundred = 300;
    //부호가 없는 정수형 타입에 부호를 쓸 경우?
    NSUInteger unsignedTest = -100;
    
    compareResult = (twoHundred < threeHundred);
    
    //실수형 숫자 타입
    CGFloat height = 200.3;
    CGFloat weight = 100.5;
    
    //문자 하나만을 표현하는 타입 ASCII코드값으로 변수에 들어간다.
    char someCharacter = 'a';
    
    
    //value type의 경우 아래와 같이 twoHundre의 값이 바뀌지 않는다.
    NSInteger anotherNumber = twoHundred;
    anotherNumber = 1000;
    
    
    /* *:객체형 숫자 타입 NSNumber *sumNumberObject = @100; (alloc 해서 쓰는 것들은 *붙임)
       *:레퍼런스 타입(주소를 참조한다하여)  없을경우:value타입(값을 그대로 가지고 있다고 하여)*/
    NSNumber *sumNumberObject = [[NSNumber alloc] initWithInt:100];
    
    //id타입은 모든 객체 타입을 수용한다.
    id anyObject = @100;
    anyObject = [[NSObject alloc] init];

    return 0;
}
