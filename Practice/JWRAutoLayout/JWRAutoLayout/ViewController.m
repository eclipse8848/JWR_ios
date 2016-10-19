//
//  ViewController.m
//  JWRAutoLayout
//
//  Created by 노정우 on 2016. 10. 18..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UIStepper *myStepper;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *jwConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickStepper:(id)sender {
    NSLog(@"clicked stepper");
    self.myStepper = sender;
    self.jwConstraint.constant = self.myStepper.value * 10;
    NSString *tempStr = [NSString stringWithFormat:@"%0.f", self.myStepper.value];
    self.myLabel.text = tempStr;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
