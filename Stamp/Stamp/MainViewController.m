//
//  MainViewController.m
//  Stamp
//
//  Created by 刘生源 on 16/1/19.
//  Copyright (c) 2016年 qianfeng. All rights reserved.
//
 
#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    
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
    
    UIApplication * app = [UIApplication sharedApplication];//获取当前应用程序
    
    AppDelegate * delegate = app.delegate;
    
    if ([delegate.leftSlide closed]) {//切换侧滑效果
        [delegate.leftSlide openLeftView];
    }else{
        [delegate.leftSlide closed];
    }
    
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
