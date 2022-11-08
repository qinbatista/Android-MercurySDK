package com.east2west.game.Show;


import java.util.Random;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.vivo.mobilead.interstitial.VivoInterstialAd;
import com.vivo.mobilead.listener.IAdListener;
import com.vivo.mobilead.manager.VivoAdManager;
import com.vivo.mobilead.model.VivoAdError;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import android.view.View;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	private static String VIVO_AppID="";
	private static String VIVO_posID="";
	private VivoInterstialAd mVivoInterstialAd;
	public static String appShow="InAppShowADDefault";
	public static boolean isADRead = false;
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		//String s = QinConst.E2WADID;
		
		VIVO_AppID=QinConst.ADParamList[1];
		VIVO_posID=QinConst.ADParamList[2];
		E2WApp.LogLocal("[InAppShow"+appShow+"] VIVO_AppID"+"VIVO_AppID");
		E2WApp.LogLocal("[InAppShow"+appShow+"] VIVO_posID"+"VIVO_posID");
		VivoAdManager.getInstance().init(context, VIVO_AppID);
		initInsert();
	}
	
	public void initInsert() {
		// TODO Auto-generated method stub
        mVivoInterstialAd=new VivoInterstialAd(mContext, VIVO_posID, new IAdListener() {
			
			@Override
			public void onAdShow() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdShow");
				isADRead=false;
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
			}
			
			@Override
			public void onAdClosed() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdClosed");
				initInsert();
			}
			
			@Override
			public void onAdClick() {
				// TODO Auto-generated method stub
				Log.e("IAP", "vivoAdClick");
				initInsert();
			}
		});
		mVivoInterstialAd.load();
		E2WApp.LogLocal("[InAppShow"+appShow+"] initInsert------>"+"show_insert");
		
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
	
	
	public void show_insert() {
		// TODO Auto-generated method stub
		if(isADRead = true)
		{
			if (mVivoInterstialAd != null) 
			{
				mVivoInterstialAd.showAd();
			}
			else
			{
				initInsert();
			}
		}
		else
		{
			E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
			
		}

	}
	
	public void show_banner() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_banner");
	}
	public void show_push() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_push");
	}

	public void show_out() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_out");
	}
	public void show_video() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
	}
	//end
}

