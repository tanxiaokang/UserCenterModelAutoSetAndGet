//
//  NSObject+Property.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import "NSObject+Property.h"

@implementation NSObject (Property)

- (void)mdf_creatPropertyCodeWith:(NSDictionary *)dict {
    
    NSMutableString *strM = [NSMutableString string];
    [dict  enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull propertyName, id  _Nonnull value, BOOL * _Nonnull stop) {
        NSString *code;
        if ([value isKindOfClass:NSClassFromString(@"__NSCFString")]) {
            code=[NSString stringWithFormat:@"@property (nonatomic,strong) NSString *%@",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSCFNumber")]){
            code=[NSString stringWithFormat:@"@property (nonatomic,assign) NSInteger %@",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSArrayI")]){
            code=[NSString stringWithFormat:@"@property (nonatomic,strong) NSArray *%@",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSDictionary")]){
            code=[NSString stringWithFormat:@"@property (nonatomic,strong) NSDictionary %@",propertyName];
        } else if ([value isKindOfClass:NSClassFromString(@"NSTaggedPointerString")]) {
            code=[NSString stringWithFormat:@"@property (nonatomic,strong) NSString *%@",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"__NSCFConstantString")]) {
            code=[NSString stringWithFormat:@"@property (nonatomic,strong) NSString *%@",propertyName];
        }else if ([value isKindOfClass:NSClassFromString(@"NSTaggedPointerString")]) {
            code=[NSString stringWithFormat:@"@property (nonatomic,strong) NSString *%@",propertyName];
        } else {
            NSAssert(value, @"这是什么鬼");
        }
        [strM appendFormat:@"\n%@;",code];
    }];
    NSLog(@"%@",strM);
}
@end
