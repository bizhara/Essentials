//
//  UIButton+EmbededImage.m
//  QuelonApp
//
//  Created by hara on 2015/07/02.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UIButton+EmbededImage.h"

#define IMAGE_MARGIN_LEFT 4
#define TITLE_MARGIN_LEFT 4

@implementation UIButton (EmbededImage)

- (void)makeLeftImageButton:(UIImage *)image title:(NSString *)title {
    [self setImage:image forState:UIControlStateNormal];
    self.imageEdgeInsets = UIEdgeInsetsMake(0, IMAGE_MARGIN_LEFT, 0, 0);
    
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel sizeToFit];
    CGFloat myWidth = self.frame.size.width - (image.size.width + TITLE_MARGIN_LEFT);
    CGFloat delta = (myWidth / 2) - (self.titleLabel.frame.size.width / 2);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, delta, 0, 0);
    
    [self setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
}

@end
