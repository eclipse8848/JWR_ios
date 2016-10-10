//
//  ViewController.m
//  UIPractice1010
//
//  Created by 노정우 on 2016. 10. 10..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    [myView setBackgroundColor:[UIColor redColor]];
    [myView setAlpha:0.5];
    [self.view addSubview:myView];
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 35)];
    [myLabel setText:@"첫번째 레이블"];
    [myLabel setTextColor:[UIColor blackColor]];
    [myLabel setTextAlignment:NSTextAlignmentCenter];
    [myView addSubview:myLabel];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 150)];
    [imgView setImage:[UIImage imageNamed:@"jin3.jpg"]];
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgView];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
