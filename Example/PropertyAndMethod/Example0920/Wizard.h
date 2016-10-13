//
//  Wizard.h
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wizard : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;

- (id)windStorm:(id)to;
- (id)magicalAttack:(id)to;
- (id)heal:(id)to howmuch:(id)point;

@end
