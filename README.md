# NHVersionHelper
iOS 检测版本升级工具

使用方法：
```
@interface ViewController ()
@property (nonatomic, strong) NHVersionHelper * tool;
@end

@implementation
 _tool = [NHVersionHelper versionHelperBeginRequestWithAppID:@"你的app id" complete:^(NHAppinfo *appinfo, NSError *eror) {
      //do something
      //... 
 }];
@end
```
