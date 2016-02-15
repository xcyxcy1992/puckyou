//
//  NewNoticeTableViewCell.m
//  Stamp
//
//  Created by qianfeng on 16/2/15.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "NewNoticeTableViewCell.h"
#import "UIImageView+WebCache.h"

@implementation NewNoticeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        [self createCell];
    }
    
    return self;
}

- (void)createCell
{
    self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 40, 40)];
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.model.img]];
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.imgView.frame), 10, [UIScreen mainScreen].bounds.size.width - 50, 20)];
    
}

- (void)setModel:(NewNoticeModel *)model
{
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
