//
//  ViewController.m
//  NHVersionHelperDemo
//
//  Created by neghao on 2017/10/16.
//  Copyright © 2017年 neghao. All rights reserved.
//

#import "ViewController.h"
#import "NHVersionHelper.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [NHVersionHelper versionHelperWithAppID:@"1235955965"/**你的app id*/ complete:^(NHAppinfo *appinfo, NSError *eror) {
        //do something
        //...
        NSLog(@"版本请求结果:%@",appinfo);
    }];
}


@end
