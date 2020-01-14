package com.east2west.game.Show;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.meizu.advertise.api.AdListener;
import com.meizu.advertise.api.AdManager;
import com.meizu.advertise.api.Interstitial;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
//endpublic class InAppShowMZ extends InAppBase {

//comment	Interstitial mInterstitial;
	boolean mLoadFinished;
	public static String appShow="MZ";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppKey,appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
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
	public void show_banner() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
	}


	public void show_insert(final String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");



		mInterstitial = new Interstitial(mContext, "480119105828", new AdListener() {

			@Override
			public void onLoadFinished() {
				mLoadFinished = true;
				mInterstitial.show();
				SdkApplication.myStatistics.DisplayAD(Scenes,"insert");
			}

			@Override
			public void onNoAd(long code) {
				E2WApp.LogLocal("NO AD");
			}

			@Override
			public void onError(String msg) {
				E2WApp.LogLocal(msg);
			}

			@Override
			public void onExposure() {

				E2WApp.LogLocal("onExposure");
			}

			@Override
			public void onClick() {
				E2WApp.LogLocal("onClick");
				SdkApplication.myStatistics.HitAD(Scenes,"insert");
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
			}

		});
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

