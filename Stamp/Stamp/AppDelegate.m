//
//  AppDelegate.m
//  Stamp
//
//  Created by qianfeng on 16/1/18.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftSlideViewController.h"
#import "LeftViewController.h"
#import "MainViewController.h"
#import "BigViewController.h"
#import "NoticeViewController.h"
#import "LikeViewController.h"

@interface AppDelegate ()
@property (nonatomic,strong)LeftViewController * left;
@property (nonatomic,strong)UITabBarController * tabbar;
@property (nonatomic,strong)LeftSlideViewController * leftSlide;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _tabbar = [[UITabBarController alloc]init];;
    
    [self createTabbar];
    
    _left = [[LeftViewController alloc]init];
    
    _leftSlide = [[LeftSlideViewController alloc]initWithLeftView:_left andMainView:_tabbar];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = _leftSlide;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)createTabbar{
    
    MainViewController * main = [[MainViewController alloc]init];
    UINavigationController * nav1 = [[UINavigationController alloc]initWithRootViewController:main];
    
    
    BigViewController * big = [[BigViewController alloc]init];
    UINavigationController * nav2 = [[UINavigationController alloc]initWithRootViewController:big];
    
    NoticeViewController * notice = [[NoticeViewController alloc]init];
    UINavigationController * nav3 = [[UINavigationController alloc]initWithRootViewController:notice];
    
    LikeViewController * like = [[LikeViewController alloc]init];
    UINavigationController * nav4 = [[UINavigationController alloc]initWithRootViewController:like];
    
    nav1.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    
    nav2.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"大盘直播" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    
    nav3.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"公告" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    
    nav4.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"自选藏品" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    

    _tabbar.viewControllers = @[nav1,nav2,nav3,nav4];
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
