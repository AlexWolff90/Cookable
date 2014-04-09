//
//  RecipeOverviewTableViewController.h
//  Cookable
//
//  Created by Alex Wolff on 4/7/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeOverviewTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *onionLabel;
- (IBAction)onionRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)onionLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)onionRightB:(UIButton *)sender;
- (IBAction)onionLeftB:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *onionRightButton;
@property (weak, nonatomic) IBOutlet UIButton *onionLeftButton;

@property (weak, nonatomic) IBOutlet UILabel *oliveLabel;
- (IBAction)oliveRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)oliveLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)oliveRightB:(UIButton *)sender;
- (IBAction)oliveLeftB:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *oliveRightButton;
@property (weak, nonatomic) IBOutlet UIButton *oliveLeftButton;

@property (weak, nonatomic) IBOutlet UILabel *lemonLabel;
- (IBAction)lemonRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)lemonLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)lemonLeftB:(UIButton *)sender;
- (IBAction)lemonRightB:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *lemonRightButton;
@property (weak, nonatomic) IBOutlet UIButton *lemonLeftButton;




@end
