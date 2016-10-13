//
//  Person.h
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * @description : 사람을 나타내는 클래스
 *
 *
 *
 *
 */
@interface Person : NSObject

///사람이름 입니다.
@property id name;
///성별입니다.
@property id sex;
///나이 입니다.
@property id age;


/// @desc 걷는 메소드 입니다.
- (id)walk;
/// @desc 달리는 메소드 입니다.
- (id)run;
/**
 * 특정 목적지로 달려갑니다.
 * @param direction 방향
 * @param speed 속력
 */
- (id)runTo:(id)direction bySpeed:(id)speed;

/// @desc 잠자는 메소드 입니다.
- (id)sleep;

/**
 * @desc 언제 어디서 잠을 잡니다.
 * @param where 장소
 * @param when 때
 * @return 반환은 나중에 배웁니다.
 */
- (id)sleepAt:(id)where when:(id)when;


- (id)speak:(id)language;
/**
 * someone에게 말을 합니다.
 * @param someone 말하는대상 
 * @param topic 대화주제 
 * @param language 사용언어
 * @return 반환은 나중에 배웁니다.
 * @author jwr
 * @version 0.1
 */
- (id)speakTo:(id)someone topic:(id)topic language:(id)language;


- (id)drink:(id)type;
- (id)eat:(id)food;
- (id)smell:(id)what;


- (id)think:(id)what;
- (id)study:(id)subject;
- (id)make:(id)what;



@end
