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
static id _instance;
NSString *const kFirstLaunchKey = @"firstLaunch";

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

+ (instancetype)sharedVersion
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}


+ (instancetype)versionHelperWithAppID:(NSString *)appID complete:(void(^)(NHAppinfo *appinfo, NSError *error))completeBlock {

    return [[[self alloc] init] versionHelperWithAppID:appID complete:completeBlock];
}


- (instancetype)versionHelperWithAppID:(NSString *)appID complete:(void (^)(NHAppinfo *appinfo, NSError *error))completeBlock {

    if (self == [super init]) {
        __weak __block typeof(self)weakself = self;
        _isShowTip = YES;
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
    
    if (_isShowTip) {
        NSString *oldVersion = [NHVersionHelper currentVersionInfo];
        NSComparisonResult result = [appinfo.version compare:oldVersion options:NSBackwardsSearch];
        
        if (result == NSOrderedDescending) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"版本更新" message:appinfo.releaseNotes delegate:self cancelButtonTitle:@"知道了" otherButtonTitles:@"确定", nil];

            [alertView show];
        }
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:_appinfo.trackViewUrl]];
    }
}

//当前版本信息
+ (NSString *)currentVersionInfo{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *appVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
    return appVersion;
}

+ (BOOL)onTheNewVersionIsFirstLaunch {

    NSString *localVersion = [[NSUserDefaults standardUserDefaults] objectForKey:kFirstLaunchKey];
    
    if ([[NHVersionHelper currentVersionInfo] isEqualToString:localVersion]) {
        return NO;
    }
    
    //保存当前版本号
    [[NSUserDefaults standardUserDefaults] setObject:[NHVersionHelper currentVersionInfo]
                                              forKey:kFirstLaunchKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return YES;
}


@end
