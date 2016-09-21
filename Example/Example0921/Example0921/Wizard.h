//
//  Wizard.h
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;
@interface Wizard : NSObject

@property NSString *name;
@property NSInteger level;
@property NSInteger health;
@property NSInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property BOOL isAlive;
@property NSString *location;

- (id)physicalAttackTo:(Warrior *)someCharacter;
- (id)magicalAttackTo:(Warrior *)someCharacter;
- (id)blinkTo:(NSString *)someWhere;

@end
