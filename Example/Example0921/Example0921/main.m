//
//  main.m
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Cat.h"
int main(int argc, const char * argv[]) {
    
    // 타입 변수이름 = 값;
    Warrior *jack = [[Warrior alloc] init];
    jack.name = [[NSString alloc] initWithUTF8String:"jack"];//@"jack" 라고 축약하여씀
    jack.level = 15;
    jack.health = 2000;
    jack.mana = 50;
    jack.physicalPower = 150;
    jack.magicalPower = -150;
    jack.isAlive = YES;
    
    Wizard *rose = [[Wizard alloc] init];
    rose.name = @"rose";
    rose.level = 15;
    rose.health = 1000;
    rose.mana = 200;
    rose.physicalPower = -150;
    rose.magicalPower = 150;
    rose.isAlive = YES;
    rose.location = @"전사의앞";
    
    Cat *kitty = [[Cat alloc] init];
    kitty.name = @"키티";
    kitty.color = @"검은";
    [kitty cryAt:jack];
    
    
    [jack physicalAttackTo:rose];
    [rose physicalAttackTo:jack];
    NSLog(@"마법사의 체력 %ld 남음",rose.health);
    
    [rose magicalAttackTo:jack];
    NSLog(@"전사의 체력 %ld 남음",jack.health);
    
    [rose blinkTo:@"전사의뒤"];
    
    
    
    // objective-c 의 Boolean타입 true & false 가 아닌 yes & no 로 정의
    BOOL isYagomHandsome = YES;
    BOOL compareResult = NO;
    
    // 정수형 타입 signed
    NSInteger signedInteger = -100;
    NSInteger twoHundred = 200;
    
    // 부호가 없는 정수형 타입
    NSUInteger unsignedInteger = 100;
    NSUInteger threeHundred = 300;
    
    // 실수형 숫자 타입
    CGFloat height = 200.3;
    CGFloat weight = 100.5;
    
    // 문자 하나만을 표현하는 타입 ASCII코드값으로 변수에 들어간다.
    char someCharacter = 'a';
    
    
    // value type의 경우 아래와 같이 twoHundred의 값이 바뀌지 않는다.
    NSInteger anotherNumber = twoHundred;
    anotherNumber = 1000;
    
    
    /* *:객체형 숫자 타입 NSNumber *sumNumberObject = @100; (alloc 해서 쓰는 것들은 *붙임)
       *:레퍼런스 타입(주소를 참조한다하여)  없을경우:value타입(값을 그대로 가지고 있다고 하여)*/
    NSNumber *sumNumberObject = [[NSNumber alloc] initWithInt:100]; //@100;
    
    
    // id타입은 모든 객체 타입을 수용한다.
    id anyObject = @100;
    anyObject = [[NSObject alloc] init];
    

    
    
    
    
    
    // 형식지정자 - format specifier
    
    // 정수타입 - 부호가 있는 32bit 정수타입 > 10진수 (%d)
    // 정수타입 - 부호가 있는 64bit 정수타입 > 10진수 (%ld)
    NSLog(@"jack's physicalPower : %ld", jack.health);
    
    
    // 정수타입 - 부호가 없는 32bit 정수타입 > 10진수 (%u)
    // 정수타입 - 부호가 없는 64bit 정수타입 > 10진수 (%lu)
    NSLog(@"jack's physicalPower : %lu", jack.physicalPower);
    
    // 정수타입 (16진수) (%lx)
    NSLog(@"physical power(16진수) : %lx", jack.health);
    // 정수타입 (8진수) (%lo)
    NSLog(@"physical power(8진수) : %lo", jack.health);
    
    // 부호가 없는 정수형 타입에 부호를 쓸 경우??
    NSUInteger unsignedTest = -100;
    // -->>오버플로우 발생 최대크기가 표현된다. unsigned Integer은 0,1을 64개밖에표현 못함
    NSLog(@"unsignedTest: %lu", unsignedTest);
    
    
    // 실수 타입 - 32bit 실수 타입 (%f)
    // 실수 타입 - 64bit 실수 타입 (%lf)
    NSLog(@"float value : %lf", height);
    
    // 불리언 타입 (%d)
    NSLog(@"Boolean value YES : %d", YES);
    NSLog(@"Boolean value NO : %d", NO);
    NSLog(@"compareResult = %d", compareResult);
    
    // 캐릭터 타입 (%c)
    NSLog(@"character : %c %c %c", 'a', 'b', 'c');
    
    // 줄바꿈 (\n)
    NSLog(@"줄을 바꾸어 \n봅시다.");
    // 탭 (\t)
    NSLog(@"탭을넣어 \t봅시다.");
    
    // %를 찍고 싶을 경우 (%%)
    NSLog(@"공격력이 50%% 증가하였습니다.");
    
    // 주소값을 보고 싶을 경우 (%p)
    NSLog(@"jack object : %@, memory address : %p", jack, jack);
    //---------컴퓨터에는 0과1로 정보가 저장되어 있기 때문에 우리가 형식지정자를 지정함으로써 사람에게 유의미한 정보로 변환함
    
    
    
    
    // 응용 해보기
    NSLog(@"잭의 체력은 %ld 이고, \n잭의 물리공격력은 %lu이다.", jack.health, jack.physicalPower);
    
    
    
    NSLog(@"%@는 jack의이름", jack.name);
    
    
    
    // %-5ld
    // %-04ld
    // %+3ld
    // %5.2f
    // %-10.3f
    // %10.0f 들의 의미를 아라보자
    
    
    // (https://goo.gl/emGQfp) String Programming Guide
    
    
    
    
    
    return 0;
}
