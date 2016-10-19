//
//  ViewController.m
//  Yagom
//
//  Created by 노정우 on 2016. 10. 17..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) IBOutlet UILabel *myLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myLabel.text = @"힝힝힝";
    self.myLabel.backgroundColor = [UIColor magentaColor];
    UIButton *button = [[UIButton alloc] init];
    [button setFrame:CGRectMake(100, 100, 30, 30)];
    [button setTitle:@"ABC" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonMethod1) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonMethod2) forControlEvents:UIControlEventTouchUpInside];
    
}

-(IBAction)buttonMethod1:(id)sender
{
    
}

-(IBAction)buttonMethod2:(id)sender
{
    
}

-(void)buttonMethod1
{
    
}

-(void)buttonMethod2
{
        
}
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
