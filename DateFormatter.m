//
//  DateFormatter.m
//
//  Created by hara on 2015/07/01.
//  Copyright (c) 2015年 Quelon Inc. All rights reserved.
//

#import "DateFormatter.h"

#import <UIKit/UIKit.h>


@interface NSDateFormatter (WithLocale)
- (void)updateLocales;
@end

@implementation NSDateFormatter (WithLocale)
- (void)updateLocales {
    self.locale = [NSLocale currentLocale];
    self.timeZone = [NSTimeZone localTimeZone];
}
@end


@implementation DateFormatter

+ (NSDateFormatter *)sharedDateFormatter {
    static NSDateFormatter *sharedDateFormatter;
    static dispatch_once_t sharedDateFormatterOnce;
    dispatch_once(&sharedDateFormatterOnce, ^{
        // 比較的時間が掛かるため、1 度で済ませる
        sharedDateFormatter = [[NSDateFormatter alloc] init];
        sharedDateFormatter.locale = [NSLocale systemLocale];
        sharedDateFormatter.timeZone = [NSTimeZone systemTimeZone];
    });
    return sharedDateFormatter;
}

+ (NSDateFormatter *)sharedLocalizedDateFormatter {
    static NSDateFormatter *sharedLocalizedDateFormatter;
    static dispatch_once_t sharedLocalizedDateFormatterOnce;
    dispatch_once(&sharedLocalizedDateFormatterOnce, ^{
        // 比較的時間が掛かるため、1 度で済ませる
        sharedLocalizedDateFormatter = [[NSDateFormatter alloc] init];
        sharedLocalizedDateFormatter.locale = [NSLocale currentLocale];
        sharedLocalizedDateFormatter.timeZone = [NSTimeZone localTimeZone];
        
        [[NSNotificationCenter defaultCenter] addObserver:sharedLocalizedDateFormatter
                                                 selector:@selector(updateLocales)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
    });
    return sharedLocalizedDateFormatter;
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
