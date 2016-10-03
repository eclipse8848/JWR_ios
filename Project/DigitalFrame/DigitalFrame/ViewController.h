//
//  ViewController.h
//  DigitalFrame
//
//  Created by 노정우 on 2016. 10. 2..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 

@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

- (IBAction)toggleAction:(id)sender;
- (IBAction)changeSpeedAction:(id)sender;
@end

