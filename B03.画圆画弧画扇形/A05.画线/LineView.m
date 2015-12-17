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
    [self drawSector];
    
}

#pragma mark 画扇形
-(void)drawSector{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //设置一个起点
    CGContextMoveToPoint(context, 100, 100);
    
    CGContextAddArc(context, 100, 100, 60, - M_PI_4, - 3 * M_PI_4, 1);
   
    CGContextClosePath(context);
    
    CGContextStrokePath(context);

}

#pragma mark 画弧
-(void)drawArc{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    /**
     *x,y 圆心
     *radius 半径
     *startAngle 画弧的起始位置
     *endAngel 画弧的结束位置
     * clockwise 0 顺针 1 逆时针
     */
    CGContextAddArc(context, 100, 100, 60, 0, M_PI, 1);
    
    CGContextClosePath(context);
    
    //渲染
    CGContextStrokePath(context);
    //CGContextFillPath(context);
}


#pragma mark 画圆
-(void)drawCircle{
    //上下文
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    //画圈
    CGContextAddEllipseInRect(context, CGRectMake(10, 10, 100, 100));
    
    //渲染
    CGContextStrokePath(context);
}

@end