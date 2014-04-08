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
    NSString *code = @"<iframe width=\"728\" height=\"400\" src=\"//www.youtube.com/embed/T0xVthFSJBg\" frameborder=\"0\" allowfullscreen></iframe>";
    [[self video] loadHTMLString:code baseURL:[NSURL URLWithString:@"http://www.youtube.com"]];
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
