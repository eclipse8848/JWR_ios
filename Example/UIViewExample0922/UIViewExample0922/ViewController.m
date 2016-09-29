//
//  ViewController.m
//  UIViewExample0922
//
//  Created by 노정우 on 2016. 9. 29..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 200, 20)];
    newView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:newView];
    
    UIView *newSecondView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 20, 200)];
    newView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:newSecondView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
