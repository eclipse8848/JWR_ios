//
//  main.m
//  Example0923
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//  초기화 메서드, 

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    
    Person *jack = [[Person alloc] init];
    jack.name = @"잭스";
    jack.age = 30;
    jack.mobile = @"010-2323-4545";
    jack.address = @"홍콩";
    jack.isHandsome = YES;
    
    // 초기화 메서드를 통한 객체 생성
    Person *rose = [[Person alloc] initWithName:@"로즈" isHandsome:YES];
    NSLog(@"rose의 이름은: %@ 핸섬여부는: %d", rose.name, rose.isHandsome);
    
    Person *annie = [[Person alloc] initWithName:@"애니" age:15];
    NSLog(@"annie의 이름은: %@ 나이는: %ld", annie.name, annie.age);
    
    
    
    
    Person *timo = [[Person alloc] initWithName:@"티모" address:@"강원도"];
    Student *mini = [[Student alloc] initWithName:@"미니" address:@"부산" schoolname:@"부산대" grade:2];
    Student *jini = [[Student alloc] initWithName:@"지니" address:@"서울" schoolname:@"서울대" grade:1 credit:@"A"];
    
    NSLog(@"timo의 이름은: %@ 주소는: %@", timo.name, timo.address);
    NSLog(@"mini의 이름은: %@ 주소는: %@ 학교는: %@", mini.name, mini.address, mini.school);
    NSLog(@"jini의 이름은: %@ 주소는: %@ 학교는: %@ 학년은: %ld 학점은: %@", jini.name, jini.address, jini.school, jini.grade, jini.credit);
    
    return 0;
}
