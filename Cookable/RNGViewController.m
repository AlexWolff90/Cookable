//
//  RNGViewController.m
//  Cookable
//
//  Created by Alex Wolff on 3/31/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "RNGViewController.h"

@interface RNGViewController ()

@end



@implementation RNGViewController
@synthesize label_quant_1,label_quant_2,label_quant_3,label_quant_4,label_quant_5, label_price_1,label_price_2,
label_price_3,label_price_4,label_price_5,stepper_1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)update1:(UIStepper*)sender
{
    label_quant_1.text = [NSString stringWithFormat:@"%f", sender.value];
    label_price_1.text = [NSString stringWithFormat:@"%f", sender.value * 5];
}

-(IBAction)update2:(UIStepper*)sender
{
    label_quant_2.text = [NSString stringWithFormat:@"%f", sender.value];
    label_price_2.text = [NSString stringWithFormat:@"%f", sender.value * 4];
}

-(IBAction)update3:(UIStepper*)sender
{
    label_quant_3.text = [NSString stringWithFormat:@"%f", sender.value];
    label_price_3.text = [NSString stringWithFormat:@"%f", sender.value * 3];
}


@end
