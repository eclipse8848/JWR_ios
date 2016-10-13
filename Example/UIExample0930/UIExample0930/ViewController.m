//
//  ViewController.m
//  UIExample0930
//
//  Created by 노정우 on 2016. 9. 30..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 250, 35)];
    myLabel.text = @"예제 화면 입니다.";
    myLabel.textColor = [UIColor blackColor];
    [self.view addSubview:myLabel];
    
    UILabel *mySecLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x+50, self.view.center.y-300, 250, 35)];
    mySecLabel.text = @"예쁜 레이블 입니다.";
    mySecLabel.textColor = [UIColor redColor];
    [self.view addSubview:mySecLabel];
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(20, 150, self.view.frame.size.width-100, self.view.frame.size.height-600)];
    myView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:myView];
    
    UILabel *myThiLabel = [[UILabel alloc] initWithFrame:CGRectMake(myView.frame.size.width-170, myView.frame.size.height-35, 250, 35)];
    myThiLabel.text = @"View위에 레이블 입니다.";
    myThiLabel.textColor = [UIColor whiteColor];
    [myView addSubview:myThiLabel];
    
    UILabel *centerLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x*0.65, self.view.center.y, 250, 35)];
    centerLabel.text = @"중앙에 있는 레이블 입니다.";
    centerLabel.textColor = [UIColor blackColor];
    centerLabel.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:centerLabel];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
