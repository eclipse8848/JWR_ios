//
//  Warrior.h
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 * 근접 싸움꾼 입니다.
 * 물리공격력이 높고 마법공격력이 낮습니다.
 * 전사가 가진 능력은 또 뭐가 있을까
 * @author jwr
 * @version 0.1
 */
@interface Warrior : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;

/**
 * to에게 물리공격을 가합니다.
 * @param to 공격을 당할 대상
 * @return 반환은 나중에 배웁니다.
 * @author jwr
 * @version 0.1
 */
- (id)physicalAttack:(id)to;
/**
 * to에게 점프합니다.
 * @param to 점프 목적대상
 * @return 반환은 나중에 배웁니다.
 * @author jwr
 * @version 0.1
 */
- (id)jump:(id)to;

@end
