//
//  LikeViewController.m
//  Stamp
//
//  Created by 刘生源 on 16/1/19.
//  Copyright (c) 2016年 qianfeng. All rights reserved.
//

#import "LikeViewController.h"

@interface LikeViewController ()

@end

@implementation LikeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor purpleColor];
    [self createItems];
}

- (void)createItems{
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    
    [btn setBackgroundImage:[UIImage imageNamed:@"header_icon_more@2x"] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(leftBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    
}

#pragma mark 左侧侧按钮
- (void)leftBtnClick:(UIButton *)btn{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
