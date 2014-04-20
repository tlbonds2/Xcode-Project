//
//  ViewController.m
//  CHSRegApp
//
//  Created by Tom Bonds on 3/30/13.
//  Copyright (c) 2013 Tom Bonds. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "HeaderView.h"
#import "FooterView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
        // TODO: Select Item
}


- (UICollectionReusableView *)collectionView: (UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {

    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        HeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];

        reusableview = headerView;
    }
    
    if (kind == UICollectionElementKindSectionFooter) {
        FooterView *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
        
        reusableview = footerView;
    }
    
    return reusableview;
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
    return self.collectionCellArray.count;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"mainCell" forIndexPath:indexPath];
    cell.collectionLabel.text = self.collectionCellArray[indexPath.row];
    
    
    
    return cell;
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Set the collection cell label 
    self.collectionCellArray = @[@"Find a Doctor", @"Wait Times", @"Request Appointment", @"Find a Location", @"Symptom Checker", @"Classes and Events"];
    
    // Add logo to navigator toolbar
    UIImage *image = [UIImage imageNamed: @"smallLogo.png"];
    UIImageView *imageview = [[UIImageView alloc] initWithImage: image];
    self.navigationItem.titleView = imageview;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
