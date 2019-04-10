//
//  CellConfigProtocol.h
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"
NS_ASSUME_NONNULL_BEGIN

@protocol CellConfigProtocol <NSObject>
- (void)configCellWithModel:(Model *)model;
@end

NS_ASSUME_NONNULL_END
