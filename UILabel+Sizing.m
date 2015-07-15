//
//  UILabel+Sizing.m
//
//  Created by hara on 2015/06/20.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UILabel+Sizing.h"

@implementation UILabel (Sizing)

- (void)sizeToFitV {
    CGSize newSize = [self sizeThatFits:CGSizeMake(self.frame.size.width, 9999)];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, newSize.height);
}

@end
