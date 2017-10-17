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

/** 是否自动弹出提示框，默认yes */
@property (nonatomic, assign) BOOL isShowTip;

/** init */
+ (instancetype)sharedVersion;

/** 在新的版本中是否第一次启动 */
+ (BOOL)onTheNewVersionIsFirstLaunch;

/** 新版本检测 */
+ (instancetype)versionHelperWithAppID:(NSString *)appID
                              complete:(void(^)(NHAppinfo *appinfo, NSError *error))completeBlock;


@end
