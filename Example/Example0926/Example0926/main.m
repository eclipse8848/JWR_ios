//
//  main.m
//  Example0926
//
//  Created by 노정우 on 2016. 9. 26..
//  Copyright © 2016년 노정우. All rights reserved.
//  클래스메소드에 대해 배워봄, 조건문에 대해 배워봄

#import <Foundation/Foundation.h>
#import "ToolBox.h"
#import "Condition.h"
int main(int argc, const char * argv[]) {
    
    CGFloat myInch = 9;
    CGFloat cm = [ToolBox inchToCm:myInch];
    NSLog(@"%lfinch는 %lfcm 입니다.", myInch, cm);
    
    CGFloat myCm = 8;
    CGFloat inch = [ToolBox cmToInch:myCm];
    NSLog(@"%lfcm는 %lfinch 입니다.", myCm, inch);
    
    CGFloat myM2 = 24;
    CGFloat pyung = [ToolBox m2ToPyung:myM2];
    NSLog(@"%lfm2는 %lf평입니다.", myM2, pyung);
    
    CGFloat myPyung = 24;
    CGFloat m2 = [ToolBox PyungToM2:myPyung];
    NSLog(@"%lf평은 %lfm2입니다.", myPyung, m2);
    
    NSInteger myscore = 103;
    NSString *grade = [Condition scoreToGrade:myscore];
    NSLog(@"점수는 %ld점 등급은 %@입니다.", myscore, grade);
    
    [Condition scholarshipWithGrade:1];
    [Condition lastDay:11];
    [Condition gradeToPoint:@"A+"];
    NSInteger num = [Condition absoluteNum:-134];
    NSLog(@"%ld", num);
    
    CGFloat fnum = [Condition roundNum:3.135];
    NSLog(@"%lf", fnum);
    
    CGFloat mile = [ToolBox kmToMile:180];
    NSLog(@"%lf", mile);
    return 0;
}
