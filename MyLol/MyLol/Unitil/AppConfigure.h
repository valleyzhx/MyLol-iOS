//
//  AppConfigure.h
//  MyLol
//
//  Created by Xiang on 16/7/6.
//  Copyright © 2016年 iDreams. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppConfigure : NSObject

+(void)updateConfigure;
+ (NSDictionary *)getConfigParams;
+ (NSString *)getConfigParams:(NSString *)key;

@end
