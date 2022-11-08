package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;


//commentimport android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;

import com.mob4399.adunion.AdUnionInterstitial;
import com.mob4399.adunion.AdUnionSDK;
import com.mob4399.adunion.AdUnionVideo;
import com.mob4399.adunion.listener.OnAuInitListener;
import com.mob4399.adunion.listener.OnAuInterstitialAdListener;
import com.mob4399.adunion.listener.OnAuVideoAdListener;

import static com.east2west.game.QinConst.ADParamList;
//endpublic class InAppShowCHAL_439920181220 extends InAppBase {
//comment	public static String appShow="InAppShowCHAL_439920181220";
	public static String MyScence = "";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[3]="+ADParamList[3]);
		//String s = QinConst.E2WADID;
		AdUnionSDK.init(mContext,ADParamList[1], new OnAuInitListener(){
			@Override
			public void onSucceed() {
				E2WApp.LogLocal("[InAppShow"+appShow+"] onSucceed");
			}

			@Override
			public void onFailed(String s) {
				E2WApp.LogLocal("[InAppShow"+appShow+"] onFailed");
			}
		});
	}

	@Override
	public void ApplicationInit(Application app)
	{
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit="+app);
	}

	@Override
	public void onPause()
	{
	}

	@Override
	public void onResume()
	{
	}

	@Override
	public void onDestroy()
	{
	}
	@Override
	public void onStop()
	{
	}
	@Override
	public void onStart()
	{
	}
	public void onActivityResult(int reqCode, int resCode, Intent data) {
		super.onActivityResult(reqCode, resCode, data);
	}
	public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
		super.onRequestPermissionsResult(requestCode, permissions, grantResults);
	}
	@Override
	public void attachBaseContext(Context base)
	{
		super.attachBaseContext(base);
	}
	public void show_insert(final String Scenes) {
		// TODO Auto-generated method stub
		MyScence=Scenes;
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert="+ADParamList[2]);

		AdUnionInterstitial adUnionInterstitial = new AdUnionInterstitial(mContext, ADParamList[2],
				new OnAuInterstitialAdListener() {
					@Override
					public void onInterstitialLoaded() {
						E2WApp.LogLocal("Intertitial loaded and show");

					}

					@Override
					public void onInterstitialLoadFailed(String message) {
						E2WApp.LogLocal("[onInterstitialLoadFailed]="+ message);
					}

					@Override
					public void onInterstitialClicked() {
						E2WApp.LogLocal( "[onInterstitialLoadFailed]=Intertitial clicked");
						SdkApplication.myStatistics.HitAD(Scenes,"insert");
					}

					@Override
					public void onInterstitialClosed() {
						E2WApp.LogLocal( "[onInterstitialLoadFailed]=Intertitial closed");
						SdkApplication.myStatistics.DisplayAD(Scenes,"insert");
					}
				});
		//在需要展示插屏广告的位置调用show方法
		adUnionInterstitial.show();

	}
	public void show_banner(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_banner");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"banner");

		SdkApplication.myStatistics.HitAD(Scenes,"banner");
	}
	public void show_push(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_push");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"push");

		SdkApplication.myStatistics.HitAD(Scenes,"push");
	}

	public void show_out(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_out");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"out");

		SdkApplication.myStatistics.HitAD(Scenes,"out");
	}

	public void show_video(final String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video="+ADParamList[3]);
		MyScence=Scenes;

		AdUnionVideo videoAd = new AdUnionVideo(mContext, ADParamList[3] , new OnAuVideoAdListener() {
			@Override
			public void onVideoAdLoaded() {
				E2WApp.LogLocal("VideoAd loaded");
			}

			@Override
			public void onVideoAdShow() {
				E2WApp.LogLocal( "VideoAd show");
				SdkApplication.myStatistics.DisplayAD(Scenes,"video");
				onOnVideoCompleted("onVideoAdShow");
			}

			@Override
			public void onVideoAdFailed(String message) {
				E2WApp.LogLocal( message);
			}

			@Override
			public void onVideoAdClicked() {
				E2WApp.LogLocal( "VideoAd clicked");
				SdkApplication.myStatistics.HitAD(Scenes,"video");
			}

			@Override
			public void onVideoAdClosed() {
				E2WApp.LogLocal( "VideoAd closed");
			}
		});

		//在需要显示广告的位置，显示广告
		if (videoAd != null) {
			videoAd.show();
		}

	}
//end}

