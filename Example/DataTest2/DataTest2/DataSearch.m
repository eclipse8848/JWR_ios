//
//  DataSearch.m
//  DataTest2
//
//  Created by 노정우 on 2016. 10. 6..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "DataSearch.h"

@implementation DataSearch

+ (NSString *)showTitle:(NSDictionary *)data {
    if (data != nil) {
        NSDictionary *albumInfo = [data objectForKey:@"album_info"];
        NSString *title = [albumInfo objectForKey:@"title"];
        return title;
    }return nil;
}

+ (NSArray *)showSongTitle:(NSDictionary *)data {
    if (data != nil) {
        NSMutableArray *tempArr = [[NSMutableArray alloc] init];
        NSArray *songList = [data objectForKey:@"song_list"];
        for (NSDictionary *tempDic in songList) {
            [tempArr addObject:[tempDic objectForKey:@"name"]];
             }
             return tempArr;
        }
    return nil;
}

+ (NSString *)showLyrics:(NSString *)songTitle data:(NSDictionary *)data{
    if (data != nil) {
        NSMutableDictionary *songLyrics = [[NSMutableDictionary alloc] init];
        NSArray *songList = [data objectForKey:@"song_list"];
        for (NSDictionary *tempDic in songList) {
            if ([songTitle isEqualToString:[tempDic objectForKey:@"name"]]) {
                songLyrics = [tempDic objectForKey:@"song_info"];
            }
            NSString *lyrics = [songLyrics objectForKey:@"lyrics"];
            return lyrics;
        }
    }return nil;
}
@end
