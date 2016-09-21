//
//  Cat.h
//  Example0921
//
//  Created by 노정우 on 2016. 9. 21..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;
@interface Cat : NSObject

@property NSString *name;
@property NSString *color;

/**
 * @desc 고양이가 전사중하나를 보고 짖는 메소드 입니다.
 * @param someOne 짖을대상
 * @ver 0.2
 * @author jwr
 */
- (id)cryAt:(Warrior *)someOne;

@end
