//
//  BUDRewardedVideoAdViewController.m
//  BUDemo
//
//  Created by gdp on 2018/1/11.
//  Copyright © 2018年 bytedance. All rights reserved.
//

#import "BUDRewardedVideoAdViewController.h"
#import <BUAdSDK/BURewardedVideoAd.h>
#import <BUAdSDK/BURewardedVideoModel.h>

@interface BUDRewardedVideoAdViewController () <BURewardedVideoAdDelegate>

@property (nonatomic, strong) BURewardedVideoAd *rewardedVideoAd;

@end

@implementation BUDRewardedVideoAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark 延迟加载

#pragma mark 事件处理
- (void)loadData:(NSString *)pid{
    #warning 每次请求数据 需要重新创建一个对应的 BURewardedVideoAd管理,不可使用同一条重复请求数据.
    BURewardedVideoModel *model = [[BURewardedVideoModel alloc] init];
    model.userId = @"123";
    model.isShowDownloadBar = YES;
    self.rewardedVideoAd = [[BURewardedVideoAd alloc] initWithSlotID:pid rewardedVideoModel:model];
    self.rewardedVideoAd.delegate = self;
    [self.rewardedVideoAd loadAdData];
}

- (void)buttonTapped{
    [self.rewardedVideoAd showAdFromRootViewController:[self getCurrentVC]];
}

#pragma mark BURewardedVideoAdDelegate

- (void)rewardedVideoAdDidLoad:(BURewardedVideoAd *)rewardedVideoAd {
    NSLog(@"reawrded video did load");
}

- (void)rewardedVideoAdWillVisible:(BURewardedVideoAd *)rewardedVideoAd {
    NSLog(@"rewarded video will visible");
}

- (void)rewardedVideoAdDidClose:(BURewardedVideoAd *)rewardedVideoAd {
     UnitySendMessage("JrttSdkManager", "OnRewardVideoCallback","success");
     NSLog(@"rewarded video did close");
}

- (void)rewardedVideoAd:(BURewardedVideoAd *)rewardedVideoAd didFailWithError:(NSError *)error {
    NSLog(@"rewarded video material load fail");
}

- (void)rewardedVideoAdDidPlayFinish:(BURewardedVideoAd *)rewardedVideoAd didFailWithError:(NSError *)error {
    if (error) {
        NSLog(@"rewarded play error");
    } else {
        NSLog(@"rewarded play finish");
    }
}

- (void)rewardedVideoAdServerRewardDidFail:(BURewardedVideoAd *)rewardedVideoAd {
    NSLog(@"rewarded verify failed");
}

- (void)rewardedVideoAdServerRewardDidSucceed:(BURewardedVideoAd *)rewardedVideoAd verify:(BOOL)verify{
    NSLog(@"rewarded verify succeed");
    NSLog(@"verify result: %@", verify ? @"success" : @"fail");
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
