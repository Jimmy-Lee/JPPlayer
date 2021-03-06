//
//  JPSpotifyListTableViewCell.m
//  JPPlayer
//
//  Created by Prime on 1/27/16.
//  Copyright © 2016 Prime. All rights reserved.
//

#import "JPPlaylistCell.h"

@implementation JPPlaylistCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor JPBackgroundColor];
        
        UIView *backgroundColorView = [[UIView alloc] init];
        backgroundColorView.backgroundColor = [UIColor JPSelectedCellColor];
        self.selectedBackgroundView = backgroundColorView;
        
        _profileImageView = [[UIImageView alloc] init];
        _profileImageView.contentMode = UIViewContentModeScaleToFill;
        [self addSubview:_profileImageView];
        [_profileImageView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(5.f);
            make.bottom.equalTo(self).offset(-5.f);
            make.left.equalTo(self).offset(20.f);
            make.width.equalTo(_profileImageView.height);
        }];
        
        _rightArrowImageView = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"ic_keyboard_arrow_right_white_48pt"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
        _rightArrowImageView.contentMode = UIViewContentModeScaleToFill;
        _rightArrowImageView.tintColor = [UIColor JPColor];
        [self addSubview:_rightArrowImageView];
        [_rightArrowImageView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(5.f);
            make.bottom.right.equalTo(self).offset(-5.f);
            make.width.equalTo(_rightArrowImageView.height);
        }];
        
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor whiteColor];
        [self addSubview:_titleLabel];
        [_titleLabel makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_profileImageView);
            make.left.equalTo(_profileImageView.right).offset(15.f);
            make.right.equalTo(_rightArrowImageView.left).offset(-5.f);
            make.height.equalTo(_profileImageView).multipliedBy(0.5f);
        }];
        
        _auxilaryLabel = [[UILabel alloc] init];
        _auxilaryLabel.textColor = [UIColor grayColor];
        [self addSubview:_auxilaryLabel];
        [_auxilaryLabel makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(_profileImageView);
            make.left.equalTo(_profileImageView.right).offset(15.f);
            make.right.equalTo(_rightArrowImageView.left).offset(-5.f);
            make.height.equalTo(_profileImageView).multipliedBy(0.5f);
        }];
    }
    
    return self;
}

@end
