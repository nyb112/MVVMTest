//
//  HomeCell.m
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import "HomeCell.h"
#import "HomeModel.h"
#import <UIImageView+WebCache.h>

@implementation HomeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setModel:(HomeModel *)model{
    [self.img sd_setImageWithURL:[NSURL URLWithString:model.imgUrl]];
    self.title.text = model.title;
    self.viewCount.text = [NSString stringWithFormat:@"浏览%ld",model.clickSum];
    self.likeCount.text = [NSString stringWithFormat:@"喜欢%ld",model.likeSum];
    self.commentCount.text = [NSString stringWithFormat:@"评论%ld",model.commentSum];
    
}
@end
