//
//  NSObject+creatPropertyMethod.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import "NSObject+creatPropertyMethod.h"

@implementation NSObject (creatPropertyMethod)

- (void)mdf_propertyMethod:(NSArray<NSString *>*)propertys{
    
    NSMutableString *strM = [NSMutableString string];
    [propertys enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSString *setStr = [NSString stringWithFormat:@"set%@",[obj capitalizedString]];    //首字母大写;
        
        // get
        NSString *getMethod = [NSString stringWithFormat:@"\n- (NSString *)%@ {\n    return [[NSUserDefaults standardUserDefaults] objectForKey:@\"Account%@Key\"];\n}",obj,setStr];
        // set
        NSString *setMethod = [NSString stringWithFormat:@"- (void)%@:(NSString *)%@ {\n    [[NSUserDefaults standardUserDefaults] setObject:%@ forKey:@\"Account%@Key\"];\n}",setStr,obj,obj,setStr];
        
        [strM appendFormat:@"%@",getMethod];
        [strM appendFormat:@"\n%@",setMethod];
    }];
    NSLog(@"%@",strM);
}

@end
