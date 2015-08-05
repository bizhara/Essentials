//
//  UIResponder+FirstResponder.h
//
//  Created by hara on 2014/07/03.
//

#import <UIKit/UIKit.h>

/// UIResponder の first responder 関連拡張
@interface UIResponder (FirstResponder)
/// First responder のキーボードを消す
- (void)hideKeyboard;
+ (void)hideKeyboard;

@end
