//
//  VideoManager.h
//  VideoManager
//
//  Created by 노정우 on 2016. 9. 30..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Video;
@interface VideoManager : NSObject

@property NSMutableArray *videoList;

- (void)addVideo:(Video *)videoObject;
- (NSString *)showAllVideo;
@end
