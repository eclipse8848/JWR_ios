//
//  DoubleLinkedList.m
//  Example0928
//
//  Created by 노정우 on 2016. 9. 28..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "DoubleLinkedList.h"

@implementation DoubleLinkedList

// 초기화
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.header = [[Node alloc] init];
        self.header.next = nil;
        self.header.previous = nil;
        self.lastIndex = 0;
    }
    return self;
}







// add(마지막에 데이터를 추가한다.)
- (void)addLastValue:(NSInteger)value {
    
    NSString *str;
    
    
    [self addLastIndexNode:self.header newValue:value];
    
}


- (void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value{
    //nowNode의 next가 nil이다.
    if (nowNode.next == nil) {
        Node *newNode = [[Node alloc] init];
        newNode.value = value;
        newNode.previous = nowNode;
        newNode.next = nil;
        newNode.index = self.lastIndex;
        nowNode.next = newNode;
        self.lastIndex = self.lastIndex + 1;
    }else {//nil이 아니다.
        [self addLastIndexNode:nowNode.next newValue:value];
        
    }
    
    
    
}




// remove(해당 데이터를 삭제한다.)




// removeLast
- (void)removeLast {
    [self removeLastNode:self.header];
}

- (void)removeLastNode:(Node *)nowNode {
    
    if(nowNode.next == nil) {
        
        Node *preLast = nowNode.previous;
        preLast.next = nil;
        nowNode.previous = nil;
        
    }else {
        [self removeLastNode:nowNode.next];
    }
    
}


// count(총 노드의 갯수를 구한다)

// printNode(모든 노드의 데이터를 출력한다.)

- (void)printAllNode {
    //요러케하면 0부터 안나옴
    if(self.header.next != nil){
    [self printNode:self.header.next];
    }
    
}

- (void)printNode:(Node *)node {
    NSLog(@"%ld",node.value);
    if (node.next != nil) {
        [self printNode:node.next];
    }
    
}

// printIndex(해당 인덱스의 노드의 값을 찾는다.)



@end
