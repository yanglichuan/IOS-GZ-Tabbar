//
//  RegisterViewController.m
//  B07.Modal
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "RegisterViewController.h"
#import "AppDelegate.h"

@interface RegisterViewController ()
- (IBAction)back:(id)sender;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}


- (IBAction)back:(id)sender {
    
    //modal
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"模态窗口消失完成");
        //打印窗口的子视图
        
        //通过Appdelegate代理获取窗口
        AppDelegate *app = [UIApplication sharedApplication].delegate;
        NSLog(@"%@",app.window.subviews);
        
    }];
    
}
@end
