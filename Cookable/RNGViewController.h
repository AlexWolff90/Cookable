//
//  RNGViewController.h
//  Cookable
//
//  Created by Alex Wolff on 3/31/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RNGViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *label_quant_1;
@property (nonatomic, retain) IBOutlet UILabel *label_price_1;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_2;
@property (nonatomic, retain) IBOutlet UILabel *label_price_2;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_3;
@property (nonatomic, retain) IBOutlet UILabel *label_price_3;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_4;
@property (nonatomic, retain) IBOutlet UILabel *label_price_4;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_5;
@property (nonatomic, retain) IBOutlet UILabel *label_price_5;

//@property (nonatomic, retain) IBOutlet UITextField *textAnswer;
//@property (nonatomic, retain) IBOutlet UIButton *buttonSubmit;

-(IBAction)update1:(id)sender;

@end
