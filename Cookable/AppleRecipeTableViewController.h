//
//  AppleRecipeTableViewController.h
//  Cookable
//
//  Created by Kevin Luo on 4/23/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppleRecipeTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *onionLabel;
@property (weak, nonatomic) IBOutlet UIButton *onionLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *onionRightButton;
- (IBAction)onionLeftB:(UIButton *)sender;
- (IBAction)onionRightB:(UIButton *)sender;

- (IBAction)onionRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)onionLeft:(UISwipeGestureRecognizer *)sender;

@property (strong, nonatomic) NSArray *recipeImages;

@end
