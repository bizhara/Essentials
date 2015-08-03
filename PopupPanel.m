//
//  PopupPanel.m
//
//  Created by hara on 2015/07/31.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "PopupPanel.h"

@interface PopupPanel () <UIPopoverPresentationControllerDelegate>

@end

@implementation PopupPanel

- (void)initPopupPanelWithView:(UIView *)sourceView {
    self.modalPresentationStyle = UIModalPresentationPopover;
    self.preferredContentSize = self.view.frame.size;
    self.popoverPresentationController.sourceView = sourceView;
    self.popoverPresentationController.sourceRect = [self calcBaseRectFromView:sourceView];
    self.popoverPresentationController.permittedArrowDirections = 0; // arrow 不要
    self.popoverPresentationController.delegate = self;
}

- (CGRect)calcBaseRectFromView:(UIView *)sourceView {
    // arrow 不要にすると、sourceView.center に self.view.center を合わせるように位置調整されるので、基本はその位置を返す
    return sourceView.bounds; // bounds を指定しないとズレる
}

// UIPopoverPresentationControllerDelegate
- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

@end
