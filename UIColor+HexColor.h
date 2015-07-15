//
//  UIColor+HexColor.h
//
//  Created by hara on 2015/07/07.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/// Hex color (#112233) の取り扱い
@interface UIColor (HexColor)
+ (UIColor *)colorWithHexColor:(NSString *)hexColor;

@end
