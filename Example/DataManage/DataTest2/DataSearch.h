//
//  DataSearch.h
//  DataTest2
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSearch : NSObject

+ (NSString *)showTitle:(NSDictionary *)data;

+ (NSArray *)showSongTitle:(NSDictionary *)data;

+ (NSString *)showLyrics:(NSString *)songTitle data:(NSDictionary *)data;
@end
