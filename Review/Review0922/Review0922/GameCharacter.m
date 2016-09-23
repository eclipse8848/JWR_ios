//
//  GameCharacter.m
//  Review0922
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "GameCharacter.h"

@implementation GameCharacter

- (id)physicalAttackTo:(GameCharacter *)someCharacter {
    
    NSLog(@"%@ %@ 가 %@ 몬스터에게 물리공격을 가합니다.", self.job, self.name, someCharacter.name);
    return nil;
}

- (id)magicalAttackTo:(GameCharacter *)someCharacter {
    
    NSLog(@"%@ %@ 가 %@ 몬스터에게 마법공격을 가합니다.", self.job, self.name, someCharacter.name);
    return nil;
}

@end
