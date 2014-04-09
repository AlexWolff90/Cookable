//
//  StepsViewController.h
//  Cookable
//
//  Created by Kevin Luo on 4/8/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StepViewController.h"

@interface StepsViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *stepTitles;
@property (strong, nonatomic) NSArray *stepVideos;
@property (strong, nonatomic) NSArray *stepText;
@property (strong, nonatomic) NSArray *stepImage1;
@property (strong, nonatomic) NSArray *stepImage2;

@end
