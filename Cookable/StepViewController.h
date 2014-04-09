//
//  StepViewController.h
//  Cookable
//
//  Created by Kevin Luo on 4/7/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *video;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *finishLabel;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;


@property NSString *titleText;
@property NSUInteger pageIndex;
@property NSString *stepText;
@property NSString *videoCode;
@property NSString *imageFile1;
@property NSString *imageFile2;

@end
