//
//  JrttSDKManager.m
//  Unity-iPhone
//
//  Created by Quildren on 2018/12/20.
//
#import "JrttSDKManager.h"

#import <Foundation/Foundation.h>
#import <BUAdSDK/BUAdSDKManager.h>
#import "BUDFullscreenViewController.h"
#import "BUDRewardedVideoAdViewController.h"
#import <TTTracker/TTTracker.h>
#import <TTTracker/TTInstallIDManager.h>
#import <TTTracker/TTABTestConfFetcher.h>
#import <TTTracker/TTInstallIDManager.h>

BUDFullscreenViewController* budFullscreen = nil;//全屏视频
BUDRewardedVideoAdViewController* budRewardedVideoscreen = nil;//激励视频

void _show_Insert(){
    NSLog(@"[JrttSdkManager]->_show_insert");
    [budFullscreen buttonTapped];
}
	
void _show_Video(){
    NSLog(@"[JrttSdkManager]->_show_Video");
    [budRewardedVideoscreen buttonTapped];
}
void _load_Insert(const char* str){
    NSString* sss=[NSString stringWithUTF8String:str];
    [budFullscreen loadData:sss];
	NSLog(@"[JrttSdkManager]->_load_Insert:%@",sss);
}
void _load_Video(const char* str){
    NSString* sss=[NSString stringWithUTF8String:str];
    [budRewardedVideoscreen loadData:sss];
     NSLog(@"[JrttSdkManager]->_load_Video:%@",sss);

}
void _adInit(const char* str){
	NSString* sss=[NSString stringWithUTF8String:str];
	NSLog(@"[JrttSdkManager]->_adInit,appid:%@",sss);
    [BUAdSDKManager setAppID:sss];
    //[BUAdSDKManager setAppID:@"5000546"];
    [BUAdSDKManager setLoglevel:BUAdSDKLogLevelDebug];
    budFullscreen = [[BUDFullscreenViewController alloc] init];//初始化全屏视频
    budRewardedVideoscreen = [[BUDRewardedVideoAdViewController alloc] init];//初始化激励视频
}

void _sdkInit(const char* str){
	NSString* sss=[NSString stringWithUTF8String:str];
    NSLog(@"[JrttSdkManager]->_sdkInit,appid:%@",sss);
    [TTTracker startWithAppID:sss channel:@"App Store" appName:@"odium"];
}




