//
//  GameCharacter.h
//  Review0922
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface GameCharacter : NSObject

@property NSString *name;
@property NSString *sex;
@property NSString *job;
@property NSInteger level;
@property NSInteger health;
@property NSInteger physicalPower;
@property NSInteger magicalPower;

- (id)physicalAttackTo:(GameCharacter *)someCharacter;
- (id)magicalAttackTo:(GameCharacter *)someCharacter;


@end
