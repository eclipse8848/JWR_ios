//
//  Book.h
//  BookManager
//
//  Created by 노정우 on 2016. 9. 29..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

- (void)bookPrint;

@end
