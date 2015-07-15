//
//  WebViewController.h
//
//  Created by hara on 2015/07/15.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/// Web view controller
@interface WebViewController : UIViewController
+ (instancetype)viewControllerWithUrlString:(NSString *)urlString title:(NSString *)title;

@end
