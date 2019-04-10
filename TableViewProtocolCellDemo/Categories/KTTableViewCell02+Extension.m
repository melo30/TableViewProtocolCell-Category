//
//  KTTableViewCell02+Extension.m
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import "KTTableViewCell02+Extension.h"

@implementation KTTableViewCell02 (Extension)

- (void)configCellWithModel:(Model *)model {
    [self configShowViewWithTitle02:model.title];
}

@end
