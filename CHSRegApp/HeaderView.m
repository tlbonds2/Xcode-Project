//
//  HeaderView.m
//  CHSRegApp
//
//  Created by Tom Bonds on 3/30/13.
//  Copyright (c) 2013 Tom Bonds. All rights reserved.
//

#import "HeaderView.h"

@interface HeaderView ()
@property(weak) IBOutlet UIImageView *backgroundImageView;
@end

@implementation HeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
