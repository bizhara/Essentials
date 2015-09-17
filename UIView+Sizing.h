//
//  UIView+Sizing.h
//
//  Created by hara on 2015/06/20.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/// UIView サイズ調整関連
@interface UIView (Sizing)
/// 高さを文字数または行数に合わせて調整
- (void)sizeToFitV;
- (void)sizeToFitV:(CGFloat)adjustV;

@end
