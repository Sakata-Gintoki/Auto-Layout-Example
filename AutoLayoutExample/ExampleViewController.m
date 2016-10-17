//
//  ExampleViewController.m
//  AutoLayoutExample
//
//  Created by Joe on 2016/10/12.
//  Copyright © 2016年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import "ExampleViewController.h"
#import "ExampleView.h"
#import "UIView+Layout.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    ExampleView *exampleView = [ExampleView initFromNibWithIndex:self.index];
    [exampleView fullLayoutToParentView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
