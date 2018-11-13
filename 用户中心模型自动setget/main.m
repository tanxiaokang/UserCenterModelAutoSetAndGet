//
//  main.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+jr_KVO.h"
#import "AccountModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AccountModel *model = [AccountModel new];
        model.name = @"张三";
        NSLog(@"%@",model.name);
 
        NSLog(@"end");
    }
    return 0;
}
