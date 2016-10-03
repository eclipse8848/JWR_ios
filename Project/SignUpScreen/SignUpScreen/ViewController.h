//
//  ViewController.h
//  SignUpScreen
//
//  Created by 노정우 on 2016. 10. 2..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *idTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *mobileTextField;
@property (strong, nonatomic) IBOutlet UITextField *blogTextField;
@property (strong, nonatomic) IBOutlet UITextView *resultTextView;

-(BOOL)textFieldShouldReturn:(UITextField *)textField;

- (IBAction)signUpAction:(id)sender;

@end

