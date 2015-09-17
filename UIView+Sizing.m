//
//  UIView+Sizing.m
//
//  Created by hara on 2015/06/20.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UIView+Sizing.h"

@implementation UIView (Sizing)

- (void)sizeToFitV {
    [self sizeToFitV:0];
}

- (void)sizeToFitV:(CGFloat)adjustV {
    CGSize newSize = [self sizeThatFits:CGSizeMake(self.frame.size.width, 0)];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, newSize.height + adjustV);
}

@end
