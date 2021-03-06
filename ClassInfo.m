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
    NSMutableArray *propertyNames = [NSMutableArray array];
    
    unsigned int propertyCount = 0;
    objc_property_t *properties = class_copyPropertyList([instance class], &propertyCount);
    
    for (unsigned int index = 0; index < propertyCount; ++index) {
        objc_property_t property = properties[index];
        const char *propertyName = property_getName(property);
        if (propertyName) {
            [propertyNames addObject:[NSString stringWithUTF8String:propertyName]];
        }
    }
    
    free(properties);
    
    return [propertyNames copy];
}

+ (NSDictionary *)propertyValues:(id)instance {
    NSArray *propertyNames = [self propertyNames:instance];
    return [instance dictionaryWithValuesForKeys:propertyNames];
}

+ (void)setPropertyValues:(id)instance by:(NSDictionary *)propertyValues {
    @synchronized(instance) {
        NSMutableDictionary *rightPropertys = [NSMutableDictionary dictionary];
        
        NSArray *propertyNames = [self propertyNames:instance];
        for (NSString *propertyName in propertyNames) {
            id propertyValue = propertyValues[propertyName];
            if (propertyValue) {
                rightPropertys[propertyName] = propertyValue;
            }
        }
        
        [instance setValuesForKeysWithDictionary:rightPropertys];
    }
}

@end
