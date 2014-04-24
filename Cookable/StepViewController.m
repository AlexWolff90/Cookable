//
//  StepViewController.m
//  Cookable
//
//  Created by Kevin Luo on 4/7/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "StepViewController.h"

@interface StepViewController ()

@end

@implementation StepViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([self.stepText length] == 0) {
        self.finishLabel.hidden = NO;
        self.homeButton.enabled = YES;
        self.homeButton.hidden = NO;
    } else {
        if (self.videoCode) {
            [self.video loadHTMLString:self.videoCode baseURL:[NSURL URLWithString:@"http://www.youtube.com"]];
        } else {
            self.imageBig.image = [UIImage imageNamed:self.imageFileBig];
        }
        self.titleLabel.text = self.titleText;
        self.textView.text = self.stepText;
        self.image1.image = [UIImage imageNamed:self.imageFile1];
        if([self.imageFile2 length] != 0) {
            self.image2.image = [UIImage imageNamed:self.imageFile2];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
