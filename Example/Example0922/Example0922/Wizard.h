//
//  Wizard.h
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"
@interface Wizard : GameCharacter

- (id)magicalAttackTo:(GameCharacter *)someone;
- (id)blinkTo:(NSString *)location;

@end
