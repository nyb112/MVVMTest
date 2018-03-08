//
//  MBKRequest.h
//  MBK
//
//  Created by LEON on 2017/8/23.
//  Copyright © 2017年 LEON. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBKRequest : NSObject

/**
 post请求

 @param url 接口地址
 @param params 请求参数
 @param success 成功回调
 @param failure 失败回调
 */
+ (void)postWithUrl:(NSString*)url params:(NSDictionary*)params success:(void (^)(id respondseObj))success failure:(void (^)(NSError *error))failure;
/**
 get请求
 
 @param url 接口地址
 @param params 请求参数
 @param success 成功回调
 @param failure 失败回调
 */
+ (void)getWithUrl:(NSString*)url params:(NSDictionary*)params success:(void (^)(id respondseObj))success failure:(void (^)(NSError *error))failure;


@end
