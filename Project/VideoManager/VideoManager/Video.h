//
//  Video.h
//  VideoManager
//
//  Created by 노정우 on 2016. 9. 30..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Video : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *director;

- (void)videoPrint;

@end
