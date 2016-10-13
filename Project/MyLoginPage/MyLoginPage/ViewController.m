//
//  ViewController.m
//  MyLoginPage
//
//  Created by 노정우 on 2016. 10. 11..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIScrollView *scrollView;
@property UITextField *idField;
@property UITextField *pwField;
@property UIButton *loginBtn;
@property UIButton *joinBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50)];
    [self.scrollView setContentOffset:CGPointMake(0, 0)];
    self.scrollView.delegate = self;
    [self.view addSubview:self.scrollView];

    UILabel *mainLabel = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-200)/2, 120, 200, 30)];
    mainLabel.text = @"My Login Page";
    mainLabel.font = [UIFont systemFontOfSize:25];
    mainLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:mainLabel];
    

    const NSInteger height = 30;
    self.idField = [[UITextField alloc] initWithFrame:CGRectMake(80, self.view.frame.size.height/4+100, self.view.frame.size.width-160, height)];
    self.idField.text = @"";
    self.idField.delegate = self;
    self.idField.borderStyle = UITextBorderStyleLine;
    [self.scrollView addSubview:self.idField];
    
    self.pwField = [[UITextField alloc] initWithFrame:CGRectMake(80, self.view.frame.size.height/4+140, self.idField.frame.size.width, height)];
    self.pwField.text = @"";
    self.pwField.delegate = self;
    self.pwField.borderStyle = UITextBorderStyleLine;
    [self.scrollView addSubview:self.pwField];
    
    UILabel *idLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, self.view.frame.size.height/4+100, 40, height)];
    idLabel.text = @"ID";
    idLabel.font = [UIFont systemFontOfSize:17];
    idLabel.textAlignment = NSTextAlignmentCenter;
    [self.scrollView addSubview:idLabel];
    
    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, self.view.frame.size.height/4+140, 40, height)];
    pwLabel.text = @"PW";
    pwLabel.font = [UIFont systemFontOfSize:17];
    pwLabel.textAlignment = NSTextAlignmentCenter;
    [self.scrollView addSubview:pwLabel];
    
    self.loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, self.view.frame.size.height/4+190, 50, height)];
    [self.loginBtn setTitle:@"로그인" forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.loginBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:self.loginBtn];
    
    self.joinBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width-180, self.loginBtn.frame.origin.y, self.loginBtn.frame.size.width*2, self.loginBtn.frame.size.height)];
    [self. joinBtn setTitle:@"회원가입" forState:UIControlStateNormal];
    [self. joinBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self. joinBtn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.joinBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:self.joinBtn];
    
}

- (void)btnAction
{
    [self.idField resignFirstResponder];
    [self.pwField resignFirstResponder];
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(textField == self.idField || textField == self.pwField)
    {
        [self.scrollView setContentOffset:CGPointMake(0, 50) animated:YES];
    }
    return YES;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == self.idField)
    {
        [self.pwField becomeFirstResponder];
    }else if(textField == self.pwField)
    {
        [self.pwField resignFirstResponder];
        [self.scrollView setContentOffset:CGPointMake(0,0) animated:YES];
    }
    return YES;
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    [self registNotification];
//}
//
//-(void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    [self unregistNotification];
//}
//
//-(void) registNotification
//{
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(keyboardWasShown:)
//                                                 name:UIKeyboardDidShowNotification
//                                               object:nil];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(keyboardWillBeHidden:)
//                                                 name:UIKeyboardWillHideNotification
//                                               object:nil];
//}
//
//-(void) unregistNotification
//{
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:UIKeyboardDidShowNotification object:nil];
//    
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:UIKeyboardDidHideNotification object:nil];
//}
//
//-(void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    self.activeField = textField;
//    self.activeField.delegate = self;
//
//}
//
//-(void)textFieldDidEndEditing:(UITextField *)textField
//{
//    self.activeField = nil;
//}
//
//- (void)keyboardWasShown:(NSNotification*)aNotification
//{
//    NSDictionary* info = [aNotification userInfo];
//    CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
//    
//    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0);
//    self.scrollView.contentInset = contentInsets;
//    self.scrollView.scrollIndicatorInsets = contentInsets;
//    
//    CGRect aRect = self.view.frame;
//    aRect.size.height -= kbSize.height;
//    if (!CGRectContainsPoint(aRect, self.activeField.frame.origin) ) {
//        [self.scrollView setContentSize:CGSizeMake(CGRectGetWidth(self.scrollView.frame), CGRectGetHeight(self.scrollView.frame) + kbSize.height)];
//        [self.scrollView scrollRectToVisible:self.activeField.frame animated:YES];
//    }
//}
//
//- (void)keyboardWillBeHidden:(NSNotification*)aNotification
//{
//    [self.scrollView setContentOffset:CGPointZero animated:YES];
//}
//
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


@end
