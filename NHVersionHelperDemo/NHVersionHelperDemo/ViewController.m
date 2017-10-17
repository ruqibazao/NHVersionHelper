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
@property (nonatomic, strong) NHVersionHelper * tool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    _tool = [NHVersionHelper versionHelperBeginRequestWithAppID:@"你的app id" complete:^(NHAppinfo *appinfo, NSError *eror) {
        //do something
        //...
    }];
}


@end
