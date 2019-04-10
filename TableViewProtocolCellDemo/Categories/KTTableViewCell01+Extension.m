//
//  KTTableViewCell01+Extension.m
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import "KTTableViewCell01+Extension.h"

@implementation KTTableViewCell01 (Extension)

- (void)configCellWithModel:(Model *)model {
    [self configShowViewWithTitle01:model.title];
}

@end
