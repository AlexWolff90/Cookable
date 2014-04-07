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

@property (nonatomic, retain) IBOutlet UILabel *label_quant_6;
@property (nonatomic, retain) IBOutlet UILabel *label_price_6;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_7;
@property (nonatomic, retain) IBOutlet UILabel *label_price_7;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_8;
@property (nonatomic, retain) IBOutlet UILabel *label_price_8;

@property (nonatomic, retain) IBOutlet UILabel *label_quant_9;
@property (nonatomic, retain) IBOutlet UILabel *label_price_9;

@property (nonatomic, retain) IBOutlet UILabel *total_price;
@property (nonatomic, retain) IBOutlet UIButton *place_order;




//@property (nonatomic, retain) IBOutlet UITextField *textAnswer;
//@property (nonatomic, retain) IBOutlet UIButton *buttonSubmit;

-(IBAction)update1:(UIStepper*)sender;
-(IBAction)update2:(UIStepper*)sender;
-(IBAction)update3:(UIStepper*)sender;
-(IBAction)update4:(UIStepper*)sender;
-(IBAction)update5:(UIStepper*)sender;
-(IBAction)update6:(UIStepper*)sender;
-(IBAction)update7:(UIStepper*)sender;
-(IBAction)update8:(UIStepper*)sender;
-(IBAction)update9:(UIStepper*)sender;

-(IBAction)updatePrice;
-(IBAction)showConfirmation;



    
@end
