//
//  UIViewController+FromNib.m
//
//  Created by hara on 2014/08/08.
//  Copyright (c) 2014年 hara. All rights reserved.
//

#import "UIViewController+FromNib.h"

@implementation UIViewController (FromNib)

+ (instancetype)viewControllerFromNib
{
    return [self viewControllerFromNib:NSStringFromClass([self class])];
}

+ (instancetype)viewControllerFromNib:(NSString*)inNibName
{
    // xib ではなく nib で探さないと見つからない
    // また、[UINib nibWithNibName:bundle:] では、存在しない inNibName でもなんらかの値が返ってきてしまって、判別に使えなかった
    NSString* nibPath = [[NSBundle mainBundle] pathForResource:inNibName ofType:@"nib"];
    
    UIViewController* viewController;
    if (nibPath) {
        // 存在しない inNibName を渡すと、alloc のみ成功して init されない ViewController ができてしまう
        viewController = [[self alloc] initWithNibName:inNibName bundle:nil];
    }
    else {
        viewController = nil;
    }
    
    return viewController;
}

+ (instancetype)viewControllerFromStoryboard:(NSString*)inStoryboardName
{
    // 指定された Storyboard のクラス名と同じ Storyboard ID を持つものを対象とする
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:inStoryboardName bundle:nil];
    NSString* storyboardId = NSStringFromClass(self);
    UIViewController* viewController = [storyboard instantiateViewControllerWithIdentifier:storyboardId];
    return viewController;
}

@end
