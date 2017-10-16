//
//  NHVersionHelper.h
//  NHVersionHelper
//
//  Created by neghao on 2017/8/4.
//  Copyright © 2017年 neghao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NHAppinfo.h"

@interface NHVersionHelper : NSObject

+ (instancetype)versionHelperBeginRequestWithAppID:(NSString *)appID complete:(void(^)(NHAppinfo *appinfo, NSError *error))completeBlock;


@end
