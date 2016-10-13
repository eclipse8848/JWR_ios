//
//  Warrior.m
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"
@implementation Warrior

- (id)physicalAttackTo:(Wizard *)someCharacter {
    //전사의 물리 공격력 만큼 마법사의 체력을 감소시킵니다.
    
    //마법사의 이전 체력
    NSInteger originHealth = someCharacter.health;
    // 공격!!
    someCharacter.health = originHealth - self.physicalPower;
    
    /*전사가 마법사에게 물리공격을 가하여
      XX만큼의 데미지를 입혔습니다.
      마법사의 체력이 XX에서 XX으로 변경되었습니다.*/
    NSLog(@"%@가 %@에게 물리공격을 가하여 %lu만큼의 데미지를 입혔습니다. \n마법사의 체력이 %ld에서 %ld으로 변경되었습니다.",
          self.name, someCharacter.name, self.physicalPower, originHealth, someCharacter.health);
    return nil;
}


@end
