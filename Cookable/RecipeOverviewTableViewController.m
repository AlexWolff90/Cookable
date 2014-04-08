//
//  RecipeOverviewTableViewController.m
//  Cookable
//
//  Created by Alex Wolff on 4/7/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "RecipeOverviewTableViewController.h"

@interface RecipeOverviewTableViewController () {
    NSArray *recipeImages;
}
@end


@implementation RecipeOverviewTableViewController
@synthesize onionPicker, olivePicker, lemonPicker, onionAlts, oliveAlts, lemonAlts;
@synthesize onionLabel, oliveLabel, lemonLabel;
@synthesize ingredients;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Initialize recipe image array
    recipeImages = [NSArray arrayWithObjects:@"Greek-Salad.jpg", @"greek-salad-su-1173749-l.jpg",
                    @"greek-salad-520-a.jpg", @"Greek-Salad-2.jpg", nil];
   
    self.onionAlts = [[NSArray alloc] initWithObjects:
                         @"1/2 Small Red Onion", @"1/2 Small Green Onion", nil];
    self.oliveAlts = [[NSArray alloc] initWithObjects:
                      @"1 Talbespoon Olive Oil", @"1 Tablespoon Grape Seed Oil", nil];
    self.onionAlts = [[NSArray alloc] initWithObjects:
                      @"1 Teaspoon Lemon Juice", @"1 Teaspoon Lime Juice", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return recipeImages.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"RecipePreview";
    
    UICollectionViewCell *recipe = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[recipe viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    return recipe;
}

-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)sender {
    NSLog(@"Swipe received.");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section == 0) {
        return 10;
    } else {
        return 6;
    }
}

#pragma mark -
#pragma mark PickerView DataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return 2;
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    if([pickerView isEqual: onionPicker]){
        return [onionAlts objectAtIndex:row];
    }else if([pickerView isEqual: olivePicker]){
        return [oliveAlts objectAtIndex:row];
    }else return [lemonAlts objectAtIndex:row];
}

#pragma mark -
#pragma mark PickerView Delegate
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    if([pickerView isEqual: onionPicker]){
        onionLabel.text = [onionAlts objectAtIndex:row];
    }else if([pickerView isEqual: olivePicker]){
        oliveLabel.text = [oliveAlts objectAtIndex:row];
    }else lemonLabel.text = [lemonAlts objectAtIndex:row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 3) {
        if (onionPicker) onionPicker.hidden = !onionPicker.hidden;
    } else if (indexPath.row == 6){
        if (olivePicker) olivePicker.hidden = !olivePicker.hidden;
    } else if (indexPath.row == 7){
        if (lemonPicker) lemonPicker.hidden = !lemonPicker.hidden;
    }
    
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onionLeft:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)onionRight:(UISwipeGestureRecognizer *)sender {
}
@end
