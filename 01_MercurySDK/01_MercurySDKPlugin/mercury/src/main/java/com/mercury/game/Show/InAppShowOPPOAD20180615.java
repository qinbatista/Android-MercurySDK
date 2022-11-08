package com.east2west.game.Show;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;
//commentimport com.androidquery.util.Constants;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.oppo.mobad.api.InitParams;
import com.oppo.mobad.api.MobAdManager;
import com.oppo.mobad.api.ad.InterstitialAd;
import com.oppo.mobad.api.listener.IInterstitialAdListener;
import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import android.view.View;
//endpublic class InAppShowOPPOAD20180615 extends InAppBase{
//comment	public static String appShow="InAppShowOPPOAD20180615";
	private static final String TAG = "InterstitialActivity";	
	private InterstitialAd mInterstitialAd;
	public static String APP_ID ="";
	public static String INTERSTITIAL_POS_ID="";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		APP_ID =QinConst.ADParamList[1];
		INTERSTITIAL_POS_ID=QinConst.ADParamList[2];		
		E2WApp.LogLocal("[InAppShow"+appShow+"]->APP_ID="+APP_ID );
		E2WApp.LogLocal("[InAppShow"+appShow+"]->INTERSTITIAL_POS_ID="+INTERSTITIAL_POS_ID);

		InitParams initParams = new InitParams.Builder()
				.setDebug(true)
				//true打开SDK日志，当应用发布Release版本时，必须注释掉这行代码的调用，或者设为false
				.build();
				/**
				 * 调用这行代码初始化广告SDK
				 */
				MobAdManager.getInstance().init(mContext, APP_ID, initParams);
		
		initSdk();
		//String s = QinConst.E2WADID;
	}
	
    
	@Override
	public void ApplicationInit(Application app)
	{			
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit="+app);
		
	}
	
	private void initSdk() {	

		/**
		 * 构造 InterstitialAd.
		 */
		mInterstitialAd = new InterstitialAd(mContext, INTERSTITIAL_POS_ID);

		/**
		 * 设置插屏广告行为监听器.
		 */
		mInterstitialAd.setAdListener(new IInterstitialAdListener(){

			@Override
			public void onAdShow() {
				/**
				 *广告展示
				 */
				Log.d(TAG, "onAdShow");
				SdkApplication.myStatistics.DisplayAD(scence,"insert");
			}

			@Override
			public void onAdFailed(String errMsg) {
				/**
				 *请求广告失败
				 */
				Log.d(TAG, "onAdFailed:errMsg=" + (null != errMsg ? errMsg : ""));
			}

			@Override
			public void onAdReady() {

				/**
				 *请求广告成功
				 */
				Log.d(TAG, "onAdReady");
				/**
				 *  调用sowAd方法展示插屏广告
				 *  注意：只有请求广告回调onAdReady以后，调用loadAd方法才会展示广告，如果是onAdFailed，则即使调用了showAd，也不会展示广告
				 *
				 */
				mInterstitialAd.showAd();
			}

			@Override
			public void onAdClick() {
				/**
				 *广告被点击
				 */
				Log.d(TAG, "onAdClick");
				SdkApplication.myStatistics.HitAD(scence,"insert");

			}

			@Override
			public void onAdClose() {
				/**
				 *广告被关闭
				 */
				Log.d(TAG, "onAdClose");
			}

		});
		/**
		 * 调用 loadAd() 方法请求广告.
		 */
		//mInterstitialAd.loadAd();
 
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
		/**
         * 在退出页面时调用destroyAd来释放广告资源
         */
        if (null != mInterstitialAd) {
            mInterstitialAd.destroyAd();
           
        }
        super.onDestroy();
        
        MobAdManager.getInstance().exit(mContext);
	}

	@Override
	public void attachBaseContext(Context base) 
	{
		super.attachBaseContext(base);
	}
	public static  String scence="";
	public void show_insert(String Scenes) {
		// TODO Auto-generated method stub
		Scenes = scence;
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
		mInterstitialAd.loadAd();
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

