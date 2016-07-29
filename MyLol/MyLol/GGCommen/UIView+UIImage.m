//
//  UIView+UIImage.m
//  MyLol
//
//  Created by Xiang on 16/7/29.
//  Copyright © 2016年 iDreams. All rights reserved.
//

#import "UIView+UIImage.h"

@implementation UIView (UIImage)

-(UIImage*)imageOfView{
    Boolean clipsToBounds=self.clipsToBounds;
    UIColor* color = self.backgroundColor;
    self.clipsToBounds = YES;
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [UIColor clearColor].CGColor);
    CGContextFillRect(ctx,self.bounds);
    [self.layer renderInContext:ctx];
    UIImage* img =  UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.backgroundColor = color;
    self.clipsToBounds = clipsToBounds;
    return img;
}
@end
