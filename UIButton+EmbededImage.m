//
//  UIButton+EmbededImage.m
//  QuelonApp
//
//  Created by hara on 2015/07/02.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UIButton+EmbededImage.h"

@implementation UIButton (EmbededImage)

- (void)makeLeftImageButton:(UIImage *)image title:(NSString *)title imageMarginLeft:(CGFloat)imageMarginLeft {
    [self setImage:image forState:UIControlStateNormal];
    self.imageEdgeInsets = UIEdgeInsetsMake(0, imageMarginLeft, 0, 0);
    [self setTitle:title forState:UIControlStateNormal];
    self.titleEdgeInsets = UIEdgeInsetsMake(0, image.size.width + imageMarginLeft, 0, 0);
    [self setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
}

@end
