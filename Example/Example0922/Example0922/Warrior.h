//
//  Warrior.h
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

//나는 GameCharacter클래스의 프로퍼티나 메소드를 상속 받겠습니다.
@interface Warrior : GameCharacter

- (id)jumpTo:(NSString *)location;
- (id)smashTo:(id)someone;

@end
