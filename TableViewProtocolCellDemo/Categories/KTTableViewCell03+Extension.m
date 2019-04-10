//
//  KTTableViewCell03+Extension.m
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import "KTTableViewCell03+Extension.h"

@implementation KTTableViewCell03 (Extension)

- (void)configCellWithModel:(Model *)model {
    [self configShowViewWithTitle03:model.title];
}
@end
