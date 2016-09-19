//
//  Wizard.h
//  DrawingStructure
//
//  Created by 노정우 on 2016. 9. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wizard : NSObject

//캐릭터의 이름
@property id name;
//캐릭터의 성별
@property id sex;
//게임 케릭터의 힘의 세기 (물리공격 데미지와 정비례)
@property id strong;
//게임 캐릭터의 지능 지수 (마법공격 데미지와 정비례)
@property id intelligence;
//게임 캐릭터의 민첩 지수 (최대 데미지 확률과 정비례)
@property id agility;
//게임 캐릭터의 체력량
@property id hp;
//게임 캐릭터의 마나량
@property id mp;



//걷기
-(id)walk;
//공격하기
-(id)attack;
//달리기
-(id)run;
//적에게 냉기피해를 입히는 광역스킬
-(id)blizzard;

@end
