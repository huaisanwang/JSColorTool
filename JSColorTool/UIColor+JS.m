//
//  UIColor+JS.m
//  JSColorTool
//
//  Created by JsonWang on 16/1/18.
//  Copyright © 2016年 JsonWang. All rights reserved.
//



#import "UIColor+JS.h"

@implementation UIColor (JS)


+(UIColor *)colorWithJsString:(NSString *)colorStr
{
    return [self colorWithJsString:colorStr alpha:1.0];
}
+(UIColor *)colorWithJsString:(NSString *)colorStr alpha:(CGFloat)alpha
{
    //删除字符串中的空格
    NSString *cString =[colorStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if([cString length] < 6 || [cString length] > 8){
        return [UIColor clearColor];
    }
    if ([cString hasPrefix:@"0x"]) {
        cString = [cString substringFromIndex:2];
    }
    if ([cString hasPrefix:@"#"]) {
        cString =[cString substringFromIndex:1];
    }
    if ([cString length] !=6) {
        return [UIColor clearColor];
    }
    
    //字符转换
    NSRange range;
    range.location=0;
    range.length=2;
    //r
    NSString *rStr = [cString substringWithRange:range];
    //g
    range.location=2;
    NSString *gStr =[cString substringWithRange:range];
    //b
    range.location =4;
    NSString *bStr =[cString substringWithRange:range];
    
    unsigned int r,g,b;
    [[NSScanner scannerWithString:rStr] scanHexInt:&r];
    [[NSScanner scannerWithString:gStr] scanHexInt:&g];
    [[NSScanner scannerWithString:bStr] scanHexInt:&b];
    
    UIColor *color = [UIColor colorWithRed:((float)r/255.0f) green:((float)g/255.0f) blue:((float)b/255.0f) alpha:alpha];
    return color;
}
@end
