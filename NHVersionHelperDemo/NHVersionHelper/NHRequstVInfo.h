//
//  NHRequstVInfo.h
//  NHVersionTool
//
//  Created by neghao on 2017/8/4.
//  Copyright © 2017年 neghao. All rights reserved.
//

#import <Foundation/Foundation.h>


@class NHAppinfo;

@interface NHRequstVInfo : NSObject

+ (void)RequestVinfoWithAppID:(NSString *)appID complete:(void(^)(NHAppinfo *appinfo, NSError *error))completeBlock;


@end
