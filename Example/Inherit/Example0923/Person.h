//
//  Person.h
//  Example0923
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSString *sex;
@property NSInteger age;
@property NSString *mobile;
@property NSString *address;
@property BOOL isHandsome;

// 초기화 메서드 정의
// 이름, 핸섬여부
- (instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome;
// 이름, 나이
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;
// 이름, 도시
- (instancetype)initWithName:(NSString *)name address:(NSString *)address;
// 나이, 도시, 성별
- (instancetype)initWithAge:(NSInteger)age address:(NSString *)adress sex:(NSString *)sex;
@end
