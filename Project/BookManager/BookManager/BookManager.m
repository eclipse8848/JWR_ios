//
//  BookManager.m
//  BookManager
//
//  Created by 노정우 on 2016. 9. 29..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "BookManager.h"
#import "Book.h"
@implementation BookManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        bookList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addBook:(Book *)bookObject {
    [bookList addObject:bookObject];
}
- (NSString *)showAllBook {
    
    NSMutableString *strTmp = [[NSMutableString alloc] init];
    for (Book *bookTemp in bookList) {
        [strTmp appendString:@"\n---------------------"];
        [strTmp appendString:@"\nName : "];
        [strTmp appendString:bookTemp.name];
        [strTmp appendString:@"\nGenre : "];
        [strTmp appendString:bookTemp.genre];
        [strTmp appendString:@"\nAuthor : "];
        [strTmp appendString:bookTemp.author];
        
    }
    return strTmp;    
}

- (NSUInteger)countBook {
    return [bookList count];
}

- (NSString *)findBook:(NSString *)name {
    NSMutableString *strTmp = [[NSMutableString alloc] init];
    for (Book *bookTemp in bookList) {
        if([bookTemp.name isEqualToString:name]) {
            [strTmp appendString:@"\n------찾은책------"];
            [strTmp appendString:@"\nName : "];
            [strTmp appendString:bookTemp.name];
            [strTmp appendString:@"\nGenre : "];
            [strTmp appendString:bookTemp.genre];
            [strTmp appendString:@"\nAuthor : "];
            [strTmp appendString:bookTemp.author];
            return strTmp;
        }
    }return nil;
}

- (NSString *)removeBook:(NSString *)name {
    for (Book *bookTemp in bookList) {
        if([bookTemp.name isEqualToString:name]){
            [bookList removeObject:bookTemp];
            return name;
        }
        
    }return nil;
}
@end
