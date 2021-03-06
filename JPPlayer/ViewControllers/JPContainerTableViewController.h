//
//  JPContainerTableViewController.h
//  JPPlayer
//
//  Created by Prime on 1/18/16.
//  Copyright © 2016 Prime. All rights reserved.
//

#import "JPContainerViewController.h"

@interface JPContainerTableViewController : JPContainerViewController

@property (strong, nonatomic) UIView *topView;
@property CGFloat topViewHeight;

@property (strong, nonatomic) UIImageView *blurBackgroundImageView;
@property (strong, nonatomic) UIVisualEffectView *blurEffectView;
@property (strong, nonatomic) UIImageView *profileImageView;
@property (strong, nonatomic) UILabel *titleLabel;

@property (strong, nonatomic) UIView *fakeHeaderView;
@property (strong, nonatomic) UITableView *list;

@property (strong, nonatomic) id information;
@property (strong, nonatomic) NSMutableArray *tracks;

- (void)checkNewPage:(SPTListPage *)page;

@end
