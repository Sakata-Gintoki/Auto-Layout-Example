//
//  ExampleView01.h
//  AutoLayoutExample
//
//  Created by Joe on 2016/10/12.
//  Copyright © 2016年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleView : UIView

+ (instancetype)initFromNibWithIndex:(NSInteger)index;

- (void)initWithSubViews;

@end
