package com.east2west.game.Show;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;
//commentimport com.east2west.game.inApp.APPBaseInterface;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.gionee.ad.interstitial.GioneeInterstitialAd;
import com.gionee.ad.interstitial.GioneeInterstitialListener;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
//endpublic class InAppShowJL extends InAppBase {
//comment	GioneeInterstitialAd mGioneeInterstitialAdinter;
	public static String appShow="JL";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey,appinterface);	
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		//金立广告初始化
		mGioneeInterstitialAdinter = GioneeInterstitialAd.newInstance((Activity)mContext, "732");
		try {
			 mGioneeInterstitialAdinter.setInterstitialListener(new GioneeInterstitialListener() {
				   @Override
				   public void onReceiveAd() {
				   //在广告加载完成时回调，此时可以调用 show 方法，显示广告
				   //如果没有收到此 回调就调用 show 方法，将无法显示广告，
				   //并回调广告未加载完成的错误状态
					  
					   mGioneeInterstitialAdinter.show();
				   }
				   @Override
				   public void onFailedReceiveAd(int arg0) {
				   //广告加载失败，errorCode 用于描述失败原因
				   
				   }
				   @Override
				   public void onDisplayAd() {
				   //广告显示时回调
				  
				   }
				   @Override
				   public void onClosedAd() {
				   //广告关闭时回调
				  
				   }
				   });
			} catch (Exception e) {
				// TODO Auto-generated catch block
				E2WApp.LogLocal("初始化失败");
				e.printStackTrace();
			}	
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

		SdkApplication.myStatistics.HitAD(Scenes,"out");
	}
	public void show_video(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
		SdkApplication.myStatistics.DisplayAD(Scenes,"video");
	}
//end}

