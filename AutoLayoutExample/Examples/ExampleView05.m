//
//  ExampleView05.m
//  AutoLayoutExample
//
//  Created by Joe on 2016/10/17.
//  Copyright © 2016年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import "ExampleView05.h"

@interface ExampleView05 ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ExampleView05

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)action:(id)sender {
    
    static NSString *const string = @"这是一个很长的字符串";
    NSString *content = @"";
    
    NSInteger count = arc4random() % 5;
    
    for (int i = 0; i < count; i++) {
        content = [content stringByAppendingString:string];
    }
    self.label.text = content;
}

@end
