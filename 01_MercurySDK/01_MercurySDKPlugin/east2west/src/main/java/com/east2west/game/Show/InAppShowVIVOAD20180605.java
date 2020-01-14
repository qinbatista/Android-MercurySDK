package com.east2west.game.Show;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;
//commentimport java.util.Random;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.vivo.mobilead.interstitial.VivoInterstialAd;
import com.vivo.mobilead.listener.IAdListener;
import com.vivo.mobilead.manager.VivoAdManager;
import com.vivo.mobilead.model.VivoAdError;


import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import android.view.View;
//endpublic class InAppShowVIVOAD20180605 extends InAppBase {
//comment	private static String VIVO_AppID="";
	private static String VIVO_posID="";
	private VivoInterstialAd mVivoInterstialAd;
	public static String appShow="InAppShowVIVOAD20180605";
	public static boolean isADRead = false;
	public final static String getFileProviderName(Context context){
	    return context.getPackageName()+".fileprovider";
	}
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		//String s = QinConst.E2WADID;			
		VIVO_AppID=QinConst.ADParamList[1];
		VIVO_posID=QinConst.ADParamList[2];
		E2WApp.LogLocal("[InAppShow"+appShow+"]->VIVO_AppID="+VIVO_AppID);
		E2WApp.LogLocal("[InAppShow"+appShow+"]->VIVO_posID="+VIVO_posID);
		VivoAdManager.getInstance().init(mContext, VIVO_AppID);
		mVivoInterstialAd=new VivoInterstialAd(mContext, VIVO_posID, new IAdListener() {

			@Override
			public void onAdShow() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdShow");
				isADRead=false;
				SdkApplication.myStatistics.DisplayAD(scenes,"insert");
				//onOnVideoCompleted("vivoAdShow");
				mVivoInterstialAd.load();
			}

			@Override
			public void onAdReady() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdReady");
				isADRead = true;

			}

			@Override
			public void onAdFailed(VivoAdError arg0) {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdFailed:"+arg0);
				isADRead = false;
			}

			@Override
			public void onAdClosed() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdClosed");

			}

			@Override
			public void onAdClick() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdClick");
				SdkApplication.myStatistics.HitAD(scenes,"insert");
			}
		});
		mVivoInterstialAd.load();
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
	public void attachBaseContext(Context base) 
	{
		super.attachBaseContext(base);
	}
	public static String scenes = "";
	public void show_insert(String Scenes)
	{
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert isADRead="+isADRead);
		scenes = Scenes;
		if(isADRead == true)
		{
			if (mVivoInterstialAd != null)
			{
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert isADRead="+isADRead);
				mVivoInterstialAd.showAd();

			}
			else
			{
				E2WApp.LogLocal("[InAppShow"+appShow+"] mVivoInterstialAd=null");
			}
		}
		else
		{
			E2WApp.LogLocal("[InAppShow"+appShow+"] mVivoInterstialAd="+mVivoInterstialAd);
			mVivoInterstialAd.load();
		}



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
		E2WApp.LogLocal("[InAppShow" + appShow + "] show_video");
		show_insert(Scenes);
	}
//end}

