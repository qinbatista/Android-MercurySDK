package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import com.ksc.ad.sdk.ui.KsyunApplication;
import com.ksc.ad.sdk.ui.KsyunParams;
import com.ksc.ad.sdk.ui.VideoAd;
import com.ksc.ad.sdk.ui.VideoEventListener;
import com.ksc.ad.sdk.ui.VideoStatus;
import com.miui.zeus.mimo.sdk.MimoSdk;
import com.miui.zeus.mimo.sdk.ad.AdWorkerFactory;
import com.miui.zeus.mimo.sdk.ad.IAdWorker;
import com.miui.zeus.mimo.sdk.listener.MimoAdListener;
import com.xiaomi.ad.common.pojo.AdType;

import static com.east2west.game.QinConst.ADParamList;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	String APPID = "nngiG72b";
	String BANNERID = "B412R2rp";
	String SPLASHID = "jjWDfTIH";
	String INTERSTITIALID = "DQhgCeaE";
	String NATIVEID = "c0k2DQFZ";
	String VIDEOID = "DdvMGEvq";
	private VideoAd videoAd;
	public static String appShow="InAppShowADDefault";
	private static IAdWorker mInterstitialAd;
	public static String MyScenes="";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[3]="+ADParamList[3]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[4]="+ADParamList[4]);
		//String s = QinConst.E2WADID;
		KsyunParams adParams = new KsyunParams();
		adParams.setLogSwitch(true)
				.setmAdSlotId(ADParamList[2])
				.setVideoEventListener(new VideoEventListener() {
					@Override
					public void onAdExist(boolean isAdExist, long code) {
						if (isAdExist) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] has ksy video AD");
						} else {
							E2WApp.LogLocal("[InAppShow"+appShow+"] no ksy video AD");
						}
					}

					@Override
					public void onVideoCached(boolean isCached) {
						if (isCached) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] Load video AD success");
						} else {
							E2WApp.LogLocal("[InAppShow"+appShow+"] Load video AD failed");
						}
					}

					@Override
					public void onVideoStart() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] start play");
					}

					@Override
					public void onVideoCompletion(boolean isLookBack) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show finished");
						if (!isLookBack) {
							// 可以发放奖励
							E2WApp.LogLocal("[InAppShow"+appShow+"] show finished and watch finished");
							SdkApplication.myStatistics.DisplayAD(MyScenes,"video");
							onOnVideoCompleted("onVideoCompletion");
						}
					}

					@Override
					public void onVideoClose(int currentPosition) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] Close video AD:"+currentPosition / 1000 );
					}

					@Override
					public void onVideoError(String reason) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] Display error:"+reason);
					}

					@Override
					public void onLandingPageClose(boolean status) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] Display close");
					}

					@Override
					public void onDownloadStart() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] Start Download");
						SdkApplication.myStatistics.HitAD(MyScenes,"video");
					}

					@Override
					public void onNetRequestError(String error) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] Internet Failed");
					}
				});
		videoAd = new VideoAd(mContext, adParams);


	}
	@Override
	public void ApplicationInit(Application app)
	{
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit ADParamList[3]="+ADParamList[3]);
		KsyunApplication.getInstance().init(app,ADParamList[1],true);
		MimoSdk.init(app, ADParamList[3], "fake_app_key","fake_app_token");
	}

	@Override
	public void onPause()
	{
		if (videoAd != null) {
			videoAd.onResume();
		}
	}
	@Override
	public void onResume()
	{
		if (videoAd != null) {
			videoAd.onResume();
		}
	}
	@Override
	public void onDestroy()
	{
		if (videoAd != null) {
			videoAd.onDestory();
		}
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
		MyScenes =Scenes;
		try {
			mInterstitialAd = AdWorkerFactory.getAdWorker(mContext, (ViewGroup)mContext.getWindow().getDecorView(), new MimoAdListener() {
				@Override
				public void onAdPresent() {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdPresent");
					SdkApplication.myStatistics.DisplayAD(MyScenes,"insert");
				}

				@Override
				public void onAdClick() {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdClick");
					SdkApplication.myStatistics.HitAD(MyScenes,"insert");
				}

				@Override
				public void onAdDismissed() {
					E2WApp.LogLocal("[InAppShow"+appShow+"] init onAdDismissed");

					try{
						mInterstitialAd.load(ADParamList[4]);

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

			mInterstitialAd.load(ADParamList[4]);

		} catch (Exception e) {


			E2WApp.LogLocal("[InAppShow"+appShow+"] init e="+e);

		}
		try {
			if (!mInterstitialAd.isReady()) {
				mInterstitialAd.load(ADParamList[4]);
				mInterstitialAd.show();
				E2WApp.LogLocal("[InAppShow"+appShow+"]Inter ad is not ready!");


			} else {

				mInterstitialAd.show();
				E2WApp.LogLocal("[InAppShow"+appShow+"]Show Intert");
			}
		} catch (Exception e) {
			E2WApp.LogLocal("[InAppShow"+appShow+"]Show Intert : " + e);

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
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
		MyScenes =Scenes;
		if (videoAd.getStatus(mContext) == VideoStatus.HAVE_AD_AND_LOCAL_CACHE) {
			videoAd.showVideo(mContext);
		} else {
			videoAd.load(mContext);
		}

	}
	//end
}

