//
//  UINavigationItem+WithoutBackbuttonTitle.h
//
//  Created by hara on 2015/07/15.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/// 次に表示される ViewController の戻るボタンのタイトルを非表示にする（遷移元の ViewController で呼び出すこと）
@interface UINavigationItem (WithoutBackbuttonTitle)
- (void)withoutBackbuttonTitle;

@end
