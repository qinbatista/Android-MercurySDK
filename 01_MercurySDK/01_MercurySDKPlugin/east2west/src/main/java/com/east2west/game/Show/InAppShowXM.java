package com.east2west.game.Show;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.unity3d.player.UnityPlayer;
import com.xiaomi.ad.AdListener;
import com.xiaomi.ad.AdSdk;
import com.xiaomi.ad.common.pojo.AdError;
import com.xiaomi.ad.common.pojo.AdEvent;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
//endimport android.view.View;

public class InAppShowXM extends InAppBase {
//comment	public Context xmcontext;
	public Boolean isShowAD=false;
	public static String appShow="XM";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appinterface)
	{
		xmcontext=context;
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

