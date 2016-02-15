//
//  NewNoticeTableViewCell.h
//  Stamp
//
//  Created by qianfeng on 16/2/15.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewNoticeModel.h"

@interface NewNoticeTableViewCell : UITableViewCell

@property (nonatomic, strong) NewNoticeModel * model;
@property (nonatomic, strong) UIImageView * imgView;
@property (nonatomic, strong) UILabel * titleLabel;
@property (nonatomic, strong) UILabel * exchangeTitle;
@property (nonatomic, strong) UILabel * tileLabel;

@end
