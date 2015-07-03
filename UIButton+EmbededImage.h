//
//  UIButton+EmbededImage.h
//  QuelonApp
//
//  Created by hara on 2015/07/02.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/// イメージを内包しているボタン
@interface UIButton (EmbededImage)
- (void)makeLeftImageButton:(UIImage *)image title:(NSString *)title;
- (void)makeRightImageButton:(UIImage *)image title:(NSString *)title;

@end
