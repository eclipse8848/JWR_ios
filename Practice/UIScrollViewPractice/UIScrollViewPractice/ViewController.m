//
//  ViewController.m
//  UIScrollViewPractice
//
//  Created by 노정우 on 2016. 10. 11..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIScrollView *scrollView;
@property UILabel *pageLB2;
@end

@implementation ViewController

- (void)viewDidLoad {
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 450)];
    
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width*3,460)];
    [self.scrollView setContentOffset:CGPointMake(0, 0)];
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    [self.view addSubview:self.scrollView];
    
    UIView *newView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 640)];
    [newView1 setBackgroundColor:[UIColor blueColor]];
    [self.scrollView addSubview:newView1];
    
    UIView *newView2 = [[UIView alloc] initWithFrame:CGRectMake(320, 0, 320, 640)];
    [newView2 setBackgroundColor:[UIColor greenColor]];
    [self.scrollView addSubview:newView2];
    
    UIView *newView3 = [[UIView alloc] initWithFrame:CGRectMake(640, 0, 320, 640)];
    [newView3 setBackgroundColor:[UIColor redColor]];
    [self.scrollView addSubview:newView3];
    
    UILabel *pageLB = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 50)];
    [pageLB setTextColor:[UIColor blackColor]];
    [pageLB setText:@"page:"];
    [self.view addSubview:pageLB];
    
    self.pageLB2 = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, 100, 50)];
    [self.pageLB2 setTextColor:[UIColor blackColor]];
    [self.pageLB2 setText:@"1"];
    [self.view addSubview:self.pageLB2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSUInteger tempNum = (self.scrollView.contentOffset.x / self.scrollView.frame.size.width) + 1;

    self.pageLB2.text = [NSString stringWithFormat:@"%ld",tempNum];
  
}


@end
