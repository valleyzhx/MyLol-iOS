//
//  AppConfigure.m
//  MyLol
//
//  Created by Xiang on 16/7/6.
//  Copyright © 2016年 iDreams. All rights reserved.
//

#import "AppConfigure.h"
#import "GGRequest.h"

#define kConfigureKey @"appConfigureDic"

@implementation AppConfigure

+(void)updateConfigure{
    NSString *url = @"http://www.idreams.club/mydota/appConfigure?func=getConfigure&name=lol";
    [GGRequest requestWithUrl:url accepType:nil withSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        if ([responseObject[@"code"]intValue]==0) {
            NSDictionary *dataDic = responseObject[@"data"];
            if (dataDic) {
                [[NSUserDefaults standardUserDefaults]setObject:dataDic forKey:kConfigureKey];
                [[NSUserDefaults standardUserDefaults]synchronize];
            }
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
}


+ (NSDictionary *)getConfigParams{
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults]objectForKey:kConfigureKey];
    if (dic) {
        return dic;
    }
    return @{@"zqlist":@"http://www.zhanqi.tv/api/static/game.lives/6/30-1.json",@"zqlive":@"http://dlhls.cdn.zhanqi.tv/zqlive/",@"videojs":@"function getVideoM3u8(type){\n    return BuildVideoInfo.m3u8src(type);\n}"};
}

+ (NSString *)getConfigParams:(NSString *)key{
    NSDictionary *dic = [self getConfigParams];
    
    if ([dic[key]isKindOfClass:[NSNull class]]) {
        return nil;
    }
    return dic[key];
}

@end
