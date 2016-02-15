//
//  NewNoticeModel.h
//  Stamp
//
//  Created by qianfeng on 16/2/15.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 "" : "北京福利特",
 "id" : "847",
 "" : "http://www.youbicaifu.com/Public/image/m-5.png",
 "" : "5",
 "" : "847",
 "" : "2016-02-15 09:10:10",
 "" : "2015第353号关于《白金虎片》(交易代码610009)进行大宗持仓转让的公告"

 */

@interface NewNoticeModel : NSObject

@property (nonatomic, strong) NSString * ename;
@property (nonatomic, strong) NSString * ID;
@property (nonatomic, strong) NSString * img;
@property (nonatomic, strong) NSString * market_id;
@property (nonatomic, strong) NSString * news_id;
@property (nonatomic, strong) NSString * news_time;
@property (nonatomic, strong) NSString * title;

+ (NewNoticeModel *)createNewNoticeModelWithDic:(NSDictionary *)dic;

@end










