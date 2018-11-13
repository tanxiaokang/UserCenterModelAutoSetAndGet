# UserCenterModelAutoSetAndGet
## 自动生成成员变量
 1. 根据字典内容自动生成成员变量并打印到控制台
 ```
 2018-11-13 10:51:13.706652+0800 用户中心模型自动setget[5028:131002] 
 @property (nonatomic,assign) NSInteger name;
 @property (nonatomic,strong) NSString *age;
```


## 自动生成set get 方法
 1. 根据数组中的字符串自动生成set get 方法
```
2018-11-13 10:51:13.706756+0800 用户中心模型自动setget[5028:131002] 
- (NSString *)name {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"AccountsetNameKey"];
}
- (void)setName:(NSString *)name {
    [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"AccountsetNameKey"];
}
- (NSString *)age {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"AccountsetAgeKey"];
}
- (void)setAge:(NSString *)age {
    [[NSUserDefaults standardUserDefaults] setObject:age forKey:@"AccountsetAgeKey"];
}
- (NSString *)height {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"AccountsetHeightKey"];
}
- (void)setHeight:(NSString *)height {
    [[NSUserDefaults standardUserDefaults] setObject:height forKey:@"AccountsetHeightKey"];
}
```
