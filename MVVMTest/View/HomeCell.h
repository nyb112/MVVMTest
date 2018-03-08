//
//  HomeCell.h
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HomeModel;
@interface HomeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *viewCount;
@property (weak, nonatomic) IBOutlet UILabel *likeCount;
@property (weak, nonatomic) IBOutlet UILabel *commentCount;
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property(nonatomic, strong)HomeModel *model;
@end
