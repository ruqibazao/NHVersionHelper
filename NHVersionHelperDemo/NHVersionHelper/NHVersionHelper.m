//
//  NHVersionHelper.m
//  NHVersionHelper
//
//  Created by neghao on 2017/8/4.
//  Copyright © 2017年 neghao. All rights reserved.
//

#import "NHVersionHelper.h"
#import "NHRequstVInfo.h"
#import "NHAlertView.h"

@interface NHVersionHelper () <UIAlertViewDelegate>
@property (nonatomic, strong) NHAppinfo *appinfo;
@end

@implementation NHVersionHelper


+ (instancetype)versionHelperBeginRequestWithAppID:(NSString *)appID complete:(void(^)(NHAppinfo *appinfo, NSError *error))completeBlock {

    return [[[self alloc] init] versionToolBeginRequestWithAppID:appID complete:completeBlock];
}


- (instancetype)versionToolBeginRequestWithAppID:(NSString *)appID complete:(void (^)(NHAppinfo *appinfo, NSError *error))completeBlock {

    if (self == [super init]) {
        __weak __block typeof(self)weakself = self;

        [NHRequstVInfo RequestVinfoWithAppID:appID complete:^(NHAppinfo *appinfo, NSError *error) {
            NSLog(@"%@",appinfo);
            
            if (completeBlock) {
                completeBlock(appinfo,error);
            }
            if (!error) {
                [weakself showTip:appinfo];
            }
        }];
    }
    return self;
}



- (void)showTip:(NHAppinfo *)appinfo {
    _appinfo = appinfo;
    
    NSString *oldVersion = [self currentVersionInfo];
    
    NSComparisonResult result = [appinfo.version compare:oldVersion options:NSBackwardsSearch];
    
    if (result == NSOrderedDescending) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"版本更新" message:appinfo.releaseNotes delegate:self cancelButtonTitle:@"知道了" otherButtonTitles:@"确定", nil];
//
        [alertView show];        
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:_appinfo.trackViewUrl]];
    }
}

//当前版本信息
- (NSString *)currentVersionInfo{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *appVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
    return appVersion;
}

@end
