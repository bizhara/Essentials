//
//  WebViewController.m
//
//  Created by hara on 2015/07/15.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "WebViewController.h"
#import "UIViewController+FromNib.h"

@interface WebViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (copy, nonatomic) NSString *urlString;

@end

@implementation WebViewController

+ (instancetype)viewControllerWithUrlString:(NSString *)urlString title:(NSString *)title {
    WebViewController *me = [self viewControllerFromNib];
    me.urlString = urlString;
    me.title = title;
    return me;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.urlString]];
    [self.webView loadRequest:request];
}

@end
