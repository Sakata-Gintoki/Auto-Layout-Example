//
//  ExampleView01.m
//  AutoLayoutExample
//
//  Created by Joe on 2016/10/12.
//  Copyright © 2016年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import "ExampleView.h"

@implementation ExampleView

+ (instancetype)initFromNibWithIndex:(NSInteger)index
{
    NSString *nibName = [NSString stringWithFormat:@"ExampleView0%@",@(index+1)];
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    ExampleView *view = [nib instantiateWithOwner:self options:nil][0];
    [view initWithSubViews];
    return view;
}

- (void)initWithSubViews
{
    //override in subclass
}

@end
