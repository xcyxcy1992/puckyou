//
//  LHFHttpRequest.h
//  block-- 请求封装
//
//  Created by 李洪峰 on 15/11/2.
//  Copyright (c) 2015年 LHF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LHFHttpRequest : NSObject

typedef  void (^DownloadFinishedBlock)(NSData *data);
typedef  void (^DownloadFailedBlock)(NSString *errorMessage);


- (void)downloadDataWithUrlString:(NSString *)urlString finished:(DownloadFinishedBlock)finishedBlock failed:(DownloadFailedBlock)failedBlock;

@end
