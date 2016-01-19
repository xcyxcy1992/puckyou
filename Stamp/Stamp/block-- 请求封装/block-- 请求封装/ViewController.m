//
//  ViewController.m
//  block-- 请求封装
//
//  Created by 李洪峰 on 15/11/2.
//  Copyright (c) 2015年 LHF. All rights reserved.
//

#import "ViewController.h"
#import "LHFHttpRequest.h"

@interface ViewController ()

@property (nonatomic,strong)LHFHttpRequest *request;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = @"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=1&category_id=0";
    
    _request = [[LHFHttpRequest alloc]init];
    
    [_request downloadDataWithUrlString:path finished:^(NSData *data) {
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"dic------%@",dic);
        NSArray *array = dic[@"applicationId"];
        
    } failed:^(NSString *errorMessage) {
        NSLog(@"error---%@",errorMessage);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
