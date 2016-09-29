//
//  Book.m
//  BookManager
//
//  Created by 노정우 on 2016. 9. 29..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name,genre,author;

- (void)bookPrint {
    NSLog(@"Name : %@", name);
    NSLog(@"Genre : %@", genre);
    NSLog(@"Author : %@", author);
    
}

@end
