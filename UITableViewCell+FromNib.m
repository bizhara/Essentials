//
//  UITableViewCell+FromNib.m
//  Quelon-Proto
//
//  Created by hara on 2015/02/26.
//  Copyright (c) 2015年 quelon. All rights reserved.
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
    static UITableViewCell* cell;
    static dispatch_once_t once_t;
    dispatch_once(&once_t, ^{
        UINib* nib = [UINib nibWithNibName:[self nibName] bundle:nil];
        cell = (UITableViewCell*) [nib instantiateWithOwner:nil options:nil][0];
    });
    return cell.frame.size.height;
}

@end
