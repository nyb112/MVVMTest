//
//  HomeVC.m
//  MVVMTest
//
//  Created by LEON on 2018/3/8.
//  Copyright © 2018年 LEON. All rights reserved.
//

#import "HomeVC.h"
#import "HomeUIService.h"
#import "HomeModel.h"
#import "HomeViewModel.h"
#import "HomeCell.h"

@interface HomeVC ()
@property(nonatomic, strong)HomeUIService *service;
@property(nonatomic, strong)HomeViewModel *viewModel;
@property(nonatomic, strong)UITableView *table;

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.table];
    [self.viewModel getDatas];
}

#pragma mark ---getter
- (HomeUIService *)service{
    if (!_service) {
        _service = [[HomeUIService alloc] init];
        _service.viewModel = self.viewModel;
        
    }
    return _service;
}
- (HomeViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [[HomeViewModel alloc] init];
        _viewModel.vc = self;
        _viewModel.table=self.table;
    }
    return _viewModel;
}
- (UITableView *)table{
    if (!_table) {
        _table = [[UITableView alloc] initWithFrame:self.view.frame];
        _table.backgroundColor = [UIColor redColor];
        _table.delegate = self.service;
        _table.dataSource = self.service;
        [_table registerNib:[UINib nibWithNibName:NSStringFromClass([HomeCell class]) bundle:nil] forCellReuseIdentifier:@"homeCell"];
        
    }
    return _table;
}

@end
