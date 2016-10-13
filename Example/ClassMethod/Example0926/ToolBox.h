//
//  ToolBox.h
//  Example0926
//
//  Created by 노정우 on 2016. 9. 26..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject
//인치->센치, 센치->인치 클래스메소드 선언
+ (CGFloat)inchToCm:(CGFloat)inch;
+ (CGFloat)cmToInch:(CGFloat)cm;

//제곱미터->평, 평->제곱미터 클래스메소드 선언
+ (CGFloat)m2ToPyung:(CGFloat)m2;
+ (CGFloat)PyungToM2:(CGFloat)Pyung;

+ (CGFloat)kmToMile:(CGFloat)km;
@end
