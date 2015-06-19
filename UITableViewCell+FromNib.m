//
//  UITableViewCell+FromNib.m
//
//  Created by hara on 2015/02/26.
//  Copyright (c) 2015年 hara. All rights reserved.
//

#import "UITableViewCell+FromNib.h"

@implementation UITableViewCell (FromNib)

+ (NSString*)nibName {
    return NSStringFromClass([self class]);
}

+ (NSString*)cellId {
    return NSStringFromClass([self class]);
}

+ (CGFloat)cellHeight {
    static NSMutableDictionary* calculatedHeights;
    static dispatch_once_t once_t;
    dispatch_once(&once_t, ^{
        calculatedHeights = [NSMutableDictionary dictionary];
    });
    
    NSString* nibName = [self nibName];
    CGFloat cellHeight = [calculatedHeights[nibName] floatValue];
    if (cellHeight) {
        return cellHeight;
    }
    UINib* nib = [UINib nibWithNibName:nibName bundle:nil];
    UITableViewCell* cell = [nib instantiateWithOwner:nil options:nil][0];
    cellHeight = cell.frame.size.height;
    calculatedHeights[nibName] = [NSNumber numberWithFloat:cellHeight];
    return cellHeight;
}

@end
