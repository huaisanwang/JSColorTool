//
//  UIColor+JS.h
//  JSColorTool
//
//  Created by JsonWang on 16/1/18.
//  Copyright © 2016年 JsonWang. All rights reserved.
//


#define RGBA_COLOR(R, G, B, A) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:A]
#define RGB_COLOR(R, G, B) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:1.0f]
#import <UIKit/UIKit.h>

@interface UIColor (JS)
/**
 *  从十六进制字符串获取颜色
 *
 *  @param colorStr 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @return UIcolor
 */
+(UIColor *)colorWithJsString:(NSString *)colorStr;
+(UIColor *)colorWithJsString:(NSString *)colorStr alpha:(CGFloat)alpha;

@end
