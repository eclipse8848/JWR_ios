//
//  Wizard.h
//  Review0922
//
//  Created by 노정우 on 2016. 9. 23..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "GameCharacter.h"

@interface Wizard : GameCharacter

@property NSInteger mana;

- (id)blizzardTo:(GameCharacter *)someCharacter;

@end
