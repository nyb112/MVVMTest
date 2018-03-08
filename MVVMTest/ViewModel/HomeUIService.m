//
//  HomeUIService.m
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import "HomeUIService.h"
#import "HomeCell.h"
#import "HomeViewModel.h"


@implementation HomeUIService
#pragma mark ---TableDelegate,TableDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewModel.datas.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeCell *Cell = [tableView dequeueReusableCellWithIdentifier:@"homeCell"];
    Cell.model = self.viewModel.datas[indexPath.row];
    return Cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

@end
