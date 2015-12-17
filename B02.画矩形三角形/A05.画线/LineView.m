//
//  LineView.m
//  A05.画线
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "LineView.h"

@implementation LineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawTriangle];
    
}

#pragma mark 画三角形
-(void)drawTriangle{
    //获取上下文 上下文的输出目标就是self[view]
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置线颜色
    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1);
    
    CGContextMoveToPoint(context, 10, 10);
    //设置另外三个点

    CGContextAddLineToPoint(context, 110, 10);
    CGContextAddLineToPoint(context, 110, 110);
    //CGContextAddLineToPoint(context, 10, 10);
    //关闭路径
    CGContextClosePath(context);
    
    // 渲染
    CGContextStrokePath(context);
}

#pragma mark 画矩形
-(void)drawRectangle{
    //绘一条
    
    //获取上下文 上下文的输出目标就是self[view]
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置线颜色
    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1);
    
    // 设置线宽
    //CGContextSetLineWidth(context, 13);
    
    
    
    //画一个矩开
    
    // ＝＝＝＝＝＝＝第一方法＝＝＝＝＝＝＝＝＝＝＝＝
    //    //设置一起点
    //    CGContextMoveToPoint(context, 10, 10);
    //    //设置另外三个点
    //
    //    CGContextAddLineToPoint(context, 110, 10);
    //    CGContextAddLineToPoint(context, 110, 110);
    //    CGContextAddLineToPoint(context, 10, 110);
    //    CGContextAddLineToPoint(context, 10, 10);
    
    
    // ＝＝＝＝＝＝＝第一方法＝＝＝＝＝＝＝＝＝＝＝＝
    CGContextAddRect(context, CGRectMake(10, 10, 100, 100));
    
    //画到view [渲染]
    
    //只是画一条，【空心】
    //CGContextStrokePath(context);
    
    //填充 【实心】
    CGContextFillPath(context);
}

@end
