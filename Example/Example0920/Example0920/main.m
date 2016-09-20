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
    Person *you = [[Person alloc] init];
    Person *she = [[Person alloc] init];
    Person *he = [[Person alloc] init];
    Person *mike = [[Person alloc] init];
    
    
    Warrior *jack = [[Warrior alloc] init];
    Warrior *black = [[Warrior alloc] init];
    Warrior *sword = [[Warrior alloc] init];
    Warrior *wind = [[Warrior alloc] init];
    
    
    
    Wizard *rose = [[Wizard alloc] init];
    Wizard *max = [[Wizard alloc] init];
    Wizard *staff = [[Wizard alloc] init];
    Wizard *frozen = [[Wizard alloc] init];
    
    return 0;
}
