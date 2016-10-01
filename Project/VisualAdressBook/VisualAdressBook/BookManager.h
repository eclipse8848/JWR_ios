//
//  BookManager.h
//  BookManager
//
//  Created by 노정우 on 2016. 9. 29..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;
@interface BookManager : NSObject

@property NSMutableArray *bookList;

- (void)addBook:(Book *)bookObject;
- (NSString *)showAllBook;
- (NSUInteger)countBook;
- (NSString *)findBook:(NSString *)name;
- (NSString *)removeBook:(NSString *)name;
@end
