//
//  UIView+FromNib.m
//
//  Created by hara on 2015/03/06.
//  Copyright (c) 2015年 hara. All rights reserved.
//

#import "UIView+FromNib.h"

@implementation UIView (FromNib)

+ (instancetype)viewFromNib {
    return [self viewFromNib:NSStringFromClass([self class])];
}

+ (instancetype)viewFromNib:(NSString *)inNibName {
    // [UINib nibWithNibName:bundle:] では、該当 nib ファイルの有り無しを正しく判別できないので、
    // 事前にファイルの有り無しをチェックする
    NSString* nibPath = [[NSBundle mainBundle] pathForResource:inNibName ofType:@"nib"];
    if (nibPath) {
        UINib* nib = [UINib nibWithNibName:inNibName bundle:nil];
        NSArray* views = [nib instantiateWithOwner:nil options:nil];
        return views[0];
    }
    
    return nil;
}

@end
