//
//  StepsViewController.m
//  Cookable
//
//  Created by Kevin Luo on 4/8/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "StepsViewController.h"

@interface StepsViewController ()

@end

@implementation StepsViewController

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
    self.stepTitles = @[@"Chop Tomato (1 Tomato)", @"Chop Onion (1/2 Onion)", @"Peel and Chop Cucumbers (1 Cucumber)", @"Pit and Slice Olives (2 Olives)", @"Mix Salad", @""];
    self.stepVideos = @[@"<iframe width=\"728\" height=\"400\" src=\"//www.youtube.com/embed/T0xVthFSJBg\" frameborder=\"0\" allowfullscreen></iframe>", @"<iframe width=\"728\" height=\"400\" src=\"//www.youtube.com/embed/vfWLyCdFrms\" frameborder=\"0\" allowfullscreen></iframe>", @"<iframe width=\"728\" height=\"400\" src=\"//www.youtube.com/embed/2jms-JTcY5s\" frameborder=\"0\" allowfullscreen></iframe>", @"<iframe width=\"728\" height=\"400\" src=\"//www.youtube.com/embed/dJms-9ZwoLM\" frameborder=\"0\" allowfullscreen></iframe>", @"<iframe width=\"728\" height=\"400\" src=\"//www.youtube.com/embed/TROiZTbgsg8\" frameborder=\"0\" allowfullscreen></iframe>", @""];
    self.stepText = @[@"1. Remove the stem with fingers\n2. Place on cutting board and slice in half horizontally\n3. Cut each half into horizontal slices\n4. Stack slices and cut vertical slices\n5. Turn stack 90 degrees and cut vertical slices", @"1. Trim the ends off\n2. Cut in half lengthwise\n3. Peel the skin off each half\n4. Place a half on cutting board with flat side down\n5. Slice crosswise\n6. Flip section sideways\n7. Cut along the straight edge and work toward edge", @"1. Cut off ends\n2. Peel cucumber\n3. Cut in half lengthwise\n4. Use small spoon to scoop seeds\n5. Cut lengthwise strips\n6. Cut across strips", @"1. Place olive on cutting board\n2. Place flat side of knife on olive\n3. Carefully pound lightly on the knife with your fist\n4. Remove pit\n5. Slice up lengthwise", @"1. Put tomato, onion, and cucumber in a bowl\n2. Mix bowl\n3. Sprinkle oil, lemon juice, and salt/pepper over bowl\n4. Put in bowls for serving\n5. Sprinkle feta cheese and olives over salad\n6. Serve", @""];
    self.stepImage1 = @[@"tomato1.jpg", @"onion1.jpg", @"cucumber.jpg", @"olive.jpg", @"mix.jpg", @""];
    self.stepImage2 = @[@"tomato2.jpg", @"onion2.jpg", @"", @"", @"", @""];
    // Create page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    StepViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    // Do any additional setup after loading the view.
}

#pragma mark - Page View Controller Data Source

- (StepViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.stepTitles count] == 0) || (index >= [self.stepTitles count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    StepViewController *stepViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"StepViewController"];
    stepViewController.titleText = self.stepTitles[index];
    stepViewController.videoCode = self.stepVideos[index];
    stepViewController.stepText = self.stepText[index];
    stepViewController.imageFile1 = self.stepImage1[index];
    stepViewController.imageFile2 = self.stepImage2[index];
    stepViewController.pageIndex = index;
    
    return stepViewController;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((StepViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((StepViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.stepTitles count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.stepTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
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
