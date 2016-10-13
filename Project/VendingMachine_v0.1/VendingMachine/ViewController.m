//
//  ViewController.m
//  VendingMachine
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
    UIView *frameView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, self.view.frame.size.height-40)];
    frameView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:frameView];
    
    UIView *drinkView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frameView.frame.size.width/2-10, frameView.frame.size.height/3-20)];
    drinkView.backgroundColor = [UIColor magentaColor];
    [frameView addSubview:drinkView];
    
    UIView *drinkViewTwo = [[UIView alloc] initWithFrame:CGRectMake(frameView.frame.size.width-drinkView.frame.size.width, 0, frameView.frame.size.width/2-10, frameView.frame.size.height/3-20)];
    drinkViewTwo.backgroundColor = [UIColor magentaColor];
    [frameView addSubview:drinkViewTwo];
    
    UIView *drinkViewThree = [[UIView alloc] initWithFrame:CGRectMake(0, drinkView.frame.size.height+20, drinkView.frame.size.width, drinkView.frame.size.height)];
    drinkViewThree.backgroundColor = [UIColor magentaColor];
    [frameView addSubview:drinkViewThree];
    
    UIView *drinkViewFour = [[UIView alloc] initWithFrame:CGRectMake(frameView.frame.size.width-drinkView.frame.size.width, drinkView.frame.size.height+20, drinkView.frame.size.width, drinkView.frame.size.height)];
    drinkViewFour.backgroundColor = [UIColor magentaColor];
    [frameView addSubview:drinkViewFour];
    
    UIView *displayView = [[UIView alloc] initWithFrame:CGRectMake(0, drinkViewThree.frame.size.height*2+50, frameView.frame.size.width, 130)];
    displayView.backgroundColor = [UIColor blackColor];
    [frameView addSubview:displayView];
    
    UIView *inputView = [[UIView alloc] initWithFrame:CGRectMake(0, frameView.frame.size.height-70, frameView.frame.size.width, 70)];
    inputView.backgroundColor = [UIColor magentaColor];
    [frameView addSubview:inputView];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, drinkView.frame.size.width, drinkView.frame.size.height-50)];
    [imgView setImage:[UIImage imageNamed:@"2012102600651_0.jpg"]];
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    [drinkView addSubview:imgView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, imgView.frame.size.height, imgView.frame.size.width, drinkView.frame.size.height-imgView.frame.size.height)];
    label.text = @"1000원";
    label.textAlignment = 1;
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor whiteColor];
    [drinkView addSubview:label];
    
    UIImageView *imgViewTwo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, drinkViewTwo.frame.size.width, drinkViewTwo.frame.size.height-50)];
    imgViewTwo.image = [UIImage imageNamed:@"2.jpg"];
    [imgViewTwo setContentMode:UIViewContentModeScaleAspectFit];
    [drinkViewTwo addSubview:imgViewTwo];
    
    UILabel *labelTwo = [[UILabel alloc] initWithFrame:CGRectMake(0, imgViewTwo.frame.size.height, imgViewTwo.frame.size.width, drinkViewTwo.frame.size.height-imgViewTwo.frame.size.height)];
    labelTwo.text = @"2000원";
    labelTwo.textAlignment = 1;
    labelTwo.textColor = [UIColor blackColor];
    labelTwo.backgroundColor = [UIColor whiteColor];
    [drinkViewTwo addSubview:labelTwo];
    
    UIImageView *imgViewThree = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, drinkViewThree.frame.size.width, drinkViewThree.frame.size.height-50)];
    imgViewThree.image = [UIImage imageNamed:@"3.jpg"];
    [imgViewThree setContentMode:UIViewContentModeScaleAspectFit];
    [drinkViewThree addSubview:imgViewThree];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
