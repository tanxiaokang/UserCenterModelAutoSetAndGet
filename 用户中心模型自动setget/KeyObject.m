//
//  KeyObject.m
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import "KeyObject.h"

@interface KeyObject ()

//作为hash值
@property(nonatomic) NSUInteger hashValue;

@end

@implementation KeyObject

- (instancetype)initWithHashValue:(NSUInteger)hashValue
{
    self = [super init];
    if ( self )
    {
        _hashValue = hashValue;
    }
    return self;
}

#pragma mark -overload methor
- (BOOL)isEqual:(id)object
{
    //根据hash值判断是否是同一个键值
    return ([self hashKeyValue] == [(typeof(self))object hashKeyValue]);
}

- (NSUInteger)hash
{
    return [self hashKeyValue];     //返回哈希值
}

#pragma mark -NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    KeyObject *obj = [KeyObject allocWithZone:zone];
    obj.hashValue = self.hashValue;
    return obj;
}

#pragma mark -private methor
//哈希函数
- (NSUInteger)hashKeyValue
{
    return _hashValue % 7;      //这里哈希函数用了简单的对7取余
}

@end
