//
//  ViewController.m
//  MiniBrowser
//
//  Created by 노정우 on 2016. 10. 19..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *bookMarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.urlTextField.delegate = self;
    self.mainWebView.delegate = self;
    NSString *urlString = @"https://www.facebook.com";
    [self.mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    self.urlTextField.text = urlString;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *urlString = self.urlTextField.text;
    if (![urlString hasPrefix:@"http://"]) {
        urlString = [[NSString alloc] initWithFormat:@"http://%@", urlString];
    }
    [self.mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    
    [self.urlTextField endEditing:YES];
    return YES;
}
-(void)webViewDidStartLoad:(UIWebView *)webView {
    [self.activityIndicatorView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicatorView stopAnimating];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
