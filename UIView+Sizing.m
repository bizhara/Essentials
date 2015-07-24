//
//  UIView+Sizing.m
//
//  Created by hara on 2015/06/20.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UIView+Sizing.h"

@implementation UIView (Sizing)

- (void)sizeToFitV {
    CGSize newSize = [self sizeThatFits:CGSizeMake(self.frame.size.width, CGFLOAT_MAX)];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, newSize.height);
}

@end
