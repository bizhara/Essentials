//
//  DateFormatter.h
//
//  Created by hara on 2015/07/01.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 日付フォーマット
@interface DateFormatter : NSObject
/// Locale 情報に左右されない DateFormatter を使いたいとき
+ (NSDateFormatter *)sharedDateFormatter;
/// Locale 情報に合った DateFormatter を使いたいとき
+ (NSDateFormatter *)sharedLocalizedDateFormatter;

+ (NSDateComponents *)dateComponentFromDate:(NSDate *)date;

@end
