//
//  Condition.h
//  Example0926
//
//  Created by 노정우 on 2016. 9. 26..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Condition : NSObject
//홀수 짝수 구하는 클래스메소드 선언
+ (BOOL)isEvenNumber:(NSInteger)number;
+ (BOOL)isEvenNumber2:(NSInteger)number;

+ (NSString *)scoreToGrade:(NSInteger)score;
+ (CGFloat)gradeToPoint:(NSString *)grade;

+ (void)scholarshipWithGrade:(NSInteger)grade;
+ (NSInteger)lastDay:(NSInteger)month;

+ (NSUInteger)absoluteNum:(NSInteger)number;
+ (CGFloat)roundNum:(CGFloat)number;
@end
