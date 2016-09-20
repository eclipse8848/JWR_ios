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

- (id)walk;
- (id)run;
- (id)runTo:(id)direction bySpeed:(id)speed;


- (id)sleep;
- (id)sleepAt:(id)where when:(id)when;


- (id)speak:(id)language;
- (id)speakTo:(id)someone topic:(id)topic language:(id)language;


- (id)drink:(id)type;
- (id)eat:(id)food;
- (id)smell:(id)what;


- (id)think:(id)what;
- (id)study:(id)subject;
- (id)make:(id)what;



@end
