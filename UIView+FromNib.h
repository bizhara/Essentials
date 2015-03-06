//
//  UIView+FromNib.h
//
//  Created by hara on 2015/03/06.
//  Copyright (c) 2015年 hara. All rights reserved.
//

#import <UIKit/UIKit.h>

/// nib で定義された UIView
@interface UIView (FromNib)
/// クラス名と nib 名が同じと想定
+ (instancetype)viewFromNib;

/// nib 名指定
+ (instancetype)viewFromNib:(NSString*)inNibName;

@end
