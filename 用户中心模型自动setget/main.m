//
//  main.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+creatPropertyMethod.h"
#import "NSObject+Property.h"
#import "AccountModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AccountModel *model = [AccountModel new];
        model.name = @"张三";
        NSLog(@"%@",model.name);
        
        [model mdf_creatPropertyCodeWith:@{@"name":@1,@"age":@"11"}];
        
        [model mdf_propertyMethod:@[@"name",@"age",@"height"]];
        NSLog(@"end");
    }
    return 0;
}
