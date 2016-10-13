//
//  ViewController.m
//  VendingMachine_v0.2
//
//  Created by 노정우 on 2016. 10. 13..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) NSArray *itemImgName;
@property (nonatomic) NSDictionary *itemData;
@property (nonatomic) NSArray *costData;

@property (nonatomic, weak) UIView *itemContainerView;
@property (nonatomic) NSMutableArray *itemViews;
@property (nonatomic, weak) UIView *dispalyView;
@property (nonatomic, weak) UILabel *displayLb;

@property (nonatomic, weak) UIView *inputView2;
@property (nonatomic) NSMutableArray *inputBtns;

//남은돈
@property (nonatomic, assign) NSInteger remaindMoney;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemImgName = @[@"island1",@"island2",@"island3.jpg",@"island4.jpg"];
    self.itemData = @{@"sum1":@"1000",@"sum2":@"2000",@"sum3":@"3000",@"sum4":@"4000"};
    self.costData = @[@"10000",@"5000",@"1000"];
    self.itemViews = [[NSMutableArray alloc] init];
    self.inputBtns = [[NSMutableArray alloc] init];
    
    [self createView];
    [self updateLayout];
}


- (void)createView
{
    //Display
    UIView *itemContainerView = [[UIView alloc] init];
    //    drinkContainerView.backgroundColor = [UIColor yellowColor];
    itemContainerView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:itemContainerView];
    self.itemContainerView = itemContainerView;
    
    NSArray *itemDataKeys = self.itemData.allKeys;
    
    //item View
    for (NSInteger i = 0; i < 4; i++) {
        //base
        UIView *itemView = [[UIView alloc] init];
        itemView.backgroundColor = [UIColor grayColor];
        itemView.tag = i;
        [self.itemContainerView addSubview:itemView];
        [self.itemViews addObject:itemView];
        
        //imageView
        UIImageView *img = [[UIImageView alloc] init];
        img.frame = CGRectMake(0, 0, itemView.frame.size.width, 200 - 35);
        img.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        img.image = [UIImage imageNamed:[self.itemImgName objectAtIndex:i]];
        [itemView addSubview:img];
        
        //title
        UILabel *titleLb = [[UILabel alloc] init];
        titleLb.frame = CGRectMake(0, 200 - 35, itemView.frame.size.width, 20);
        titleLb.text = [itemDataKeys objectAtIndex:i];
        titleLb.font = [UIFont boldSystemFontOfSize:16];
        titleLb.textAlignment = NSTextAlignmentCenter;
        titleLb.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [itemView addSubview:titleLb];
        //cost
        UILabel *costLB = [[UILabel alloc] init];
        costLB.frame = CGRectMake(0, 200 - 15, itemView.frame.size.width, 15);
        costLB.text = [self.itemData objectForKey:[itemDataKeys objectAtIndex:i]];
        costLB.font = [UIFont systemFontOfSize:15];
        costLB.textAlignment = NSTextAlignmentCenter;
        costLB.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        [itemView addSubview:costLB];
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, itemView.frame.size.width, itemView.frame.size.height);
        [btn addTarget:self action:@selector(onTouchupInsideItem:) forControlEvents:UIControlEventTouchUpInside];
        btn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        btn.tag = i;
        [itemView addSubview:btn];
        
        
    }
    
    //Display View
    UIView *dispalyView = [[UIView alloc] init];
    dispalyView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:dispalyView];
    self.dispalyView = dispalyView;
    
    UILabel *displayLb = [[UILabel alloc] init];
    displayLb.text = @"0";
    displayLb.font = [UIFont systemFontOfSize:40];
    displayLb.textAlignment = NSTextAlignmentRight;
    [dispalyView addSubview:displayLb];
    self.displayLb = displayLb;
    
    //Input View
    UIView *inputView2 = [[UIView alloc] init];
    inputView2.backgroundColor = [UIColor redColor];
    [self.view addSubview:inputView2];
    self.inputView2 = inputView2;
    
    
    
    for (NSInteger i = 0; i < [self.costData count]; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn addTarget:self action:@selector(onTouchupInsideCoin:) forControlEvents:UIControlEventTouchUpInside];
        btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|  UIViewAutoresizingFlexibleHeight;
        [btn setTitle:[self.costData objectAtIndex:i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        btn.tag = i;
        [inputView2 addSubview:btn];
        [self.inputBtns addObject:btn];
    }
    
    
}

//UI잡기
- (void)updateLayout
{
    //큰 틀 y좌표
    CGFloat baseViewOffsetY = 45;
    
    //드링크 뷰 하나의 높이는 200정도 잡느다.
    self.itemContainerView.frame = CGRectMake(20, baseViewOffsetY, self.view.frame.size.width - 40, 400+10);
    baseViewOffsetY += self.itemContainerView.frame.size.height + 30;
    
    //item Layout
    const NSInteger baseViewBet = 10;
    for (UIView *itemView in self.itemViews) {
        NSInteger row = itemView.tag/2;
        NSInteger cal = itemView.tag%2;
        CGFloat itemViewWidth = (self.itemContainerView.frame.size.width - 10)/2;
        CGFloat itemViewHeight = (self.itemContainerView.frame.size.height - 10)/2;
        itemView.frame = CGRectMake((itemViewWidth + baseViewBet)*cal,(itemViewHeight + baseViewBet)*row, itemViewWidth,itemViewHeight);
    }
    
    //displayView Layout
    self.dispalyView.frame = CGRectMake(20, baseViewOffsetY, self.view.frame.size.width - 40, 150);
    self.displayLb.frame = CGRectMake(0, 0, self.dispalyView.frame.size.width, self.dispalyView.frame.size.height);
    baseViewOffsetY += self.dispalyView.frame.size.height + 15;
    
    //inputView Layout
    self.inputView2.frame = CGRectMake(20, baseViewOffsetY, self.view.frame.size.width - 40, 45);
    NSInteger btnWitdh = self.inputView2.frame.size.width/[self.inputBtns count] - 10;
    for (UIView *inputBtn in self.inputBtns) {
        inputBtn.frame = CGRectMake((btnWitdh + 10)*inputBtn.tag, 0, btnWitdh, self.inputView2.frame.size.height);
    }
    
}

//아이템 버튼 클릭시 액션
- (void)onTouchupInsideItem:(UIButton *)sender
{
    //현재 클릭된버튼의 금액
    NSInteger selectedTag = sender.tag;
    NSArray *dataKeys = self. itemData.allKeys;
    NSString *dataKey = [dataKeys objectAtIndex:selectedTag];
    NSString *costStr = [self.itemData objectForKey:dataKey];
    
    if (self.remaindMoney >= costStr.integerValue) {
        self.remaindMoney -= costStr.integerValue;
        self.displayLb.text = [NSString stringWithFormat:@"%ld", _remaindMoney];
        
        UIAlertController *alertControler = [UIAlertController
                                             alertControllerWithTitle:@"빙고"
                                             message:[NSString stringWithFormat:@"%@가 나왔습니다.",dataKey]
                                             preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
                                                        style:UIAlertActionStyleCancel
                                                      handler:nil];
        [alertControler addAction:okBtn];
        [self presentViewController:alertControler
                           animated:YES
                         completion:nil];
        
    }else {
        //잔액부족
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"실패"
                                                                                 message:@"잔액이 부족합니다."
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
                                                        style:UIAlertActionStyleCancel
                                                      handler:nil];
        [alertController addAction:okBtn];
        [self presentViewController:alertController
                           animated:YES
                         completion:nil];
    }
}

//돈
- (void)onTouchupInsideCoin:(UIButton *)sender
{
    //현재 클릭된 버튼의 가격
    NSInteger selectedTag = sender.tag;
    NSString *costStr = [self.costData objectAtIndex:selectedTag];
    
    //디스플레이 뷰에 넣기
    self.remaindMoney += costStr.integerValue;
    self.displayLb.text = [NSString stringWithFormat:@"%ld", _remaindMoney];
}

//돈 반환
- (void)onTouchupInsideRefund:(UIButton *)sender {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
