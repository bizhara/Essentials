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

#define IMAGE_MARGIN_RIGHT IMAGE_MARGIN_LEFT
#define TITLE_MARGIN_RIGHT TITLE_MARGIN_LEFT

@implementation UIButton (EmbededImage)

- (void)makeLeftImageButton:(UIImage *)image title:(NSString *)title {
    [self setImage:image forState:UIControlStateNormal];
    self.imageEdgeInsets = UIEdgeInsetsMake(0, IMAGE_MARGIN_LEFT, 0, 0);
    
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel sizeToFit];
    CGFloat myWidth = self.frame.size.width - (image.size.width + TITLE_MARGIN_LEFT);
    NSInteger titleX = (myWidth / 2) - (self.titleLabel.frame.size.width / 2);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, titleX, 0, 0);
    
    [self setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
}

- (void)makeRightImageButton:(UIImage *)image title:(NSString *)title {
    NSInteger titleAreaWidth = self.frame.size.width - (image.size.width + IMAGE_MARGIN_RIGHT);
    
    [self setImage:image forState:UIControlStateNormal];
    self.imageEdgeInsets = UIEdgeInsetsMake(0, titleAreaWidth, 0, 0);
    
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel sizeToFit];
    NSInteger titleX = (titleAreaWidth / 2) - (self.titleLabel.frame.size.width / 2) - image.size.width;
    self.titleEdgeInsets = UIEdgeInsetsMake(0, titleX, 0, 0);
    
    [self setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
}

@end
