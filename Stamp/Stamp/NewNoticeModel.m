//
//  NewNoticeModel.m
//  Stamp
//
//  Created by qianfeng on 16/2/15.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import "NewNoticeModel.h"

@implementation NewNoticeModel

- (id)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    
    if (self)
    {
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}

+ (NewNoticeModel *)createNewNoticeModelWithDic:(NSDictionary *)dic
{
    NewNoticeModel * model = [[NewNoticeModel alloc] initWithDic:dic];
    
    return model;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if([key isEqualToString:@"id"])
    {
        self.ID = value;
    }
}

@end
