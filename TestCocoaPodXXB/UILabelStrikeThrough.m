//
//  UILabelStrikeThrough.m
//  ijhealth
//
//  Created by xxb on 16/8/16.
//  Copyright © 2016年 智业互联网络科技有限公司 艾嘉健康. All rights reserved.
//

#import "UILabelStrikeThrough.h"

@implementation UILabelStrikeThrough

//@synthesize isWithStrikeThrough;

- (void)drawRect:(CGRect)rect{
    if (_isWithStrikeThrough){
        CGContextRef c = UIGraphicsGetCurrentContext();
        
//        CGFloat red[4] = {1.0f,0.0f, 0.0f,0.8f}; //红色
        //CGFloat black[4] = {0.0f, 0.0f, 0.0f, 0.5f};//黑色
//        CGContextSetStrokeColor(c, red);
        UIColor *textColor = self.textColor;
        CGContextSetStrokeColorWithColor(c, [textColor CGColor]);
        CGContextSetLineWidth(c, 1);
        CGContextBeginPath(c);
        //画直线
        //CGFloat halfWayUp = rect.size.height/2 + rect.origin.y;
        //CGContextMoveToPoint(c, rect.origin.x, halfWayUp );//开始点
        //CGContextAddLineToPoint(c, rect.origin.x + rect.size.width, halfWayUp);//结束点
        //画斜线
        CGFloat height = self.font.lineHeight;
        CGContextMoveToPoint(c, rect.origin.x, height / 2);
        CGContextAddLineToPoint(c, rect.size.width, height / 2); //斜线
        CGContextStrokePath(c);
    }
    
    [super drawRect:rect];
}

@end
