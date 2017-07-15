//
//  TQYPhoneTool.m
//  拨打电话
//
//  Created by 腾庆阳 on 2017/7/15.
//  Copyright © 2017年 腾庆阳. All rights reserved.
//

#import "TQYPhoneTool.h"

@implementation TQYPhoneTool
+ (void)makeCall:(NSString *)phoneNumber success:(void (^)(id status))successMsg
{
    NSString *telephoneNumber = phoneNumber;
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",telephoneNumber];
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:str];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        //OpenSuccess=选择 呼叫 为 1  选择 取消 为0
        //        NSLog(@"OpenSuccess=%d",success);
        
        if (successMsg) {
            successMsg([NSString stringWithFormat:@"%i",success]);
        }
        
    }];
}

@end
