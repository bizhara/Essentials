//
//  PlaceholderTextView.m
//
//  Created by hara on 2015/08/05.
//

#import "PlaceholderTextView.h"
#import "UIColor+HexColor.h"

@interface PlaceholderTextView ()
#define ADJUST_X 4
#define TEXT_COLOR @"#c7c7c7"

@property (strong, nonatomic) UILabel *placeholderLabel;

@end

@implementation PlaceholderTextView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.placeholderLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.placeholderLabel.font = self.font;
    self.placeholderLabel.textColor = [UIColor colorWithHexColor:TEXT_COLOR];
    [self addSubview:self.placeholderLabel];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textDidChange:)
                                                 name:UITextViewTextDidChangeNotification
                                               object:nil];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (NSString *)placeholder {
    return self.placeholderLabel.text;
}

- (void)setPlaceholder:(NSString *)placeholder {
    self.placeholderLabel.text = placeholder;
    
    [self.placeholderLabel sizeToFit];
    CGRect frame = self.placeholderLabel.frame;
    frame.origin.x += (self.textContainerInset.left + ADJUST_X);
    frame.origin.y += self.textContainerInset.top;
    self.placeholderLabel.frame = frame;
    
    self.placeholderLabel.hidden = (self.text.length > 0);
}

- (void)textDidChange:(NSNotification *)notification {
    self.placeholderLabel.hidden = (self.text.length > 0);
}

@end
