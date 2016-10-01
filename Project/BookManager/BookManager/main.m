//
//  main.m
//  BookManager
//
//  Created by 노정우 on 2016. 9. 29..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *book1 = [[Book alloc] init];
        book1.name = @"앱개발";
        book1.genre = @"IT";
        book1.author = @"smith";
        
        [book1 bookPrint];
        
        Book *book2 = [[Book alloc] init];
        book2.name = @"웹개발";
        book2.genre = @"IT";
        book2.author = @"잭스";
        
        Book *book3 = [[Book alloc] init];
        book3.name = @"안드로이드 개발";
        book3.genre = @"교양";
        book3.author = @"김영감";
        
        [book2 bookPrint];
        
        
        BookManager *myBook = [[BookManager alloc] init];
        
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
        NSLog(@"%@",[myBook showAllBook]);
        NSLog(@"count : %lu",[myBook countBook]);
        
        
        NSString *strTemp = [myBook findBook:@"앱개발"];
        if (strTemp != nil) {
            NSLog(@"%@", strTemp);
        }else {
            NSLog(@"찾으시는 책이 없습니다.");
        }
        
        NSString *removeResult = [myBook removeBook:@"안드로이드 개발"];
       if (removeResult != nil) {
            NSLog(@"%@ 책을 지웠습니다.", removeResult);
        }else {
            NSLog(@"지울려는 책이 없습니다.");
        }
        

        
        
        
        NSLog(@"%@",[myBook showAllBook]);
        
        NSLog(@"count : %lu", [myBook countBook]);
    }
    return 0;
}
