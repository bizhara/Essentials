//
//  ClassInfo.m
//
//  Created by hara on 2015/06/03.
//

#import "ClassInfo.h"
#import <objc/runtime.h>

@implementation ClassInfo

+ (NSString *)className:(id)instance {
    return NSStringFromClass([instance class]);
}

+ (NSArray *)propertyNames:(id)instance {
    NSMutableArray* propertyNames = [NSMutableArray array];
    
    unsigned int propertyCount = 0;
    objc_property_t* properties = class_copyPropertyList([instance class], &propertyCount);
    
    for (unsigned int index = 0; index < propertyCount; ++index) {
        objc_property_t property = properties[index];
        const char* propertyName = property_getName(property);
        if (propertyName) {
            [propertyNames addObject:[NSString stringWithUTF8String:propertyName]];
        }
    }
    
    free(properties);
    
    return [NSArray arrayWithArray:propertyNames];
}

+ (NSDictionary *)propertyValues:(id)instance {
    NSArray *propertyNames = [self propertyNames:instance];
    return [self propertyValuesFromNames:propertyNames];
}

+ (NSDictionary *)propertyValuesFromNames:(NSArray *)propertyNames {
    return [self dictionaryWithValuesForKeys:propertyNames];
}

+ (void)setPropertyValues:(id)instance to:(NSDictionary *)propertyValues {
    NSArray *propertyNames = [self propertyNames:instance];
    for (NSString *propertyName in propertyNames) {
        id propertyValue = propertyValues[propertyName];
        if (propertyValue) {
            [instance setValue:propertyValue forKey:propertyName];
        }
    }
}

@end
