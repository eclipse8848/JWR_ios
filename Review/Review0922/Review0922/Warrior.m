//
//  Warrior.m
//  Review0922
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (id)physicalAttackTo:(GameCharacter *)someCharacter {
    
    NSLog(@"%@ %@ %@가 %@에게 양손으로 물리공격을 합니다.",
          self.job, self.name, someCharacter.job, someCharacter.name);
    return nil;
}

- (id)doubleAttackTo:(GameCharacter *)someCharacter {
    
    NSLog(@"%@ %@가 %@ %@에게 더블어택을 가합니다.",
          self.job, self.name, someCharacter.job, someCharacter.name);
    return nil;
}
@end
