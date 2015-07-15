//
//  DateFormatter.m
//
//  Created by hara on 2015/07/01.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "DateFormatter.h"

@implementation DateFormatter

+ (NSDateFormatter *)sharedDateFormatter {
    static NSDateFormatter *dateFormatter;
    static dispatch_once_t dispatchOnce;
    dispatch_once(&dispatchOnce, ^{
        // 比較的時間が掛かるため、1 度で済ませる
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setLocale:[NSLocale systemLocale]];
        [dateFormatter setTimeZone:[NSTimeZone systemTimeZone]];
    });
    return dateFormatter;
}

+ (NSDateComponents *)dateComponentFromDate:(NSDate *)date {
    static NSCalendar *sharedCalendar;
    static dispatch_once_t dispatchOnceCalendar;
    dispatch_once(&dispatchOnceCalendar, ^{
        sharedCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    });
    return [sharedCalendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond
                             fromDate:date];
}

@end
