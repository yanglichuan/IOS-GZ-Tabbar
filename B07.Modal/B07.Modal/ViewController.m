//
//  ViewController.m
//  B07.Modal
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //弹出注册控制器
    //RegisterViewController *regVc = [[RegisterViewController alloc] init];
   
    
   

    //UITransitionView 是给模态窗口用
    
    //UILayoutContainerView 是导航控制器
    
    //从storybard加载控制器
    UIStoryboard *storyboad = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    
    id regVc = [storyboad instantiateViewControllerWithIdentifier:@"registerNavId"];
   
    [self presentViewController:regVc animated:YES completion:^{
        NSLog(@"模态窗口展现完成");
        
        //通过Appdelegate代理获取窗口
        AppDelegate *app = [UIApplication sharedApplication].delegate;
        NSLog(@"%@",app.window.subviews);
    }];
    
}

@end
