//
//  UINavigationItem+WithoutBackbuttonTitle.m
//
//  Created by hara on 2015/07/15.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "UINavigationItem+WithoutBackbuttonTitle.h"

@implementation UINavigationItem (WithoutBackbuttonTitle)

- (void)withoutBackbuttonTitle {
    // 次に表示される ViewController の戻るボタンの文字列を消すには、遷移元の ViewController のタイトルを消しておく必要がある
    self.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
}

@end
