//
//  macBook.h
//  DrawingStructure
//
//  Created by 노정우 on 2016. 9. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface macBook : NSObject

@property id type;
@property id color;
@property id size;
@property id price;

-(id)recharge;
-(id)on;
-(id)off;
-(id)speakerVolumeUp;
-(id)speakerVolumeDown;
-(id)displayBrightnessUp;
-(id)displayBrightnessDown;

@end
