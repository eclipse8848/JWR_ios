//
//  GameCharacter.m
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "GameCharacter.h"
// hidden
@interface GameCharacter()
//Wizard & Warrior 의 공통 특성을 하나의 클래스를 통해 묶어본다.
@property NSString *name;
@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property NSString *weapon;
@property BOOL isAlive;

@end

@implementation GameCharacter

- (id)physicalAttackTo:(GameCharacter *)someone {
    
    [someone damagedAs:self.physicalPower];
    
    return nil;
}

- (id)damagedAs:(NSInteger)damage {
    
    self.health =self.health - damage;
    return nil;
}

@end
