//
//  HomeViewModel.h
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class HomeVC;
@class HomeModel;
@interface HomeViewModel : NSObject

@property(nonatomic, strong)NSMutableArray <HomeModel*>*datas;
@property(nonatomic, strong)UITableView *table;
@property(nonatomic, strong)HomeVC *vc;

//获取数据
- (void)getDatas;
@end
