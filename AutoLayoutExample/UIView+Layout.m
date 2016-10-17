//
//  UIView+Layout.m
//  AutoLayoutExample
//
//  Created by Joe on 2016/10/15.
//  Copyright © 2016年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import "UIView+Layout.h"

@implementation UIView (Layout)

- (void)fullLayoutToParentView:(UIView *)parentView
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [parentView addSubview:self];
    
    [parentView addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:parentView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f]];
    
    [parentView addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:parentView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f]];

    [parentView addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:parentView attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.0f]];

    [parentView addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:parentView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.0f]];
}

@end
