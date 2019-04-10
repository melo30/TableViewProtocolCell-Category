//
//  ViewController.m
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "CellConfigProtocol.h"
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.frame;
    
    [self requestData];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Model *model = self.datas[indexPath.row];
    NSString *cellID = model.identifier;
    UITableViewCell<CellConfigProtocol> *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if ([cell respondsToSelector:@selector(configCellWithModel:)]) {
        [cell configCellWithModel:model];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}
#pragma mark - 模拟网络请求
- (void)requestData {
    for (int i = 0; i < 40; i ++) {
        //有几种cell就需要几种cellId
        int x = arc4random() % 4;
        Model *model = [Model new];
        model.title = [NSString stringWithFormat:@"第 %d 个 cell",i];
        NSString *cellID = [NSString stringWithFormat:@"cellID_0%d",x];
        model.identifier = cellID;
        
        [self.datas addObject:model];
    }
    [self.tableView reloadData];
}
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor clearColor];
        for (int i = 0; i<4; i++) {
            NSString *cellID = [NSString stringWithFormat:@"cellID_0%d",i];
            NSString *cellClass = [NSString stringWithFormat:@"KTTableViewCell0%d",i];
            [_tableView registerClass:NSClassFromString(cellClass) forCellReuseIdentifier:cellID];
        }
    }
    return _tableView;
}

- (NSMutableArray *)datas {
    if (!_datas) {
        _datas = [NSMutableArray array];
    }
    return _datas;
}
@end
