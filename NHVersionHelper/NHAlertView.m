//
//  NHAlertView.m
//  NHVersionTool
//
//  Created by neghao on 2017/8/4.
//  Copyright © 2017年 neghao. All rights reserved.
//

#import "NHAlertView.h"


@interface NHAlertView ()<CAAnimationDelegate>
@property (nonatomic, weak) UIView *alertView;
@end

@implementation NHAlertView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initailizeViews];
    }
    return self;
}


- (void)initailizeViews {

    UIToolbar *tool = [[UIToolbar alloc] initWithFrame:self.bounds];
    tool.barStyle = UIBarStyleBlack;
    [self addSubview:tool];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, -220, self.bounds.size.width - 100, 220)];
    view.layer.cornerRadius = 20;
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    _alertView = view;
    
    
    CAKeyframeAnimation *keyAnimation = [CAKeyframeAnimation animation];
    keyAnimation.keyPath = @"position";
    
    CGPoint rect1 = CGPointMake(190, -220);
    CGPoint rect2 = CGPointMake(190, 220);
//    keyAnimation.removedOnCompletion = NO;
//    keyAnimation.fillMode = kCAFillModeForwards;
    
    keyAnimation.values = @[ [NSValue valueWithCGPoint:rect1], [NSValue valueWithCGPoint:rect2] ];

    keyAnimation.duration = 1;
    keyAnimation.repeatCount = 1;
    keyAnimation.delegate = self;
    
    [view.layer addAnimation:keyAnimation forKey:nil];

//    [self.alertView.layer addAnimation:animation forKey:nil];
    

}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:0.8 initialSpringVelocity:20 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _alertView.frame = CGRectMake(50, 200, self.bounds.size.width - 100, 220);
        
    } completion:^(BOOL finished) {
        
    }];
    
}



@end
