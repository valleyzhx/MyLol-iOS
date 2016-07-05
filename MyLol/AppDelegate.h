//
//  AppDelegate.h
//  MyLol
//
//  Created by Xiang on 16/7/5.
//  Copyright © 2016年 iDreams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GDTSplashAd.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,GDTSplashAdDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) GDTSplashAd *splash;

@end

