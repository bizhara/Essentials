//
//  ClassInfo.h
//
//  Created by hara on 2015/06/03.
//

#import <Foundation/Foundation.h>

/// Objective-C Class information.
@interface ClassInfo : NSObject
/// Class 名を文字列として得る
+ (NSString *)className:(id)instance;

/// Class の property 一覧を文字列として得る
+ (NSArray *)propertyNames:(id)instance;

/// Class の property を key と value のペアで返す
+ (NSDictionary *)propertyValues:(id)instance;
+ (NSDictionary *)propertyValuesFromNames:(NSArray *)propertyNames;

/// key と value のペアで示された property を Class に設定する
+ (void)setPropertyValues:(id)instance by:(NSDictionary *)propertyValues;

@end
