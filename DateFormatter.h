//
//  DateFormatter.h
//  QuelonApp
//
//  Created by hara on 2015/07/01.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 日付フォーマット
@interface DateFormatter : NSObject
+ (NSDateFormatter *)sharedDateFormatter;
+ (NSDateComponents *)dateComponentFromDate:(NSDate *)date;

@end
