//
//  GameCharacter.h
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject

- (id)physicalAttackTo:(GameCharacter *)someone;
- (id)damagedAs:(NSInteger)someone;

@end
