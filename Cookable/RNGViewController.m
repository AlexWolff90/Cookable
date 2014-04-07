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
@synthesize label_quant_1,label_quant_2,label_quant_3,label_quant_4,label_quant_5,label_quant_6,
label_quant_7,label_quant_8,label_quant_9;

@synthesize label_price_1,label_price_2,label_price_3,label_price_4,label_price_5,label_price_6,
label_price_7,label_price_8,label_price_9,total_price,place_order;

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
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];

    label_quant_1.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_1.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 5];
    [self updatePrice];
}

-(IBAction)update2:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];

    label_quant_2.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_2.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 4];
    [self updatePrice];

}

-(IBAction)update3:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];

    label_quant_3.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_3.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 3];
    [self updatePrice];

}

-(IBAction)update4:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_4.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_4.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 6];
    [self updatePrice];

}

-(IBAction)update5:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_5.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_5.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 5];
    [self updatePrice];

}

-(IBAction)update6:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_6.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_6.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 7];
    [self updatePrice];

}

-(IBAction)update7:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_7.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_7.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 4];
    [self updatePrice];

}

-(IBAction)update8:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_8.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_8.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 5];
    [self updatePrice];

}

-(IBAction)update9:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_9.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_9.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 3];
    [self updatePrice];

}

-(IBAction)updatePrice
{
    total_price.text = [NSString stringWithFormat:@"$ %0.2f", [label_quant_9.text floatValue]*3 + [label_quant_8.text floatValue]*5 + [label_quant_7.text floatValue]*4 + [label_quant_6.text floatValue]*7 + [label_quant_5.text floatValue]*5 + [label_quant_4.text floatValue]*6 + [label_quant_3.text floatValue]*3 + [label_quant_2.text floatValue]*4 + [label_quant_1.text floatValue]*5 ];

}


-(IBAction)showConfirmation
{
    UIAlertView *confirmation = [[UIAlertView alloc] init];
    [confirmation setTitle:@"Confirm Order"];
    NSString* message = [NSString stringWithFormat:@"Ready to place you order $%@ ? A receipt will be emailed to you",total_price.text];
    [confirmation setMessage:message];
     [confirmation setDelegate:self];
     [confirmation addButtonWithTitle:@"Cancel"];
     [confirmation addButtonWithTitle:@"Order"];
     [confirmation show];
}

-(void)alertview:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

}


@end
