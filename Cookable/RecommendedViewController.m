//
//  RecommendedViewController.m
//  Cookable
//
//  Created by Alex Wolff on 4/6/14.
//  Copyright (c) 2014 Alex Wolff. All rights reserved.
//

#import "RecommendedViewController.h"

@interface RecommendedViewController () {
    NSArray *recipeImages;
}

@end

@implementation RecommendedViewController

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
    recipeImages = [NSArray arrayWithObjects:@"ChickenTile.jpg", @"CaesarTile.jpg", @"CornTile.jpg",
                    @"PotatoTile.jpg", @"GreekTile.jpg", @"AppleColeslawTile.jpg", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return recipeImages.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Recommended";
    
    UICollectionViewCell *recommended = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[recommended viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    return recommended;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 5) {
        [self performSegueWithIdentifier:@"AppleSegue" sender:self];
    } else {
        [self performSegueWithIdentifier:@"GreekSegue" sender:self];
    }
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

@end
