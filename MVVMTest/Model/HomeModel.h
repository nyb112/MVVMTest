//
//  HomeModel.h
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeModel : UIView
@property(nonatomic, assign)NSInteger commentSum;//评论数
@property(nonatomic, copy)NSString *author;//作者
@property(nonatomic, copy)NSString *Id;//id
@property(nonatomic, copy)NSString *imgUrl;//展示图
@property(nonatomic, assign)NSInteger likeSum;//赞数
@property(nonatomic, assign)NSInteger clickSum;//浏览数
@property(nonatomic, assign)NSInteger status;//状态
@property(nonatomic, copy)NSString *text;//文章详情
@property(nonatomic, copy)NSString *createTime;//创建时间
@property(nonatomic, copy)NSString *updateTime;//更新时间
@property(nonatomic, strong)NSMutableArray *tags;
@property(nonatomic, copy)NSString *title;//文章名
@property(nonatomic, assign)CGFloat text_h;//文章长度
@end
