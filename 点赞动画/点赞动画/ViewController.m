//
//  ViewController.m
//  点赞动画
//
//  Created by Mr.Deng on 16/1/8.
//  Copyright © 2016年 Mr.Deng. All rights reserved.
//

#import "ViewController.h"
#import "DJButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DJButton *btn = [[DJButton alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)btnClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
}

@end
