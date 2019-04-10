//
//  Model.h
//  TableViewProtocolCellDemo
//
//  Created by 陈诚 on 2019/4/10.
//  Copyright © 2019 陈诚. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *identifier;//cellId

@end

NS_ASSUME_NONNULL_END
