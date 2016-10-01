//
//  ViewController.m
//  VisualAdressBook
//
//  Created by 노정우 on 2016. 10. 1..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView,nameTextField,genreTextField,authorTextField,countLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    Book *book1 = [[Book alloc] init];
    book1.name = @"앱개발";
    book1.genre = @"IT";
    book1.author = @"smith";
    
    [book1 bookPrint];
    
    Book *book2 = [[Book alloc] init];
    book2.name = @"웹개발";
    book2.genre = @"IT";
    book2.author = @"잭스";
    
    Book *book3 = [[Book alloc] init];
    book3.name = @"안드로이드 개발";
    book3.genre = @"교양";
    book3.author = @"김영감";
    
    [book2 bookPrint];
    
    
    myBook = [[BookManager alloc] init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    [myBook countBook];
    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
}

- (IBAction)showAllBookAction:(id)sender {
     resultTextView.text = [myBook showAllBook];
//    [resultTextView setText:[myBook showAllBook]];
}

- (IBAction)addBookAction:(id)sender {
    NSMutableString *str = [[NSMutableString alloc] init];
    Book *bookTemp = [[Book alloc] init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    [str appendString:bookTemp.name];
    [str appendString:@" 책이 추가됐습니다."];
    resultTextView.text = str;
    countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
}

- (IBAction)findBookAction:(id)sender {
    NSString *strTemp = [myBook findBook:nameTextField.text];
    if (strTemp != nil) {
        resultTextView.text = strTemp;
    }else {
        resultTextView.text = @"찾으시는 책이 없네요";
    }
}

- (IBAction)removeBookAction:(id)sender {
    NSString *strTemp = [myBook removeBook:nameTextField.text];
    if (strTemp != nil) {
        NSMutableString *str = [[NSMutableString alloc] init];
        [str appendString:strTemp];
        [str appendString:@" 책이 지워졌습니다."];
        resultTextView.text = str;
        countLabel.text = [NSString stringWithFormat:@"%li",[myBook countBook]];
    }else {
        resultTextView.text = @"지우실 책이 없네요";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
