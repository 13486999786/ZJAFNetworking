//
//  ZJAFNetworking.m
//  中国足球
//
//  Created by zj on 16/9/27.
//  Copyright © 2016年 zj. All rights reserved.
//

#import "ZJAFNetworking.h"
#import "AFNetworking.h"
@implementation ZJAFNetworking
//post请求
+(void)postneturl:(NSString*)url Paramas:(NSMutableDictionary*)paramas Successblock:(void(^)(id success))successBlock  Failedblock:(void(^)(id failed))failedBlock UploadProgressblock:(void(^)(id progress))loadProgress
{
    [[AFHTTPSessionManager manager]POST:url parameters:paramas constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData)
    {
        
    } progress:^(NSProgress * _Nonnull uploadProgress)//上传进度
     {
         loadProgress(uploadProgress);
     }
     success:^(NSURLSessionDataTask * _Nonnull task,  id  _Nullable responseObject )
     {
         successBlock(responseObject);
         
     } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
     {
         failedBlock(error);
     }];
}
//post上传文件
+(void)postfileneturl:(NSString*)url Paramas:(NSMutableDictionary*)paramas Successblock:(void(^)(id success))successBlock  Failedblock:(void(^)(id failed))failedBlock UploadProgressblock:(void(^)(id progress))loadProgress  files:(void(^)(id thefiles))allFile
{
    [[AFHTTPSessionManager manager]POST:url parameters:paramas constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData)
    {
        allFile(formData);//需要上传的所有文件
    } progress:^(NSProgress * _Nonnull uploadProgress)
    {
         loadProgress(uploadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
    {
        successBlock(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
    {
        failedBlock(error);
    }];
}


//get请求
+(void)getneturl:(NSString*)url Paramas:(NSMutableDictionary*)paramas Successblock:(void(^)(id success))successblock  Failedblock:(void(^)(id failed))failedblock UploadProgressblock:(void(^)(id progress))loadprogress
{
    [[AFHTTPSessionManager manager]GET:url parameters:paramas progress:^(NSProgress * _Nonnull downloadProgress)
    {
        loadprogress(downloadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
     {
         successblock(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
    {
        failedblock(error);
    }];
}




@end
