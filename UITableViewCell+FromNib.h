//
//  UITableViewCell+FromNib.h
//
//  Created by hara on 2015/02/26.
//  Copyright (c) 2015年 hara. All rights reserved.
//

#import <UIKit/UIKit.h>

/// nib で定義された TableViewCell
@interface UITableViewCell (FromNib)
+ (NSString*)nibName;
+ (NSString*)cellId;
+ (CGFloat)cellHeight;

@end
