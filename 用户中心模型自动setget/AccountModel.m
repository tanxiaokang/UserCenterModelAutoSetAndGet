//
//  AccountModel.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import "AccountModel.h"

@implementation AccountModel

- (void)setName:(NSString *)name{
    [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"name"];
}

- (NSString *)name{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
}

- (void)setAge:(NSString *)age {
    [[NSUserDefaults standardUserDefaults] setObject:age forKey:@"age"];
}
- (NSString *)age {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"age"];
}

@end
