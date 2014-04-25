//
//  AppleRecipeTableViewController.m
//  Cookable
//
//  Created by Kevin Luo on 4/23/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "AppleRecipeTableViewController.h"
#import "StepsViewController.h"

@interface AppleRecipeTableViewController ()

@end

@implementation AppleRecipeTableViewController

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
    self.recipeImages = [NSArray arrayWithObjects:@"apple coleslaw 4.jpg", @"apple-coleslaw-close.jpg",
                    @"Apple-Cranberry-Coleslaw.jpg", @"red-cabbage-coleslaw.jpg", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.recipeImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"ApplePreview";
    
    UICollectionViewCell *recipe = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[recipe viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[self.recipeImages objectAtIndex:indexPath.row]];
    
    return recipe;
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
        return 4;
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"AppleCookSegue"]) {
        StepsViewController *svc = segue.destinationViewController;
        svc.recipeName = @"Apple";
    }
}

- (IBAction)onionLeftB:(UIButton *)sender {
    self.onionLabel.text = @"2 Red Onions, Finely Chopped";
    self.onionLeftButton.enabled = false;
    self.onionRightButton.enabled = true;
}

- (IBAction)onionRightB:(UIButton *)sender {
    self.onionLabel.text = @"2 Green Onions, Finely Chopped";
    self.onionLeftButton.enabled = true;
    self.onionRightButton.enabled = false;
}

- (IBAction)onionRight:(UISwipeGestureRecognizer *)sender {
    self.onionLabel.text = @"2 Green Onions, Finely Chopped";
    self.onionLeftButton.enabled = true;
    self.onionRightButton.enabled = false;
}

- (IBAction)onionLeft:(UISwipeGestureRecognizer *)sender {
    self.onionLabel.text = @"2 Red Onions, Finely Chopped";
    self.onionLeftButton.enabled = false;
    self.onionRightButton.enabled = true;
}
@end
