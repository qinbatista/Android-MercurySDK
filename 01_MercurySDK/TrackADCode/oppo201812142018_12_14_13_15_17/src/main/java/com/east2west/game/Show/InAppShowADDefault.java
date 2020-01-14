package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.oppo.mobad.api.InitParams;
import com.oppo.mobad.api.MobAdManager;
import com.oppo.mobad.api.ad.InterstitialAd;
import com.oppo.mobad.api.ad.RewardVideoAd;
import com.oppo.mobad.api.listener.IInterstitialAdListener;
import com.oppo.mobad.api.listener.IRewardVideoAdListener;
import com.oppo.mobad.api.params.RewardVideoAdParams;

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
	private InterstitialAd mInterstitialAd;
    public static String MyScence = "";
    private RewardVideoAd mRewardVideoAd;
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
        E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
        E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[3]="+ADParamList[3]);
        InitParams initParams = new InitParams.Builder()
                .setDebug(false)//true打开SDK日志，当应用发布Release版本时，必须注释掉这行代码的调用，或者设为false
                .build();
        MobAdManager.getInstance().init(mContext, ADParamList[1], initParams);
        init();
		//String s = QinConst.E2WADID;
	}
	@Override
	public void ApplicationInit(Application app)
	{
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit="+app);
	}
	private void init() {
		/**
		 * 构造 InterstitialAd.
		 */
		mInterstitialAd = new InterstitialAd(mContext, ADParamList[2]);
		/**
		 * 设置插屏广告行为监听器.
		 */
		mInterstitialAd.setAdListener(new IInterstitialAdListener()
        {
            @Override
            public void onAdShow() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdShow");
                SdkApplication.myStatistics.DisplayAD(MyScence,"insert");
                mInterstitialAd.loadAd();
            }

            @Override
            public void onAdFailed(String s) {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdFailed");
            }

            @Override
            public void onAdClick() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdClick");
                SdkApplication.myStatistics.HitAD(MyScence,"insert");
            }

            @Override
            public void onAdReady() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdReady");
            }

            @Override
            public void onAdClose() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdClose");
            }
        });
		/**
		 * 调用 loadAd() 方法请求广告.
		 */
		mInterstitialAd.loadAd();
        mRewardVideoAd = new RewardVideoAd(mContext, ADParamList[3], new IRewardVideoAdListener(){
            @Override
            public void onAdSuccess() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdSuccess");
            }

            @Override
            public void onAdFailed(String s) {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdFailed");
            }

            @Override
            public void onAdClick(long l) {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdClick");
                SdkApplication.myStatistics.HitAD(MyScence,"video");
            }

            @Override
            public void onVideoPlayStart() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onVideoPlayStart");
                SdkApplication.myStatistics.DisplayAD(MyScence,"video");
                RewardVideoAdParams rewardVideoAdParams=new RewardVideoAdParams.Builder()
                        .setFetchTimeout(3000)
                        .build();
                mRewardVideoAd.loadAd(rewardVideoAdParams);
            }

            @Override
            public void onVideoPlayComplete() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onAdClonVideoPlayCompleteose");
                onOnVideoCompleted("onVideoPlayComplete");
            }

            @Override
            public void onVideoPlayError(String s) {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onVideoPlayError");
            }

            @Override
            public void onVideoPlayClose(long l) {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onVideoPlayClose");
            }

            @Override
            public void onLandingPageOpen() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onLandingPageOpen");
            }

            @Override
            public void onLandingPageClose() {
                E2WApp.LogLocal("[InAppShow"+appShow+"] onLandingPageClose");
            }
        }
        );
        RewardVideoAdParams rewardVideoAdParams=new RewardVideoAdParams.Builder()
                .setFetchTimeout(3000)
                .build();
        mRewardVideoAd.loadAd(rewardVideoAdParams);
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
        MyScence=Scenes;
        mInterstitialAd.showAd();
        mInterstitialAd.loadAd();
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
	public void show_video(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
        MyScence=Scenes;
        mRewardVideoAd.showAd();
        RewardVideoAdParams rewardVideoAdParams=new RewardVideoAdParams.Builder()
                .setFetchTimeout(3000)
                .build();
        mRewardVideoAd.loadAd(rewardVideoAdParams);
	}
	//end
}

