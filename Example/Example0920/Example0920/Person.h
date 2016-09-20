//
//  Person.h
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property id name;
@property id sex;
@property id age;

-(id)walk;
-(id)run;
-(id)sleep;
-(id)eat;
-(id)speak;

@end
