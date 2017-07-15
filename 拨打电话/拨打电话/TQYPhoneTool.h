//
//  TQYPhoneTool.h
//  拨打电话
//
//  Created by 腾庆阳 on 2017/7/15.
//  Copyright © 2017年 腾庆阳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TQYPhoneTool : NSObject

+ (void)makeCall:(NSString *)phoneNumber success:(void (^)(id status))successMsg;

@end
