//
//  Archer.h
//  DrawingStructure
//
//  Created by 노정우 on 2016. 9. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Archer : NSObject

@property id name;
@property id sex;
@property id strong;
@property id intelligence;
@property id agility;
@property id hp;
@property id stamina;

-(id)walk;
-(id)attack;
-(id)run;
-(id)headShot;

@end
