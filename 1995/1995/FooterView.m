//
//  FooterView.m
//  1995
//
//  Created by Lg on 2017/6/7.
//  Copyright © 2017年 Lg. All rights reserved.
//

#import "FooterView.h"
#import "iconModel.h"
#import <AFNetworking.h>
#import <MJExtension.h>


@interface FooterView ()
@end



@implementation FooterView


- (instancetype)initWithFrame:(CGRect)frame
{
    
    if (self == [super initWithFrame:frame]) {
        
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        dic[@"a"] = @"square";
        dic[@"c"] = @"topic";
        
        
        [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:dic progress:^(NSProgress * _Nonnull downloadProgress) {
            nil;
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            // 字典数组 -> 模型数组
            NSArray *squares = [iconModel mj_objectArrayWithKeyValuesArray:responseObject[@"square_list"]];
            
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
              XMGLog(@"请求失败 - %@", error);
        }];
      
         
    
        
    }
    return self;
}





@end
