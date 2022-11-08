package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
//comment
import com.miui.zeus.mimo.sdk.MimoSdk;
import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoAdListener;
import com.xiaomi.ad.common.pojo.AdType;

import android.Manifest;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.ViewGroup;

import static com.east2west.game.QinConst.ADParamList;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	private static IAdWorker mInterstitialAd;
	private static final String INTERS_POS_ID = "1d576761b7701d436f5a9253e7cf9572";//广告位的ID
	private static final String APP_ID = "2882303761517411490";//app的ID
	// 以下两个没有的话就按照以下传入
	private static final String APP_KEY = "fake_app_key";
	private static final String APP_TOKEN = "fake_app_token";
    public static String appShow="InAppShowADDefault";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
		MimoSdk.init(mContext, ADParamList[1], APP_KEY, APP_TOKEN);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		if (Build.VERSION.SDK_INT >= 23) {
			if (ContextCompat.checkSelfPermission(mContext,Manifest.permission.READ_PHONE_STATE) != PackageManager.PERMISSION_GRANTED) {
				ActivityCompat.requestPermissions(mContext,new String[]{Manifest.permission.READ_PHONE_STATE}     , 0);
			}
		}

		//String s = QinConst.E2WADID;
		//E2WApp.LogLocal("[InAppShow"+appShow+"] insert");

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
		try {
			mInterstitialAd = AdWorkerFactory.getAdWorker(mContext, (ViewGroup)mContext.getWindow().getDecorView(), new MimoAdListener() {
				@Override
				public void onAdPresent() {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdPresent");
				}

				@Override
				public void onAdClick() {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdClick");
				}

				@Override
				public void onAdDismissed() {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdDismissed");

					try{
						mInterstitialAd.load(ADParamList[2]);

					}catch (Exception e) {

					}
				}

				@Override
				public void onAdFailed(String s) {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdFailed="+s);
				}

				@Override
				public void onAdLoaded(int size) {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdLoaded="+size);
				}

				@Override
				public void onStimulateSuccess() {
				}
			}, AdType.AD_INTERSTITIAL);

			mInterstitialAd.load(ADParamList[2]);

		} catch (Exception e) {


			E2WApp.LogLocal("[InAppShow"+appShow+"] init e");

		}
		// TODO Auto-generated method stub

		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
		SdkApplication.myStatistics.DisplayAD(Scenes,"insert");
		E2WApp.LogLocal("[InAppShow"+appShow+"] show InsertAD");
		try {
			if (!mInterstitialAd.isReady()) {
				mInterstitialAd.load(ADParamList[2]);
				mInterstitialAd.show();
				E2WApp.LogLocal("[InAppShow"+appShow+"]Inter ad is not ready!");


			} else {

				mInterstitialAd.show();
				E2WApp.LogLocal("[InAppShow"+appShow+"]Show Inter");
			}
		} catch (Exception e) {
			E2WApp.LogLocal("[InAppShow"+appShow+"]Show Inter : " + e);

		}
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
		SdkApplication.myStatistics.HitAD(Scenes,"video");
	}
	//end
}

