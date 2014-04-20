//
//  TableViewCell.h
//  CHSRegApp
//
//  Created by Tom Bonds on 4/1/13.
//  Copyright (c) 2013 Tom Bonds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *waitTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *facilityImage;
@property (weak, nonatomic) IBOutlet UIImageView *facTypeImage;

@end
