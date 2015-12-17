//
//  ViewController.m
//  B05.进度圈
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "ProgressCircle.h"

@interface ViewController ()

@property(weak,nonatomic)IBOutlet ProgressCircle *progressCircle;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)sliderChange:(UISlider *)sender{
    
    NSLog(@"%f",sender.value);
    
    self.progressCircle.pregress = sender.value;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
