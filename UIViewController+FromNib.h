//
//  UIViewController+FromNib.h
//  CheckboxAndRadioButton
//
//  Created by hara on 2014/08/08.
//  Copyright (c) 2014年 Kazuaki Hara. All rights reserved.
//

#import <UIKit/UIKit.h>

/// ViewController を nib から生成する
@interface UIViewController (FromNib)
/// クラス名と nib 名が同じと想定
+ (instancetype)viewControllerFromNib;

/// nib 名指定
+ (instancetype)viewControllerFromNib:(NSString*)inNibName;

/// Storyboard 名指定（指定 Storyboard 内のクラス名と同じ Storyboard ID を持っているものが対象）
+ (instancetype)viewControllerFromStoryboard:(NSString*)inStoryboardName;

@end
