//
//  TextImageView.m
//  B04.画文字和图片
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "TextImageView.h"

@implementation TextImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    
    CGFloat w = rect.size.width;
    CGFloat h = rect.size.height;
    
    
    //画图片
    UIImage *image = [UIImage imageNamed:@"papa"];
    //[image drawAtPoint:CGPointZero];
    //[image drawInRect:CGRectMake(10, 10, 50, 50)];
    
    //平铺
    [image drawAsPatternInRect:CGRectMake(0, 0, 180, 180)];
    
    // Drawing code
    //画文字
    NSString *text = @"B04.画文字和图片sdfasdfsdab这个方法不会换行adasdfasdfsdabadasdfa这个方法不会换行B04.画文字和图片sdfasdfsdab这个方法不会换行adasdfasdfsdabadasdfa这个方法Putranto表示，发现这些残骸的位置距离飞机最后被雷达捕获的位置大约10公里。报道称，这名官员展示了10张照片，照片中的物体类似飞机舱门、紧急滑道以及一个方形的箱子。";
    //这个方法不会换行
    //[text drawAtPoint:CGPointMake(10, 100) withAttributes:nil];
    
    // 设置字体的样式
    NSDictionary *attr = @{NSFontAttributeName:[UIFont systemFontOfSize:13],NSForegroundColorAttributeName:[UIColor yellowColor]};
    
    //指定宽度和高度
    [text drawInRect:CGRectMake(0, 0, w, h * 0.5) withAttributes:attr];
}


@end
