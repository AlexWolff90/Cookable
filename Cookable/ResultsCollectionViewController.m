//
//  ResultsCollectionViewController.m
//  Cookable
//
//  Created by Alex Wolff on 4/6/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "ResultsCollectionViewController.h"

@interface ResultsCollectionViewController () {
    NSArray *recipeImages;
}

@end

@implementation ResultsCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Initialize recipe image array
    recipeImages = [NSArray arrayWithObjects:@"CaesarTile.jpg", @"GreekTile.jpg", @"AppleColeslawTile.jpg", @"PotatoTile.jpg", @"CornTile.jpg", @"ChickenTile.jpg", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return recipeImages.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Results";
    
    UICollectionViewCell *results = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[results viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    return results;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Sort:(UISegmentedControl *)sender {
    switch (self.segcontrol.selectedSegmentIndex)
    {
        case 0:
            recipeImages = [NSArray arrayWithObjects:@"CaesarTile.jpg", @"GreekTile.jpg", @"AppleColeslawTile.jpg", @"PotatoTile.jpg", @"CornTile.jpg", @"ChickenTile.jpg", nil];
            [self.collectionView reloadData];
            break;
        case 1:
            recipeImages = [NSArray arrayWithObjects:@"AppleColeslawTile.jpg", @"ChickenTile.jpg", @"CaesarTile.jpg", @"GreekTile.jpg", @"PotatoTile.jpg", @"CornTile.jpg", nil];
            [self.collectionView reloadData];
            break;
        default: 
            break; 
    }
}
@end
