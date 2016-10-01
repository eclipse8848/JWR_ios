//
//  main.m
//  VideoManager
//
//  Created by 노정우 on 2016. 9. 30..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Video.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Video *video1 = [[Video alloc] init];
        video1.name = @"도장깨기";
        video1.genre = @"액션";
        video1.director = @"푸틴";
        
        [video1 videoPrint];
        
        Video *video2 = [[Video alloc] init];
        video2.name = @"비포선셋";
        video2.genre = @"로맨스";
        video2.director = @"에단호크";
        
        [video2 videoPrint];
        
        Video *video3 = [[Video alloc] init];
        video3.name = @"아메리칸파이";
        video3.genre = @"코미디";
        video3.director = @"노정우";
        
        [video3 videoPrint];
    }
    return 0;
}
