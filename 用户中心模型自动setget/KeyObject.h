//
//  KeyObject.h
//  用户中心模型自动setget
//
//  Created by tanxiaokang on 2018/11/1246.
//  Copyright © 2018 runze. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KeyObject : NSObject<NSCopying>  //实现Copying协议

//作为hash值
@property(nonatomic, readonly) NSUInteger hashValue;

- (instancetype)initWithHashValue:(NSUInteger)hashValue;

@end

NS_ASSUME_NONNULL_END
