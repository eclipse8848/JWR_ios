//
//  ViewController.m
//  SignUpScreen
//
//  Created by 노정우 on 2016. 10. 2..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, mobileTextField, blogTextField, resultTextView;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}


- (IBAction)signUpAction:(id)sender {
    resultTextView.text = [NSString stringWithFormat:@"%@ 님 가입을 축하 드립니다.", nameTextField.text];
}


@end
