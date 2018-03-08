//
//  HomeViewModel.m
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import "HomeViewModel.h"
#import "MBKRequest.h"
#import "HomeModel.h"
#import <MJExtension.h>

@implementation HomeViewModel

- (void)getDatas{
    NSDictionary *params= @{@"articleType":@"2",@"pageNum":@"1",@"length":@"10"};
    [MBKRequest postWithUrl:@"https://www.jianzhiwork.com:8446/api/getHotProblem" params:params success:^(id respondseObj) {
        NSArray *data = [[respondseObj objectForKey:@"result"] objectForKey:@"rows"];
        NSMutableArray *temparr = @[].mutableCopy;
        [data enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [temparr addObject:[HomeModel mj_objectWithKeyValues:obj]];
        }];
        self.datas = temparr;
    } failure:^(NSError *error) {
        
    }];
}
- (void)setDatas:(NSMutableArray<HomeModel *> *)datas{
    _datas = datas;
    [self.table reloadData];
}
@end
