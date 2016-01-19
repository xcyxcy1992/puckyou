//
//  LHFHttpRequest.m
//  block-- 请求封装
//
//  Created by 李洪峰 on 15/11/2.
//  Copyright (c) 2015年 LHF. All rights reserved.
//

#import "LHFHttpRequest.h"

@implementation LHFHttpRequest
{
    NSURLConnection *_urlConnection;
    NSMutableData *_downloadData;
    DownloadFinishedBlock _finishedBlock;
    DownloadFailedBlock _failedBlock;
}

-(void)downloadDataWithUrlString:(NSString *)urlString finished:(DownloadFinishedBlock)finishedBlock failed:(DownloadFailedBlock)failedBlock
{
    if (_finishedBlock != finishedBlock) {
        _finishedBlock = nil;
        _finishedBlock = finishedBlock;
    }
    if (_failedBlock != failedBlock) {
        _failedBlock = nil;
        _failedBlock = failedBlock;
    }
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //清除旧的connecton
    if (_urlConnection) {
        [_urlConnection cancel];
        _urlConnection = nil;
    }
    //http协议  get请求
    _urlConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

#pragma mark - delegate
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    if (_downloadData==nil) {
        _downloadData = [[NSMutableData alloc] init];
    }
    //清空缓存
    [_downloadData setLength:0];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_downloadData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (_downloadData&&_finishedBlock) {
        _finishedBlock(_downloadData);
    }
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    if (error&&_failedBlock)
    {
        _failedBlock(error.localizedDescription);
    }
}
@end
