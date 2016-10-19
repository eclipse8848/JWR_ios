//
//  MyViewController.m
//  Practice1017
//
//  Created by 노정우 on 2016. 10. 17..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITextFieldDelegate>
@property (nonatomic) IBOutlet UIButton *loginButton;
@property (nonatomic) IBOutlet UIButton *checkBoxButton;
@property (nonatomic) IBOutlet UITextField *idTextField;
@property (nonatomic) IBOutlet UITextField *pwTextField;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(BOOL)textFieldShouldBeginEditing:(UITextView *)texField
{
    
    NSLog(@"textFieldShouldBeginEditing");
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField endEditing:YES];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string containsString:@"!@~#$%^&*()"]) {
        return NO;
    }
    return YES;
}

-(IBAction)clickAutoLoginButton:(id)sender
{
    if([sender isKindOfClass:[UIButton class]])
    {
        [self.checkBoxButton setSelected:![self.checkBoxButton isSelected]];
    }
}

-(IBAction)clickButton:(id)sender
{
    NSString *tempStr = [[NSString alloc] init];
    NSString *tempStr2 = [[NSString alloc] init];
    if ([sender isKindOfClass:[UIButton class]]) {
        tempStr = self.idTextField.text;
        tempStr2 = self.pwTextField.text;
        NSLog(@"입력하신 아이디는 : %@ \n입력하신 패스워드는 : %@ 입니다.",tempStr, tempStr2);
    }else
    {
        
    }
    
}
- (IBAction)checkOnOff:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]) {
        self.checkBoxButton = sender;
    }
    NSLog(@"버튼클릭됨");
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
