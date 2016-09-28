//
//  ZJAFNetworking.h
//  中国足球
//
//  Created by zj on 16/9/27.
//  Copyright © 2016年 zj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJAFNetworking : NSObject

//普通post
+(void)postneturl:(NSString*)url Paramas:(NSMutableDictionary*)paramas Successblock:(void(^)(id success))successBlock  Failedblock:(void(^)(id failed))failedBlock UploadProgressblock:(void(^)(id progress))loadProgress;
//普通get
+(void)getneturl:(NSString*)url Paramas:(NSMutableDictionary*)paramas Successblock:(void(^)(id success))successblock  Failedblock:(void(^)(id failed))failedblock UploadProgressblock:(void(^)(id progress))loadprogress;
//post上传文件
+(void)postfileneturl:(NSString*)url Paramas:(NSMutableDictionary*)paramas Successblock:(void(^)(id success))successBlock  Failedblock:(void(^)(id failed))failedBlock UploadProgressblock:(void(^)(id progress))loadProgress  files:(void(^)(id thefiles))allFile;

@end
