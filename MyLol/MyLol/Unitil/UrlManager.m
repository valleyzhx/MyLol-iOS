//
//  UrlManager.m
//  MyDota
//
//  Created by Xiang on 16/4/13.
//  Copyright © 2016年 iOGG. All rights reserved.
//

#import "UrlManager.h"

@implementation UrlManager

+(NSString *)getHomeCateUrl{
    
    NSString *url = @"https://openapi.youku.com/v2/searches/video/by_keyword.json?client_id=e2306ead120d2e34&keyword=钓鱼&page=10";
    
    return [self utf8URL:url];
}



+(NSString*)utf8URL:(NSString*)url{
    return [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
