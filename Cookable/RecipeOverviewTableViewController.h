//
//  RecipeOverviewTableViewController.h
//  Cookable
//
//  Created by Alex Wolff on 4/7/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeOverviewTableViewController : UITableViewController
    <UIPickerViewDelegate, UIPickerViewDataSource, UIGestureRecognizerDelegate>
{
    UIPickerView       *onionPicker;
    UIPickerView       *olivePicker;
    UIPickerView       *lemonPicker;
    NSArray            *onionAlts;
    NSArray            *oliveAlts;
    NSArray            *lemonAlts;
    UILabel            *onionLabel;
    UILabel            *oliveLabel;
    UILabel            *lemonLabel;
    UITableView        *ingredients;
}
@property (nonatomic, retain) IBOutlet UIPickerView *onionPicker;
@property (nonatomic, retain) IBOutlet UIPickerView *olivePicker;
@property (nonatomic, retain) IBOutlet UIPickerView *lemonPicker;
@property (nonatomic, retain) IBOutlet UILabel *onionLabel;
@property (nonatomic, retain) IBOutlet UILabel *oliveLabel;
@property (nonatomic, retain) IBOutlet UILabel *lemonLabel;
@property (nonatomic, retain) NSArray *onionAlts;
@property (nonatomic, retain) NSArray *oliveAlts;
@property (nonatomic, retain) NSArray *lemonAlts;
@property (strong, nonatomic) IBOutlet UITableView *ingredients;
- (IBAction)onionLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)onionRight:(UISwipeGestureRecognizer *)sender;



@end
