//
//  HomeUIService.h
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class HomeViewModel;
@interface HomeUIService : NSObject<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)HomeViewModel *viewModel;


@end
