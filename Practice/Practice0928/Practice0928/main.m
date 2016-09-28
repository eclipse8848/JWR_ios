//
//  main.m
//  Practice0928
//
//  Created by 노정우 on 2016. 9. 28..
//  Copyright © 2016년 노정우. All rights reserved.
//  NSArray, NSMutableArray, NSDictionary

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *month = [[NSArray alloc]initWithObjects:@"January",@"Feburauary",@"March",@"April",@"June",@"July",@"August",@"September", nil];
        
//      for (int i=0; i<[month count]; i++) {
//          NSLog(@"month : %@", [month objectAtIndex:i]);
//            }
        for(NSString *strTemp in month) {
            NSLog(@"month : %@", strTemp);
        }
    
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        [mmonth addObject:@"October"];
        [mmonth addObject:@"November"];
        [mmonth addObject:@"December"];
        for(NSString *strTemp in mmonth){
            NSLog(@"mmonth : %@", strTemp);
        }
        
        
//      NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"노정우",@"이름",@"32",@"나이", nil];
        NSDictionary *dic = @{ @"이름":@"노정우", @"나이":@"32"};
        NSLog(@"name : %@", [dic objectForKey:@"이름"]);
        NSLog(@"age : %@", [dic objectForKey:@"나이"]);
        
        NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithDictionary:dic];
        
        [mdic setObject:@"서울" forKey:@"거주지"];
        [mdic setObject:@"178cm" forKey:@"키"];
        NSLog(@"name : %@", [dic objectForKey:@"이름"]);
        NSLog(@"age : %@", [dic objectForKey:@"나이"]);
        NSLog(@"location : %@", [mdic objectForKey:@"거주지"]);
        NSLog(@"height : %@", [mdic objectForKey:@"키"]);
        
    }
    return 0;
}
