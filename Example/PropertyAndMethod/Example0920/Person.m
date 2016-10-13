//
//  Person.m
//  Example0920
//
//  Created by 노정우 on 2016. 9. 20..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "Person.h"

@implementation Person
//움직임 메서드
- (id) walk {
    NSLog(@"걷습니다.");
    return nil;
}
- (id) run {
    NSLog(@"달립니다.");
    return nil;
}
- (id) runTo:(id)direction bySpeed:(id)speed{
    NSLog(@"%@쪽으로 달립니다. %@km/h의 속도로.", direction, speed);
    return nil;
}

//수면 메서드
- (id) sleep {
    NSLog(@"잠을잡니다.");
    return nil;
}
- (id) sleepAt:(id)where when:(id)when {
    NSLog(@"%@에서 잠을잡니다. %@시에", where, when);
    return nil;
}

//대화 메서드
- (id) speak:(id)language {
    NSLog(@"%@를(을)말합니다.", language);
    return nil;
}
- (id) speakTo:(id)someone topic:(id)topic language:(id)language {
    NSLog(@"%@에게 말합니다 %@란 주제를 가지고 %@어로", someone, topic, language);
    return nil;
}



//식음 메서드
- (id) drink:(id)type {
    NSLog(@"%@를 마십니다.", type);
    return nil;
}
- (id) eat:(id)food {
    NSLog(@"%@을(를) 먹습니다.", food);
    return nil;
}
- (id) smell:(id)what {
    NSLog(@"%@를 냄새맡습니다.", what);
    return nil;
}


//생산성 메서드
- (id) think:(id)what {
    NSLog(@"%@를 생각합니다.", what);
    return nil;
}
- (id) study:(id)subject {
    NSLog(@"%@를 공부합니다.", subject);
    return nil;
}
- (id) make:(id)what {
    NSLog(@"%@을 만듭니다.", what);
    return nil;
}



@end
