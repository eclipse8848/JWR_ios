//
//  ViewController.m
//  JWRLayout
//
//  Created by 노정우 on 2016. 10. 18..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constra;
@property (weak, nonatomic) IBOutlet UIStepper *muStepper;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // call statusBarFrame size
    [[UIApplication sharedApplication] statusBarFrame];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
