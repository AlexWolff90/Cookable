//
//  RNGViewController2.m
//  Cookable
//
//  Created by kwadwo nyarko on 4/23/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "RNGViewController2.h"

@interface RNGViewController2 ()

@end

@implementation RNGViewController2
@synthesize label_quant_1,label_quant_2,label_quant_3,label_quant_4,label_quant_5,label_quant_6,
label_quant_7,label_quant_8,label_quant_9;

@synthesize label_price_1,label_price_2,label_price_3,label_price_4,label_price_5,label_price_6,
label_price_7,label_price_8,label_price_9,total_price,place_order;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self disableOrEnableConfirm];
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
    label_price_1.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 2.50];
    [self updatePrice];
}

-(IBAction)update2:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_2.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_2.text = [NSString stringWithFormat:@"$ %.02f", sender.value * .50];
    [self updatePrice];
    
}

-(IBAction)update3:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_3.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_3.text = [NSString stringWithFormat:@"$ %.02f", sender.value * .50];
    [self updatePrice];
    
}

-(IBAction)update4:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_4.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_4.text = [NSString stringWithFormat:@"$ %.02f", sender.value * .75];
    [self updatePrice];
    
}

-(IBAction)update5:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_5.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_5.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 2.00];
    [self updatePrice];
    
}

-(IBAction)update6:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_6.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_6.text = [NSString stringWithFormat:@"$ %.02f", sender.value * .58];
    [self updatePrice];
    
}

-(IBAction)update7:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_7.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_7.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 1.00];
    [self updatePrice];
    
}

-(IBAction)update8:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_8.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_8.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 3.00];
    [self updatePrice];
    
}

-(IBAction)update9:(UIStepper*)sender
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    label_quant_9.text = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:sender.value]];
    label_price_9.text = [NSString stringWithFormat:@"$ %.02f", sender.value * 2.00];
    [self updatePrice];
    
}

-(float)getTotalPrice
{
    return ([label_quant_9.text floatValue]*2.00 + [label_quant_8.text floatValue]*3.00 + [label_quant_7.text floatValue]*1.00 + [label_quant_6.text floatValue]*.58 + [label_quant_5.text floatValue]*2.00 + [label_quant_4.text floatValue]*.75 + [label_quant_3.text floatValue]*.50 + [label_quant_2.text floatValue]*.50 + [label_quant_1.text floatValue]*2.50);
}

-(IBAction)updatePrice
{
    total_price.text = [NSString stringWithFormat:@"$ %0.2f", [self getTotalPrice]];
    [self disableOrEnableConfirm];
    
}


-(IBAction)showConfirmation
{
    UIAlertView *confirmation = [[UIAlertView alloc] init];
    [confirmation setTitle:@"Confirm Order"];
    //NSString* message = [NSString stringWithFormat:@"You order will arrive in 30 minutes. In the meantime, a receipt will be emailed to you at klkh@kmail.com"];
    [confirmation setMessage:@"You order will arrive in 30-45 minutes. In the meantime, a receipt has been emailed to you at klkh@kmail.com"];
    [confirmation setDelegate:self];
    [confirmation addButtonWithTitle:@"OK"];
    [confirmation show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self performSegueWithIdentifier:@"orderIngredientsSegue" sender:self];
}

-(IBAction)disableOrEnableConfirm
{
    if ([self getTotalPrice] == 0.00)
    {
        [place_order setEnabled:NO];
    }
    else
    {
        [place_order setEnabled:YES];
    }
}



@end
