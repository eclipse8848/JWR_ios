//
//  ViewController.m
//  UIPractice1010
//
//  Created by 노정우 on 2016. 10. 10..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) NSMutableArray *okBtns;
@property UIButton *beforeBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.okBtns = [[NSMutableArray alloc] init];

    
    for(NSInteger i = 0; i < 4; i++)
    {
        UIButton *okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [okBtn setTitle:@"ok" forState:UIControlStateNormal];
        [okBtn setTitle:@"touchDown" forState:UIControlStateHighlighted];
        [okBtn setTitle:@"ok" forState:UIControlStateSelected];
        [okBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        [okBtn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        [okBtn setTitleColor:[UIColor magentaColor] forState:UIControlStateSelected];
        okBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [okBtn addTarget:self action:@selector(touchUpInsideOKBtn:) forControlEvents:UIControlEventTouchUpInside];
        okBtn.tag = i;
        [self.view addSubview:okBtn];
        [self.okBtns addObject:okBtn];
    }
    [self updateLayout];
    
    UISwitch *switchButton = [[UISwitch alloc] init];
    [switchButton setTintColor:[UIColor magentaColor]];
    [switchButton setOnTintColor:[UIColor magentaColor]];
    [switchButton setThumbTintColor:[UIColor blackColor]];
    switchButton.frame = CGRectMake(200, 200, 100, 100);
    [self.view addSubview:switchButton];
    
    UISlider *slider = [[UISlider alloc] init];
    slider.minimumValue = 0;
    slider.maximumValue = 15;
    slider.value = 7;
    slider.frame = CGRectMake(200, 400, 200, 200);
    [self.view addSubview:slider];
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 160, 35)];
    tf.borderStyle = UITextBorderStyleLine;
    tf.delegate = self;
    [self.view addSubview:tf];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField.text.length < 5)
    {
        return YES;
    }
    return NO;
}

- (void)updateLayout
{

    for (UIButton *okButton in self.okBtns) {
        NSInteger row = okButton.tag/2;
        NSInteger cal = okButton.tag%2;
        CGFloat okBtnWidth = 130;
        CGFloat okBtnHeight = 50;
        okButton.frame = CGRectMake(okBtnWidth*cal + 10, okBtnHeight*row + 10, okBtnWidth, okBtnHeight);

    }
    
}


- (void)touchUpInsideOKBtn:(UIButton *)sender
{
    
    if(sender.selected)
    {
        sender.selected = NO;
        self.beforeBtn = nil;

    }
    else
    {
        self.beforeBtn.selected = NO;
        sender.selected = YES;
        self.beforeBtn = sender;
    }
    
    NSLog(@"버튼클릭 완료");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
