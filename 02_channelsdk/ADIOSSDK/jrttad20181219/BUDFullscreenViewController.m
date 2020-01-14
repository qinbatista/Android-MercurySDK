//
//  BUDFullscreenViewController.m
//  BUAdSDKDemo
//
//  Created by 李盛 on 2018/8/29.
//  Copyright © 2018年 bytedance. All rights reserved.
//

#import "BUDFullscreenViewController.h"
#import <BUAdSDK/BUFullscreenVideoAd.h>
#import <UIKit/UIKit.h>
@interface BUDFullscreenViewController () <BUFullscreenVideoAdDelegate>

@property (nonatomic, strong) BUFullscreenVideoAd *fullscreenVideoAd;

@end

@implementation BUDFullscreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



#pragma mark 事件处理
- (void)loadData:(NSString *)pid{
    // Do any additional setup after loading the view.
    //#warning 每次请求数据 需要重新创建一个对应的 BUFullscreenVideoAd管理,不可使用同一条重复请求数据.
    self.fullscreenVideoAd = [[BUFullscreenVideoAd alloc] initWithSlotID:pid];
    //self.fullscreenVideoAd = [[BUFullscreenVideoAd alloc] initWithSlotID:@"908615545"];
    //self.fullscreenVideoAd = [[BUFullscreenVideoAd alloc] initWithSlotID:@"900546299"];
    self.fullscreenVideoAd.delegate = self;
    [self.fullscreenVideoAd loadAdData];
}
- (void)buttonTapped{
    NSLog(@"buttonTapped start");
    [self.fullscreenVideoAd showAdFromRootViewController:[self getCurrentVC]];
    NSLog(@"buttonTapped end");
}

#pragma mark BURewardedVideoAdDelegate

- (void)fullscreenVideoMaterialMetaAdDidLoad:(BUFullscreenVideoAd *)fullscreenVideoAd {
    NSLog(@"material load success");
}

- (void)fullscreenVideoAdVideoDataDidLoad:(BUFullscreenVideoAd *)fullscreenVideoAd {
    NSLog(@"video data load success");
}

- (void)fullscreenVideoAdDidClickSkip:(BUFullscreenVideoAd *)fullscreenVideoAd {
    NSLog(@"fullscreenVideoAd click skip");
}

/**
 视频广告关闭
 */
- (void)fullscreenVideoAdDidClose:(BUFullscreenVideoAd *)fullscreenVideoAd{
    [self.fullscreenVideoAd loadAdData];
    NSLog(@"fullscreenVideoAd closed");
}

//获取当前屏幕显示的viewcontroller
- (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    if ([window subviews].count>0) {
        UIView *frontView = [[window subviews] objectAtIndex:0];
        id nextResponder = [frontView nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]]){
            result = nextResponder;
        }
        else{
            result = window.rootViewController;
        }
    }
    else{
        result = window.rootViewController;
    }
    if ([result isKindOfClass:[UITabBarController class]]) {
        result = [((UITabBarController*)result) selectedViewController];
    }
    if ([result isKindOfClass:[UINavigationController class]]) {
        result = [((UINavigationController*)result) visibleViewController];
    }
    
    return result;
}
@end
