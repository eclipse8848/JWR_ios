//
//  ViewController.m
//  DigitalFrame
//
//  Created by 노정우 on 2016. 10. 2..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, toggleButton, speedSlider, speedLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *cuteImages = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"1.jpg"],
                           [UIImage imageNamed:@"2.jpg"],
                           [UIImage imageNamed:@"3.jpg"],
                           [UIImage imageNamed:@"4.jpg"],
                           [UIImage imageNamed:@"5.jpg"],
                           nil];
    imgView.animationImages = cuteImages;
    imgView.animationDuration = 15.0;
    
    
    
}

- (IBAction)toggleAction:(id)sender {
    if ([imgView isAnimating]) {
        [imgView stopAnimating];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    }else {
        [imgView startAnimating];
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

- (IBAction)changeSpeedAction:(id)sender {
    
    imgView.animationDuration = 15-speedSlider.value;
    [imgView startAnimating];
    [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    
    NSString *str = [[NSString alloc] initWithFormat:@"%0.1f",speedSlider.value];
    speedLabel.text = str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
