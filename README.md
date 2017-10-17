# NHVersionHelper
iOS 检测版本升级工具

使用方法：
```
#import "NHVersionHelper.h"
@interface ViewController ()
@end

@implementation
 [NHVersionHelper versionHelperWithAppID:@"你的app id" complete:^(NHAppinfo *appinfo, NSError *eror) {
      //do something
      //... 
 }];
@end
```

```
使用 pod 集成：
pod 'NHVersionHelper'
```
