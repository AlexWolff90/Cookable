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
@synthesize onionLabel;
@synthesize oliveLabel;
@synthesize lemonLabel;

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
    onionLabel.text = @"1/2 Small Green Onion";
}

- (IBAction)onionRightB:(UIButton *)sender {
    onionLabel.text = @"1/2 Small Red Onion";
}

- (IBAction)onionLeftB:(UIButton *)sender {
    onionLabel.text = @"1/2 Small Green Onion";
}

- (IBAction)onionRight:(UISwipeGestureRecognizer *)sender {
    onionLabel.text = @"1/2 Small Red Onion";
}
- (IBAction)oliveRight:(UISwipeGestureRecognizer *)sender {
    oliveLabel.text = @"1 Tablespoon Olive Oil";
}

- (IBAction)oliveLeft:(UISwipeGestureRecognizer *)sender {
    oliveLabel.text = @"1 Tablespoon Grapeseed Oil";
}

- (IBAction)oliveRightB:(UIButton *)sender {
    oliveLabel.text = @"1 Tablespoon Olive Oil";
}

- (IBAction)oliveLeftB:(UIButton *)sender {
    oliveLabel.text = @"1 Tablespoon Grapeseed Oil";
}
- (IBAction)lemonRight:(UISwipeGestureRecognizer *)sender {
    lemonLabel.text = @"1 Teaspoon Lemon Juice";
}

- (IBAction)lemonLeft:(UISwipeGestureRecognizer *)sender {
    lemonLabel.text = @"1 Teaspoon Lime Juice";
}

- (IBAction)lemonLeftB:(UIButton *)sender {
    lemonLabel.text = @"1 Teaspoon Lime Juice";
}

- (IBAction)lemonRightB:(UIButton *)sender {
    lemonLabel.text = @"1 Teaspoon Lemon Juice";
}
@end
