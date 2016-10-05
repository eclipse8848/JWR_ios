//
//  DataTest.h
//  Multiplication
//
//  Created by 노정우 on 2016. 10. 4..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataTest : NSObject
//앨범이름 가져오기
- (NSString *)titleWithData:(NSDictionary *)data;

// song의 제목들을 가져오는 메소드
+ (NSArray *)songTitles:(NSDictionary *)data;

// song의 제목 입력시 가사를 보여주는 메소드
+ (NSString *)showLyrics:(NSString *)songTitle data:(NSDictionary *)data;

// song의 제목 입력시 재생시간을 알려주는 메소드
+ (NSDate *)showPlayTime:(NSString *)songTitle data:(NSDictionary *)data;
@end
