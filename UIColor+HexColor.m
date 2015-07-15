//
//  UIColor+HexColor.m
//
//  Created by hara on 2015/07/07.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)

+ (UIColor *)colorWithHexColor:(NSString *)hexColor {
    const char *cstr = [hexColor cStringUsingEncoding:NSASCIIStringEncoding];
    if (cstr[0] == '#') {
        cstr = cstr + 1;
    }
    return [self colorWithHexColorValue:strtol(cstr, NULL, 16)];
}

+ (UIColor *)colorWithHexColorValue:(long)hexColorValue {
    unsigned char r = (hexColorValue >> 16) & 0xFF;
    unsigned char g = (hexColorValue >> 8) & 0xFF;
    unsigned char b = hexColorValue & 0xFF;
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}

@end
