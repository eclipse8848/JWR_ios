//
//  ViewController.m
//  UITextFieldPractice
//
//  Created by 노정우 on 2016. 10. 11..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UITextField *testTF;
@property UILabel *testLB;
@property UILabel *testLBC;
@property UIButton *testBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.testTF = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
    self.testTF.font = [UIFont systemFontOfSize:15];
    self.testTF.textColor = [UIColor blackColor];
    self.testTF.textAlignment = NSTextAlignmentCenter;
    self.testTF.borderStyle = UITextBorderStyleLine;
    self.testTF.delegate = self;
    [self.view addSubview:self.testTF];

    
    self.testBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.testTF.frame.size.width+50, 50, 50, 50)];
    [self.testBtn setTitle:@"확인" forState:UIControlStateNormal];
    [self.testBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.testBtn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.testBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.testBtn];
    
    self.testLB = [[UILabel alloc] initWithFrame:CGRectMake(50, 110, 50, 50)];
    [self.testLB setText:@"결과:"];
    [self.testLB setTextColor:[UIColor blackColor]];
    [self.view addSubview:self.testLB];
    
    self.testLBC = [[UILabel alloc] initWithFrame:CGRectMake(100, 110, 200, 50)];
    [self.testLBC setText:@""];
    [self.testLBC setTextColor:[UIColor blackColor]];
    [self.view addSubview:self.testLBC];
    
}
- (void)btnAction
{
    [self.testTF resignFirstResponder];
    self.testLBC.text = self.testTF.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.testTF resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
