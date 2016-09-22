//
//  Teacher.h
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Person.h"
#import "Student.h"
@interface Teacher : Person

@property NSString *subject;

- (id)teach:(Student *)someone;


@end
