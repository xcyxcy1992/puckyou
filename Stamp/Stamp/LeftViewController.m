//
//  LeftViewController.m
//  Stamp
//
//  Created by 刘生源 on 16/1/19.
//  Copyright (c) 2016年 qianfeng. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIImageView * imageV = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    imageV.image = [UIImage imageNamed:@"slide_left_bg"];
    
    [self.view addSubview:imageV];
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
