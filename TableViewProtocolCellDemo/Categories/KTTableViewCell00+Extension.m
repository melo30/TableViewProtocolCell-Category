//
//  KTTableViewCell00+Extension.m
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import "KTTableViewCell00+Extension.h"

@implementation KTTableViewCell00 (Extension)

#pragma mark - CellConfigProtocol
- (void)configCellWithModel:(Model *)model {
    [self configShowViewWithTitle00:model.title];
}

@end
