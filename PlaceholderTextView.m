//
//  PlaceholderTextView.m
//
//  Created by hara on 2015/08/05.
//

#import "PlaceholderTextView.h"

@interface PlaceholderTextView ()
#define ADJUST_X 4

@property (strong, nonatomic) UILabel *placeholderLabel;

@end

@implementation PlaceholderTextView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.placeholderLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.placeholderLabel.textColor = [UIColor lightGrayColor];
    [self addSubview:self.placeholderLabel];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textDidChange:)
                                                 name:UITextViewTextDidChangeNotification
                                               object:nil];
}

- (NSString *)placeholder {
    return self.placeholderLabel.text;
}

- (void)setPlaceholder:(NSString *)placeholder {
    self.placeholderLabel.text = placeholder;
    
    [self.placeholderLabel sizeToFit];
    UIEdgeInsets margin = self.textContainerInset;
    CGRect frame = self.placeholderLabel.frame;
    frame.origin.x += (margin.left + ADJUST_X);
    frame.origin.y += margin.top;
    self.placeholderLabel.frame = frame;
    
    self.placeholderLabel.hidden = (self.text.length > 0);
}

- (void)textDidChange:(NSNotification *)notification {
    self.placeholderLabel.hidden = (self.text.length > 0);
}

@end
