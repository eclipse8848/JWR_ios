//
//  Wizard.m
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"
@implementation Wizard

- (id)magicalAttackTo:(Warrior *)someCharacter {
    //마법 공격으로 전사의 체력을 깎습니다.
    
    //전사의 이전체력
    NSInteger originHealth = someCharacter.health;
    
    //공격
    someCharacter.health = originHealth - self.magicalPower;
    
    //마나의 변화량
    NSInteger originMana = self.mana;
    self.mana = originMana - 30;
    
    //마법사가 전사에게 마법공격을 가해 XX의 데미지를 입혔습니다. 전사의 체력이 XX에서 XX로 변경되었습니다.
    NSLog(@"마법사가 전사에게 마법공격을 가해 %lu의 데미지를 입혔습니다. 전사의 체력이 %ld 에서 %ld로 변경되었습니다.",self.magicalPower, originHealth, someCharacter.health);
    NSLog(@"마법사의 마나가 %ld에서 %ld로 변화되었습니다.", originMana, self.mana);
    return nil;
}
- (id)physicalAttackTo:(Warrior *)someCharacter {
    
    NSLog(@"%@가 %@를 때리려고 했는데, 빗나갔습니다.",self.name, someCharacter.name);
    return nil;
}


- (id)blinkTo:(Warrior *)someWhere {
    //현재위치에서 전사의 뒤로 이동합니다.
    
    //현재위치
    NSString *originLocation = self.location;
    self.location = @"전사의뒤";
    //이동
    
    //마법사가 순간이동을 하여 현재위치에서 xx로 이동하였습니다.
    NSLog(@"마법사가 순간이동을 하여 %@에서 %@로 이동하였습니다.", originLocation, self.location);
    return nil;
}

@end
