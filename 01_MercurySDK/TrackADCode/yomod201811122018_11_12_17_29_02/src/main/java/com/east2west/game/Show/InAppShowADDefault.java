package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.soulgame.sgsdk.tgsdklib.TGSDK;
import com.soulgame.sgsdk.tgsdklib.ad.ITGADListener;
import com.soulgame.sgsdk.tgsdklib.ad.ITGRewardVideoADListener;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;

import static com.east2west.game.QinConst.ADParamList;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	public static String appShow="InAppShowADDefault";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
		//String s = QinConst.E2WADID;
		TGSDK.initialize(mContext, ADParamList[1], null);
		TGSDK.preloadAd(mContext);
		TGSDK.setADListener(listener);
		TGSDK.setRewardVideoADListener(rewardAdListener);
	}
	final private ITGRewardVideoADListener rewardAdListener = new ITGRewardVideoADListener() {

		@Override
		public void onADAwardFailed(String arg0, String arg1) {
			E2WApp.LogLocal("[InAppShow"+appShow+"] onADAwardFailed");
			onOnVideoFailed("onADAwardFailed");
		}

		@Override
		public void onADAwardSuccess(String arg0) {
			E2WApp.LogLocal("[InAppShow"+appShow+"] onADAwardSuccess");
			onOnVideoCompleted("onADAwardSuccess");
		}

	};

	final private ITGADListener listener = new ITGADListener() {

		@Override
		public void onADClick(String arg0) {
			E2WApp.LogLocal("[InAppShow"+appShow+"] onADClick");
			SdkApplication.myStatistics.HitAD(myScenes,"video");
		}

		@Override
		public void onADClose(String arg0) {

		}

		@Override
		public void onADComplete(String arg0) {

		}

		@Override
		public void onShowFailed(String arg0, String arg1) {

		}
		@Override
		public void onShowSuccess(String arg0) {
			E2WApp.LogLocal("[InAppShow"+appShow+"] onShowSuccess");
			SdkApplication.myStatistics.DisplayAD(myScenes,"video");
		}

	};
	@Override
	public void ApplicationInit(Application app)
	{		
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit="+app);
	}

	@Override
	public void onStart() {
		super.onStart();
		TGSDK.onStart(mContext);
	}

	@Override
	public void onStop() {
		super.onStop();
		TGSDK.onStop(mContext);
	}

	@Override
	public void onPause() {
		super.onPause();
		TGSDK.onPause(mContext);
	}

	@Override
	public void onResume() {
		super.onResume();
		TGSDK.onResume(mContext);
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		TGSDK.onDestroy(mContext);
	}

	@Override
	public void onActivityResult(int reqCode, int resCode, Intent data) {
		super.onActivityResult(reqCode, resCode, data);
		TGSDK.onActivityResult(mContext, reqCode, resCode, data);
	}

	@Override
	public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
		super.onRequestPermissionsResult(requestCode, permissions, grantResults);
		TGSDK.onRequestPermissionsResult(mContext, requestCode, permissions, grantResults);
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
	public static String myScenes="";
	public void show_video(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");

		myScenes=Scenes;
		if (TGSDK.couldShowAd(ADParamList[2]))
		{
			TGSDK.showAd(mContext, ADParamList[2]);
		}
		else
		{
			onOnVideoFailed("NotPreparedYet");
		}

	}
	//end
}

