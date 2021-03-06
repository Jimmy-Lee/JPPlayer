//
//  JPSpotifyFeatureCollectionViewCell.h
//  JPPlayer
//
//  Created by Prime on 3/4/16.
//  Copyright © 2016 Prime. All rights reserved.
//

#import <UIKit/UIKit.h>

#define JPCollectionViewCellIdentifier @"JPCollectionViewCellIdentifier"
@interface JPCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) UIImageView *profileImageView;
@property (strong, nonatomic) UILabel *titleLabel;

@end
