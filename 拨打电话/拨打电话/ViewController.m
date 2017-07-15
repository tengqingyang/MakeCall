//
//  ViewController.m
//  拨打电话
//
//  Created by 腾庆阳 on 2017/7/15.
//  Copyright © 2017年 腾庆阳. All rights reserved.
//

#import "ViewController.h"

#import "TQYPhoneTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [btn setTitle:@"打电话" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:btn];
    
}

- (void)btnClick
{
    
    // 返回值 取消 是0  拨打是 1
    [TQYPhoneTool makeCall:@"13123456789" success:^(id status) {
        NSLog(@"-------------   %@  --------------",status);
    }];
}


@end
