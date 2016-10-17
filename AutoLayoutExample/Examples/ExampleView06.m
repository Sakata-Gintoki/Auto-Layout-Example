//
//  ExampleView06.m
//  AutoLayoutExample
//
//  Created by Joe on 2016/10/17.
//  Copyright © 2016年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import "ExampleView06.h"
#import "ExampleTableViewCell.h"

@interface ExampleView06 () <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic ,strong) NSArray *items;

@end

@implementation ExampleView06

- (void)initWithSubViews
{
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ExampleTableViewCell" bundle:nil] forCellReuseIdentifier:@"ExampleTableViewCell"];
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    
    static NSString *const string = @"这是一个很长的字符串";
    NSString *content = @"";
    for (int i = 0; i < 10; i++) {
        content = [content stringByAppendingString:string];
        [array addObject:content];
    }
    
    _items = [[NSArray alloc]initWithArray:array];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExampleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExampleTableViewCell"];
    
    cell.titleLabel.text = _items[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;
}

@end
