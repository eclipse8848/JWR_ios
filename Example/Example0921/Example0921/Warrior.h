//
//  Warrior.h
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;
@interface Warrior : NSObject

//reference type 이므로 * 붙여줘야합니다.(NSString)
@property NSString *name;
@property NSInteger level;
@property NSInteger health;
@property NSInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;
@property NSString *location;
@property BOOL isAlive;


// parameter type change id -> Wizard *
- (id)physicalAttackTo:(Wizard *)someCharacter;
- (id)magicalAttackTo:(Wizard *)someCharacter;
- (id)jumpTo:(NSString *)someWhere;

@end
