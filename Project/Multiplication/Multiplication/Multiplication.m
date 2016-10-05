//
//  Multiplication.m
//  Multiplication
//
//  Created by 노정우 on 2016. 10. 4..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

+ (void)whileTest:(NSInteger)num {
    NSInteger index = 1;
    while (index < 10) {
        NSLog(@"%ld * %ld = %ld", num, index, num*index);
        index++;
    }
}

+ (void)forTest:(NSInteger)num {
    
    for (NSInteger i = 0; i < 10; i++){
        NSLog(@"%ld * %ld = %ld", num, i, num * i);
    }
}

+ (void)factorialTest:(NSInteger)number {
    NSInteger num = 1;
    for (NSInteger i = 1; i <= number; i++){
        num = num * i;
        
    }
    NSLog(@"%ld팩토리얼은 %ld", number,num);
}

+ (void)triangleTest:(NSInteger)number {
    NSInteger num = 0;
    for (NSInteger i = 1; i <= number; i++) {
        num = num + i;
    }
    NSLog(@"%ld의 삼각수는 %ld", number, num);
    
}

+ (void)positionalTest:(NSInteger)number {
    NSInteger sum = 0;
    NSInteger num = number;
    while(num > 0){
        sum += num % 10;
        num = num / 10;
    }
    NSLog(@"결과는 %ld", sum);
    
}

+ (void)multipleTest:(NSInteger)number {
    NSString *str = @"";
    for(NSInteger i = 1; i <= number; i++) {
       
        if (i / 10 == 3 || i / 10  == 6 || i / 10 == 9 || (i % 10 == 3 || i % 10 == 6 || i % 10 == 9)) {
            str = [str stringByAppendingString:@"*, "];
            
//        NSLog(@"*");
        }else{
            str = [str stringByAppendingFormat:@"%ld, ",i];
//            NSLog(@"%ld",i);
        }
        
    }
    
    NSLog(@"%@",str);
}



@end
