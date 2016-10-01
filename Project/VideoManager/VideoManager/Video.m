//
//  Video.m
//  VideoManager
//
//  Created by 노정우 on 2016. 9. 30..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Video.h"

@implementation Video
@synthesize name, genre, director;

- (void)videoPrint {
    NSLog(@"Name : %@", name);
    NSLog(@"Genre : %@", genre);
    NSLog(@"Director : %@", director);
}


@end
