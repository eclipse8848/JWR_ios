//
//  Condition.m
//  Example0926
//
//  Created by 노정우 on 2016. 9. 26..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Condition.h"

@implementation Condition
//홀수 짝수 구하는 클래스 메소드 구현
+ (BOOL)isEvenNumber:(NSInteger)number {
    
    BOOL isEven = NO;
    
    if(number % 2 == 0) {
        isEven = YES;
    }else
    {
        isEven = NO;
    }
    return isEven;
}
+ (BOOL)isEvenNumber2:(NSInteger)number {
    if(number % 2 == 0){
        return YES;
    }else
    {
        return NO;
    }
}

+ (NSString *)scoreToGrade:(NSInteger)score {
    
    NSString *grade;
    if(score >= 95 && score <= 100) {
        grade = @"A+";
    }else if(score >= 90 && score < 95) {
        grade = @"A";
    }else if(score >= 85 && score < 90) {
        grade = @"B+";
    }else if(score >= 80 && score < 85) {
        grade = @"B";
    }else if(score >= 75 && score < 80) {
        grade = @"C+";
    }else if(score >= 70 && score < 75) {
        grade = @"C";
    }else if(score >= 65 && score < 70) {
        grade = @"D+";
    }else if(score >= 60 && score < 65) {
        grade = @"D";
    }else if(score < 60 && score >= 0){
        grade = @"F";
    }else{
        grade = @"오류!";
    }
    return grade;
}

+ (CGFloat)gradeToPoint:(NSString *)grade {
    CGFloat point;
    if([grade isEqualToString:@"A+"]) {
        point = 4.5;
        NSLog(@"%0.2lf", point);
    }else if([grade isEqualToString:@"A"]) {
        point = 4.0;
        NSLog(@"%0.2lf",point);
    }else if([grade isEqualToString:@"B+"]) {
        point = 3.5;
        NSLog(@"%0.2lf",point);
    }
    return point;
}


+ (void)scholarshipWithGrade:(NSInteger)grade {
    
    switch (grade) {
        case 1:
            NSLog(@"전액장학금");
            break;
        case 2:
            NSLog(@"50%% 장학금");
            break;
        case 3:
            NSLog(@"30%% 장학금");
            break;
        default:
            NSLog(@"장학금 없음");
            break;
    }
}

+ (NSInteger)lastDay:(NSInteger)month {
    
    NSInteger day = 0;
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            day = 31;
            NSLog(@"%ld",day);
            break;
        case 2:
            day = 28;
            NSLog(@"%ld",day);
            break;
        default:
            day =  30;
            NSLog(@"%ld",day);
            break;
    }
    return day;
}

+ (NSUInteger)absoluteNum:(NSInteger)number {
    NSInteger num;
    if(number < 0) {
        num = number * -1;
    }
    return num;
}

+ (CGFloat)roundNum:(CGFloat)number {
    NSInteger num;
    CGFloat fnum;
    num = number * 1000 + 5;
    fnum = num * 0.001;
    return fnum;
}

@end
