//
//  PlaceholderTextView.h
//
//  Created by hara on 2015/08/05.
//

#import <UIKit/UIKit.h>

/// Placeholder 付き UITextView（xib ベース前提）
@interface PlaceholderTextView : UITextView
@property (copy, nonatomic) NSString *placeholder;

@end
