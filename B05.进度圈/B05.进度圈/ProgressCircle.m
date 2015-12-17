//
//  ProgressCircle.m
//  B05.进度圈
//
//  Created by Apple on 14/12/30.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ProgressCircle.h"

@implementation ProgressCircle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat textH = 20;
    CGFloat textW = 30;
    CGFloat viewW = rect.size.width;
    CGFloat viewH = rect.size.height;
    
    CGFloat textX = (viewW - textW) * 0.5;
    CGFloat textY = (viewH - textH) * 0.5;
    
    // 1.画文字
    NSString *text = [NSString stringWithFormat:@"%.2f",self.pregress];
    [text drawInRect:CGRectMake(textX, textY, textW, textH) withAttributes:nil];
    
    
    // 2.画弧
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //半径
    CGFloat radius = (viewW - 10) * 0.5;
    
    CGFloat endAngle = self.pregress * 2 * M_PI - M_PI_4;
    
    CGContextAddArc(context, viewW * 0.5, viewH * 0.5, radius, - M_PI_4, endAngle, 0);
    CGContextStrokePath(context);
    
}


-(void)setPregress:(float)pregress{
    _pregress = pregress;
    
    //重绘
    [self setNeedsDisplay];
}

@end
