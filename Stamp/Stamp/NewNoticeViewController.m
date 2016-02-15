//
//  NewNoticeViewController.m
//  Stamp
//
//  Created by qianfeng on 16/1/25.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#define SCREEN_W [UIScreen mainScreen].bounds.size.width
#define SCREEN_H [UIScreen mainScreen].bounds.size.height

#import "NewNoticeViewController.h"
#import "AFNetworking.h"
#import "URL.h"
#import "NewNoticeModel.h"

@interface NewNoticeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UIButton * leftBtn;
@property (nonatomic ,strong) UIView * topView;
@property (nonatomic, strong) NSMutableArray * dataArr;
@property (nonatomic, strong) UITableView * tableview;

@end

@implementation NewNoticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArr = [[NSMutableArray alloc] initWithCapacity:0];

    self.view.backgroundColor = [UIColor whiteColor];
    [self createTopView];

}

#pragma mark -- 获取数据
- (void)loadData
{
    AFHTTPRequestOperationManager * manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:NEW_NOTICE_URL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        
        NSDictionary * dic1 = dic[@"data"];
        NSArray * arr = dic1[@"NewNews"];
        
        for (NSDictionary * dic in arr)
        {
            [self.dataArr addObject:dic];
        }
        
        
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        
        
    }];
}

#pragma mark -- 创建顶部view
- (void)createTopView
{
    self.leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 40, 50, 30)];
    self.leftBtn.backgroundColor = [UIColor redColor];
    [self.leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    [self.leftBtn addTarget:self action:@selector(leftBtnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    
    self.topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, 79)];
    self.topView.backgroundColor = [UIColor redColor];
    
    [self.topView addSubview:self.leftBtn];
    [self.view addSubview:self.topView];
}

#pragma mark -- 返回按钮方法
- (void)leftBtnClick:(UIButton *)btn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
