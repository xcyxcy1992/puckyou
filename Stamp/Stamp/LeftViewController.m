//
//  LeftViewController.m
//  Stamp
//
//  Created by 刘生源 on 16/1/19.
//  Copyright (c) 2016年 qianfeng. All rights reserved.
//

#import "LeftViewController.h"

#define SCREEN_W [UIScreen mainScreen].bounds.size.width
#define SCREEN_H [UIScreen mainScreen].bounds.size.height

@interface LeftViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray * tableViewArr;
@property (nonatomic, strong) UITableView * tableView;

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableViewArr = @[@"最新公告", @"二维码", @"关于我们"];
    
//    UIImageView * imageV = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    
//    imageV.image = [UIImage imageNamed:@"slide_left_bg"];
//    
//    [self.view addSubview:imageV];
    [self createTableView];
}

- (void)createTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, SCREEN_H) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.scrollEnabled = NO;
    
    [self.view addSubview:self.tableView];
}

#pragma mark -- tableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableViewArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"leftSlideCell"];
    
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"leftSlideCell"];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.tableViewArr[indexPath.row];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, 240)];
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:view.frame];
    imageView.image = [UIImage imageNamed:@"left_background.jpg"];
    [view addSubview:imageView];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 240;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end









