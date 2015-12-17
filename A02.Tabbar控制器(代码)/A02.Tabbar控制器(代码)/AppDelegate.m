//
//  AppDelegate.m
//  A02.Tabbar控制器(代码)
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //1.创建窗口
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //2.设置窗口的根控制器 为Tabbar控制器
    
    // 2.1创建tabbar控制器
    UITabBarController *tabbarVc = [[UITabBarController alloc] init];
    
    // 2.2设置子控制器
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    
    // 设置UITabbarButton的标题
    vc1.tabBarItem.title = @"联系人";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tab_buddy_nor"];
    vc1.tabBarItem.badgeValue = @"";
    //[tabbarVc addChildViewController:vc1];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor greenColor];
    //[tabbarVc addChildViewController:vc2];
    vc2.tabBarItem.title = @"动态";
    vc2.tabBarItem.image = [UIImage imageNamed:@"tab_qworld_nor"];
    
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor yellowColor];
    //[tabbarVc addChildViewController:vc3];
    vc3.tabBarItem.title = @"设置";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tab_me_nor"];
    
    
    //一次性添加tabbar的子控制器
    tabbarVc.viewControllers = @[vc1,vc2,vc3];
    
    window.rootViewController = tabbarVc;
    
    // 3.设置窗口为主窗口并可见
    [window makeKeyAndVisible];
    self.window = window;
    
    return YES;
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
