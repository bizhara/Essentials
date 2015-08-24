//
//  OvalLabel.m
//
//  Created by hara on 2015/08/19.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "OvalLabel.h"


@implementation OvalLabel

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize newSize = [super sizeThatFits:size];
    
    NSInteger adjust = (newSize.height / 2) + 1;
    newSize.width += adjust;
    return newSize;
}

- (void)sizeToFit {
    dispatch_async(dispatch_get_main_queue(), ^{
        [super sizeToFit];
        
        CAShapeLayer *shape = [[CAShapeLayer alloc] init];
        NSInteger adjust = (CGRectGetHeight(self.bounds) / 2) + 1;
        shape.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:adjust].CGPath;
        self.layer.mask = shape;
        self.layer.masksToBounds = YES;
    });
}

@end
