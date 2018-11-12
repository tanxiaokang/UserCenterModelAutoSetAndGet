//
//  main.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Property.h"
#import "AccountModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AccountModel *model = [AccountModel new];
        model.name = @"张三";
        [model mdf_creatPropertyCodeWith:@{@"name":@1,@"age":@"11"}];
        
        NSDictionary * dic1 = @{@"key1":@"1",
                                @"key2":@"2"};
        NSDictionary * dic2 = @{@"key2":@"2",
                                @"key1":@"1"};
        if ([dic1 isEqualToDictionary:dic2]) {
            NSLog(@"Equal contents");
        }
        
        NSLog(@"end");
    }
    return 0;
}
