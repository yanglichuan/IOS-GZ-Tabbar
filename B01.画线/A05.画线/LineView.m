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
    //绘一条
    
    //获取上下文 上下文的输出目标就是self[view]
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置线颜色
    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1);
    
    // 设置线宽
    CGContextSetLineWidth(context, 13);
    
    
    // 设置线的头尾的样式
    CGContextSetLineCap(context, kCGLineCapButt);
    
    // 设置连接点的样式
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    //画一条线
    //设置一起点
    CGContextMoveToPoint(context, 10, 10);
    //设置连线另一个点
    CGContextAddLineToPoint(context, 30, 100);
    CGContextAddLineToPoint(context, 110, 110);
    
    //画到view [渲染]
    CGContextStrokePath(context);
    
}


@end
