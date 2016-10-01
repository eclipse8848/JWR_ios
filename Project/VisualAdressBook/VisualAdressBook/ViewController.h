//
//  ViewController.h
//  VisualAdressBook
//
//  Created by 노정우 on 2016. 10. 1..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookManager;
@interface ViewController : UIViewController {
    BookManager *myBook;
}

@property (nonatomic, strong) IBOutlet UITextView *resultTextView;
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UITextField *genreTextField;
@property (nonatomic, strong) IBOutlet UITextField *authorTextField;
@property (nonatomic, strong) IBOutlet UILabel *countLabel;

- (IBAction)showAllBookAction:(id)sender;
- (IBAction)addBookAction:(id)sender;
- (IBAction)findBookAction:(id)sender;
- (IBAction)removeBookAction:(id)sender;
@end

