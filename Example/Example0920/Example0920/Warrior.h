//
//  Warrior.h
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject


//캐릭터의 체력 수치를 나타낸다.
@property id health;
//캐릭터의 마나 수치를 나타낸다.
@property id mana;
//캐릭터의 물리공격 수치를 나타낸다.
@property id physicalPower;
//캐릭터의 마법공격 수치를 나타낸다.
@property id magicalPower;
//캐릭터의 무기 상태를 나타낸다.
@property id weapon;


//이동
-(id)move;
//모든행동 정지
-(id)stop;
//움직임만 정지(제자리 공격 가능)
-(id)hold;
//공격
-(id)attack;

@end
