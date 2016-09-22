//
//  GameCharacter.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "GameCharacter.h"

@implementation GameCharacter

- (id)physicalAttackTo:(GameCharacter *)someone {
    
    NSLog(@"%@가 %@에게 물리공격을 가합니다.", self.name, someone.name);
    
    return nil;
}

@end
