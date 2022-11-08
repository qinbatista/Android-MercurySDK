package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
//commentimport com.ksc.ad.sdk.IKsyunAdInitResultListener;
import com.ksc.ad.sdk.IKsyunAdListener;
import com.ksc.ad.sdk.IKsyunAdLoadListener;
import com.ksc.ad.sdk.IKsyunRewardVideoAdListener;
import com.ksc.ad.sdk.KsyunAdSdk;
import com.ksc.ad.sdk.KsyunAdSdkConfig;


import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;

import java.util.Map;

import static com.east2west.game.QinConst.ADParamList;
//endpublic class InAppShowJINSANYUN20181123 extends InAppBase {
//comment	public static String appShow="InAppShowJINSANYUN20181123";
	public static String MyScenes ="";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
		//String s = QinConst.E2WADID;
		KsyunAdSdkConfig config = new KsyunAdSdkConfig();
//设置SDK请求环境为线上环境。SDK的init初始化方法，如果不设置config，默 认则为沙盒环境
		config.setSdkEnvironment(KsyunAdSdkConfig.RELEASE_ENV);
		E2WApp.LogLocal("[InAppShow"+appShow+"] Release mode->init");
		KsyunAdSdk.getInstance().init(mContext, ADParamList[1], config, new IKsyunAdInitResultListener() {
			@Override
			public void onSuccess(Map<String, String> map)
			{ //SDK初始化成功，设置事件监听
				E2WApp.LogLocal("[InAppShow"+appShow+"] map="+map);
				KsyunAdSdk.getInstance().setAdListener(new IKsyunAdListener() {
					@Override
					public void onShowSuccess(String adSlotId) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] onShowSuccess");
						SdkApplication.myStatistics.DisplayAD(MyScenes,"video");
					}

					@Override
					public void onShowFailed(String adSlotId, int erroCode, String erroMsg) {

						E2WApp.LogLocal("[InAppShow"+appShow+"] onShowFailed");
					}

					@Override
					public void onADComplete(String adSlotId) {

						E2WApp.LogLocal("[InAppShow"+appShow+"] onADComplete");
					}

					@Override
					public void onADClick(String adSlotId) {
						SdkApplication.myStatistics.HitAD(MyScenes,"onADClick");
					}

					@Override
					public void onADClose(String adSlotId) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] onADClose");
					}
				});
				KsyunAdSdk.getInstance().setRewardVideoAdListener(new IKsyunRewardVideoAdListener ()
				{
					@Override
					public void onAdAwardSuccess(String adSlotId)
					{

						E2WApp.LogLocal("[InAppShow"+appShow+"] onAdAwardSuccess");
					}
					@Override
					public void onAdAwardFailed(String adSlotId, int errCode, String errMsg)
					{
						E2WApp.LogLocal("[InAppShow"+appShow+"] onAdAwardFailed");
					}
				});
			}
			@Override
			public void onFailure(int errCode, String errMsg) {

				//SDK初始化失败处理
				E2WApp.LogLocal("[InAppShow"+appShow+"] errMsg="+errMsg);
			}
		});
		E2WApp.LogLocal("[InAppShow"+appShow+"] Release mode->loadAd");
		KsyunAdSdk.getInstance().loadAd(ADParamList[2],new IKsyunAdLoadListener()
		{
			@Override
			public void onAdInfoSuccess()
			{
				E2WApp.LogLocal("[InAppShow"+appShow+"] onAdInfoSuccess");
				//加载广告配置信息成功
			}
			@Override
			public void onAdInfoFailed(final int errCode, final String errMsg)
			{
				//加载广告配置信息失败
				E2WApp.LogLocal("[InAppShow"+appShow+"] onAdInfoFailed="+errMsg);
			}
			@Override
			public void onAdLoaded(final String adSlotId)
			{
				//广告位准备就绪，可以展示
				E2WApp.LogLocal("[InAppShow"+appShow+"] onAdLoaded="+adSlotId);
			}
		});
	}


	public void onGameOver()
	{
		if(KsyunAdSdk.getInstance().hasAd(ADParamList[2]))
		{
			KsyunAdSdk.getInstance().showAd(mContext,ADParamList[2]);
		}
		else
		{
			//广告不存在,则调用loadAd接口，重新获取一次广告
			KsyunAdSdk.getInstance().loadAd(ADParamList[2],new IKsyunAdLoadListener()
			{
				@Override
				public void onAdInfoSuccess() {
					//加载广告配置信息成功
					E2WApp.LogLocal("[InAppShow"+appShow+"] onAdInfoSuccess");
				}
				@Override
				public void onAdInfoFailed(final int errCode, final String errMsg)
				{//加载广告配置信息失败
					E2WApp.LogLocal("[InAppShow"+appShow+"] onAdInfoFailed="+errMsg);
				}
				@Override
				public void onAdLoaded(final String adSlotId)
				{ //广告位准备就绪，可以展示
					E2WApp.LogLocal("[InAppShow"+appShow+"] onAdLoaded");
				}
			});
		}
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
	public void show_insert(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
		SdkApplication.myStatistics.DisplayAD(Scenes,"insert");

		SdkApplication.myStatistics.HitAD(Scenes,"insert");
	}
	public void show_banner(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_banner");
		SdkApplication.myStatistics.DisplayAD(Scenes,"banner");

		SdkApplication.myStatistics.HitAD(Scenes,"banner");
	}
	public void show_push(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_push");
		SdkApplication.myStatistics.DisplayAD(Scenes,"push");

		SdkApplication.myStatistics.HitAD(Scenes,"push");
	}

	public void show_out(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_out");
		SdkApplication.myStatistics.DisplayAD(Scenes,"out");
		SdkApplication.myStatistics.DisplayAD(Scenes,"out");

	}
	public void show_video(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
		MyScenes=Scenes;
		onGameOver();

	}
//end}

