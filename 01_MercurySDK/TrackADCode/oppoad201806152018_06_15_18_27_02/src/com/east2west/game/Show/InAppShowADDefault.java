package com.east2west.game.Show;


import com.androidquery.util.Constants;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.oppo.mobad.api.InitParams;
import com.oppo.mobad.api.MobAdManager;
import com.oppo.mobad.api.ad.InterstitialAd;
import com.oppo.mobad.api.listener.IInterstitialAdListener;
//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
//end
import android.util.Log;

public class InAppShowADDefault extends InAppBase implements IInterstitialAdListener {
	//comment
	public static String appShow="InAppShowADDefault";
	private static final String TAG = "InterstitialActivity";
	private InterstitialAd mInterstitialAd;
	public static String APP_ID ="";
	public static String INTERSTITIAL_POS_ID="";	
	public static boolean isADRead = false;
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
				
		E2WApp.LogLocal("[InAppShow"+appShow+"]->APP_ID="+APP_ID );
		E2WApp.LogLocal("[InAppShow"+appShow+"]->INTERSTITIAL_POS_ID="+INTERSTITIAL_POS_ID);
		InitParams initParams = new InitParams.Builder()
                .setDebug(true)//true打开SDK日志，当应用发布Release版本时，必须注释掉这行代码的调用，或者设为false
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
		APP_ID =QinConst.ADParamList[1];
		INTERSTITIAL_POS_ID=QinConst.ADParamList[2];
		E2WApp.LogLocal("[InAppShow"+appShow+"]->APP_ID="+APP_ID );
		E2WApp.LogLocal("[InAppShow"+appShow+"]->INTERSTITIAL_POS_ID="+INTERSTITIAL_POS_ID);			
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit="+"执行");
		
	}
	
	private void initSdk() {	 

		/**
		 * 构造 InterstitialAd.
		 */
		mInterstitialAd = new InterstitialAd(mContext, INTERSTITIAL_POS_ID);

		/**
		 * 设置插屏广告行为监听器.
		 */
		mInterstitialAd.setAdListener(this);
		/**
		 * 调用 loadAd() 方法请求广告.
		 */
		mInterstitialAd.loadAd();
 
	}

	  @Override
	    public void onAdShow() {
		  /**
	         *广告展示
	         */
	        Log.d(TAG, "onAdShow");
	        isADRead=false;
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
	        isADRead = true;
	    }

	    @Override
	    public void onAdClick() {
	    	/**
	         *广告被点击
	         */
	        Log.d(TAG, "onAdClick");
	        mInterstitialAd.showAd();
	    }

	    @Override
	    public void onAdClose() {
	    	/**
	         *广告被关闭
	         */
	        Log.d(TAG, "onAdClose");
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
	public void show_insert() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
		if(isADRead = true)
		{
			if (mInterstitialAd != null) 
			{
				mInterstitialAd.showAd();
			}
			else
			{
				onAdShow();
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

