//
//  GameCharacter.h
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject
//Wizard & Warrior 의 공통 특성을 하나의 클래스를 통해 묶어본다.
@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property NSString *name;
@property NSString *weapon;
@property BOOL isAlive;

- (id)physicalAttackTo:(id)someone;

@end
