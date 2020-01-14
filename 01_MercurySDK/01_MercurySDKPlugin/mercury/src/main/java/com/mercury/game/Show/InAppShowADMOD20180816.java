package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;


//commentimport android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
//endpublic class InAppShowADMOD20180816 extends InAppBase {
//comment	public static String appShow="InAppShowADMOD20180816";

	private static final String AD_UNIT_ID = "ca-app-pub-3940256099942544/5224354917";
	private static final String APP_ID = "ca-app-pub-3940256099942544~3347511713";
	private RewardedVideoAd rewardedVideoAd;
	AdRequest adRequest;
	public String scence="";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		//String s = QinConst.E2WADID;

		// MobileAds.initialize(mContext, "ca-app-pub-3940256099942544~3347511713");
		rewardedVideoAd = MobileAds.getRewardedVideoAdInstance(mContext);
		adRequest = new AdRequest.Builder()
				.addTestDevice(AdRequest.DEVICE_ID_EMULATOR)
				.addTestDevice("D03B53F0B0093A47B26EA30A7E8FBAB2").build();
		rewardedVideoAd.setRewardedVideoAdListener(new RewardedVideoAdListener(){
			@Override
			public void onRewardedVideoAdLeftApplication() {
				Log.e("ad", "onRewardedVideoAdLeftApplication: ");
			}

			@Override
			public void onRewardedVideoAdClosed() {
				Log.e("ad", "onRewardedVideoAdClosed: ");
				// Preload the next video ad.
				loadRewardedVideoAd();
			}

			@Override
			public void onRewardedVideoAdFailedToLoad(int errorCode) {
				Log.e("ad", "onRewardedVideoAdFailedToLoad: ");
			}

			@Override
			public void onRewardedVideoAdLoaded() {
				Log.e("ad", "onRewardedVideoAdLoaded: ");
			}

			@Override
			public void onRewardedVideoAdOpened() {
				Log.e("ad", "onRewardedVideoAdOpened: ");
			}

			@Override
			public void onRewarded(RewardItem reward) {
				Log.e("ad", "onRewarded: ");

			}

			@Override
			public void onRewardedVideoStarted() {
				Log.e("ad", "onRewardedVideoStarted: ");
			}

			@Override
			public void onRewardedVideoCompleted() {
				Log.e("ad", "onRewardedVideoCompleted: ");
				SdkApplication.myStatistics.HitAD(scence,"video");
			}
		});
		loadRewardedVideoAd();
	}

	private  void loadRewardedVideoAd() {
		if (!rewardedVideoAd.isLoaded()) {
			rewardedVideoAd.loadAd(AD_UNIT_ID, adRequest);
		}
	}

	public void Show() {
		if (rewardedVideoAd.isLoaded()) {
			rewardedVideoAd.show();
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
		rewardedVideoAd.pause(mContext);
	}
	
	@Override
	public void onResume()
	{
		rewardedVideoAd.resume(mContext);
	}
	
	@Override
	public void onDestroy()
	{
		rewardedVideoAd.destroy(mContext);
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
		scence = Scenes;
		Show();
	}
//end}

