//
//  MBKRequest.m
//  MBK
//
//  Created by LEON on 2017/8/23.
//  Copyright © 2017年 LEON. All rights reserved.
//

#import "MBKRequest.h"
#import <AFNetworking.h>
static MBKRequest *mbk = nil;
@interface MBKRequest ()
@property (nonatomic, strong)AFHTTPSessionManager *manager;
@end


@implementation MBKRequest
- (AFHTTPSessionManager *)manager{
    if (!_manager) {
        _manager = [AFHTTPSessionManager manager];
       
    }
    return _manager;
}
+ (instancetype)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mbk = [[MBKRequest alloc] init];
        mbk.manager.requestSerializer.timeoutInterval = 20.0f;
        mbk.manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json", @"text/plain",@"text/javascript", @"text/html",@"multipart/form-data",nil];
        [mbk.manager.requestSerializer setValue:@"application/x-www-form-urlencoded;charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
//        mbk.manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    });
    return mbk;
}



+(void)postWithUrl:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
  
    
    NSLog(@"========%@=========   params = %@",url, params);
    [[MBKRequest shareManager].manager POST:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            NSLog(@"responseObject ====== %@", responseObject);
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            NSLog(@"responseObject ====== %@", error.localizedDescription);
        
            failure(error);
        }
    }];
    
}
+(void)getWithUrl:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
   
    [[MBKRequest shareManager].manager GET:url parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            NSLog(@"responseObject ====== %@", responseObject);
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            NSLog(@"responseObject ====== %@%@",error, error.localizedDescription);
        
            failure(error);
        }
    }];
}


@end
