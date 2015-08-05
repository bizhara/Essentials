//
//  UIResponder+FirstResponder.m
//
//  Created by hara on 2014/07/03.
//

#import "UIResponder+FirstResponder.h"

@implementation UIResponder (FirstResponder)

- (void)hideKeyboard {
    // "If target is nil, the app sends the message to the first responder" という API 仕様を利用して、
    // first responder に resignFirstResponder を送る
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:self forEvent:nil];
}

+ (void)hideKeyboard {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

@end
