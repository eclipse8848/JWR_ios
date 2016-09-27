//
//  ToolBox.m
//  Example0926
//
//  Created by 노정우 on 2016. 9. 26..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

//인치->센치, 센치->인치 클래스메소드 구현
+ (CGFloat)inchToCm:(CGFloat)inch {
    
    CGFloat cm = inch * 2.54;
    return cm;
}
+ (CGFloat)cmToInch:(CGFloat)cm {
    
    CGFloat inch = cm * 0.393701;
    return inch;
}

//제곱미터->평, 평->제곱미터 클래스메소드 구현
+ (CGFloat)m2ToPyung:(CGFloat)m2 {
    
    CGFloat pyung = m2 * 0.3025;
    return pyung;
    
}
+ (CGFloat)PyungToM2:(CGFloat)pyung {
    
    CGFloat m2 = pyung * 3.305785;
    return m2;
}
@end
