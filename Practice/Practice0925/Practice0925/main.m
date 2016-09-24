//
//  main.m
//  Practice0925
//
//  Created by 노정우 on 2016. 9. 25..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *str = @"This is NSString";
    NSLog(@"str : %@", str);
    
    NSString *result;
    result = [str substringFromIndex:6];
    result = [str substringToIndex:3];
    result = [[str substringToIndex:11]substringFromIndex:8];
    result = [[str substringFromIndex:8]substringToIndex:3];
    result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
    result = [[str substringWithRange:NSMakeRange(8, 3)]uppercaseString];
    NSLog(@"result : %@", result);
    
    NSMutableString *mstr = [NSMutableString stringWithString:str];
    
    [mstr appendString:@" and NSMutableString"];
    [mstr insertString:@"Mutable" atIndex:8];
    NSLog(@"mstr : %@", mstr);
    
    
    return 0;
}
