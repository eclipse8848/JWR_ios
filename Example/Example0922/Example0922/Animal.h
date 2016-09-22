//
//  Animal.h
//  Example0922
//
//  Created by 노정우 on 2016. 9. 22..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property NSString *name;
@property NSString *color;

- (id)eatFood:(NSString *)something;
- (id)cry;

@end;
