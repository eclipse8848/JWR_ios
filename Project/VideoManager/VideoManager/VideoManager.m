//
//  VideoManager.m
//  VideoManager
//
//  Created by 노정우 on 2016. 9. 30..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "VideoManager.h"

@implementation VideoManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.videoList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addVideo:(Video *)videoObject {
    [self.videoList addObject:videoObject];
}

- (NSString *)showAllVideo {
    NSMutableString strTmp = [[NSMutableString alloc] init];
    return strTmp;
}

@end
