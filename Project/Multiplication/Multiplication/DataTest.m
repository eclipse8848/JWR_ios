//
//  DataTest.m
//  Multiplication
//
//  Created by 노정우 on 2016. 10. 4..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "DataTest.h"

@implementation DataTest

//- (void)printAlbumName{
//    NSLog(@"앨범 타이틀 : %@", self.aoaAlbum[@"album_info"][@"title"]);
//}
//
//- (void)printSongLists{
//    for (NSInteger i = 0; i < [self.aoaAlbum[@"song_list"] count]; i++)
//        NSLog(@"곡리스트 : %@", self.aoaAlbum[@"song_list"][i][@"name"]);
//}
//
//- (NSMutableArray *)makeSongArray{
//    NSMutableArray *songDataArr = [NSMutableArray array];
//    for (NSInteger i = 0; i < [self.aoaAlbum[@"song_list"] count]; i++)
//        songDataArr[i] = self.aoaAlbum[@"song_list"];
//    return songDataArr;
//}
//
//- (void)printSongLyrics:(NSString *)songTitle{
//    for (NSInteger i = 0; i < [self.aoaAlbum[@"song_list"] count]; i++)
//        if ([self.aoaAlbum[@"song_list"][i][@"name"] isEqualToString:songTitle])
//            NSLog(@"%@ 가사\n%@", songTitle, self.aoaAlbum[@"song_list"][i][@"song_info"][@"lyrics"]);
//}
//
//- (void)printSongRange:(NSString *)songTitle{
//    for (NSInteger i = 0; i < [self.aoaAlbum[@"song_list"] count]; i++)
//        if ([self.aoaAlbum[@"song_list"][i][@"name"] isEqualToString:songTitle])
//            NSLog(@"곡 길이 : %@", self.aoaAlbum[@"song_list"][i][@"total_play_time"]);
//}
- (NSString *)titleWithData:(NSDictionary *)data {
    if (data != nil) {
        
        NSDictionary *aInfo = [data objectForKey:@"album_info"];
        
        return [aInfo objectForKey:@"title"];
    }
    return nil;
}

+ (NSArray *)songTitles:(NSDictionary *)data{
    
    NSArray *song_list = [data objectForKey:@"song_list"];
    
    NSMutableArray *name = [[NSMutableArray alloc]init];
    
    for(NSDictionary *songName in song_list){
        [name addObject:[songName objectForKey:@"name"]];
    }
    return name;
    
}

+ (NSString *)showLyrics:(NSString *)songTitle data:(NSDictionary *)data {
    if (data != nil){
    NSArray *song_list = [data objectForKey:@"song_list"];
    NSMutableDictionary *thisSongLyrics = [[NSMutableDictionary alloc] init];
    for (NSMutableDictionary *tempArr in song_list) {
        if ([songTitle isEqualToString:[tempArr objectForKey:@"name"]]) {
            thisSongLyrics = [tempArr objectForKey:@"song_info"];
        }
    }
    NSString *lyrics = [thisSongLyrics objectForKey:@"lyrics"];
    return lyrics;
    }
    return nil;
}

+ (NSDate *)showPlayTime:(NSString *)songTitle data:(NSDictionary *)data {
    if (data != nil) {
        NSArray *song_list = [data objectForKey:@"song_list"];
        
        for(NSMutableDictionary *tempDic in song_list) {
            if ([songTitle isEqualToString:[tempDic objectForKey:@"name"]]) {
                NSDate *playTime = [tempDic objectForKey:@"total_play_time"];
                return playTime;
            }
            
        }
    }return nil;
}

@end
