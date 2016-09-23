//
//  Warrior.h
//  Review0922
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "GameCharacter.h"

@interface Warrior : GameCharacter

@property NSInteger rage;

// 기본공격 메소드를 전사클래스에서 재정의 합니다.
- (id)physicalAttackTo:(GameCharacter *)someCharacter;;

- (id)doubleAttackTo:(GameCharacter *)someCharacter;

@end
