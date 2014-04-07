//
//  RecipeOverviewTableViewController.h
//  Cookable
//
//  Created by Alex Wolff on 4/7/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeOverviewTableViewController : UITableViewController
        <UIPickerViewDelegate, UIPickerViewDataSource>
{
    UIPickerView       *picker;
    NSArray            *onionAlts;
    NSArray            *oliveAlts;
    NSArray            *lemonAlts;
    UILabel            *onionLabel;
    UILabel            *oliveLabel;
    UILabel            *lemonLabel;
}
@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) IBOutlet UILabel *onionLabel;
@property (nonatomic, retain) IBOutlet UILabel *oliveLable;
@property (nonatomic, retain) IBOutlet UILabel *lemonLabel;
@property (nonatomic, retain) NSArray *onionAlts;
@property (nonatomic, retain) NSArray *oliveAlts;
@property (nonatomic, retain) NSArray *lemonAlts;

@end
