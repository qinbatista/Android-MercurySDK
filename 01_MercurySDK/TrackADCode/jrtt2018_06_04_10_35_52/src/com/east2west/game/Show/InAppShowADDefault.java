package com.east2west.game.Show;


import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.TTAdManagerHolder;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.widget.Toast;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdManagerFactory;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;

//end

public class InAppShowADDefault extends InAppBase {
	//comment
	public static String appShow="InAppShowADDefault";
    private TTAdNative mTTAdNative;
    private TTRewardVideoAd mttRewardVideoAd;
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		TTAdManager ttAdManager = TTAdManagerHolder.getInstance(mContext);
        //申请部分权限，如read_phone_state,防止获取不了imei时候，下载类广告没有填充的问题。
        TTAdManagerHolder.getInstance(mContext).requestPermissionIfNecessary(mContext);
        mTTAdNative = ttAdManager.createAdNative(mContext);
        loadAd(QinConst.ADParamList[2], TTAdConstant.HORIZONTAL);
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
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
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
		if (mttRewardVideoAd != null){
            mttRewardVideoAd.showRewardVideoAd(mContext);
            mttRewardVideoAd = null;
        }else{
            Toast.makeText(mContext, "请先加载广告", Toast.LENGTH_SHORT).show();
            loadAd(QinConst.ADParamList[2], TTAdConstant.HORIZONTAL);
        }
	}
	private void loadAd(String codeId, int orientation) {
        AdSlot adSlot = new AdSlot.Builder()
                .setCodeId(codeId)
                .setSupportDeepLink(true)
                .setAdCount(2)
                .setImageAcceptedSize(1080, 1920)
                .setRewardName("金币")
                .setRewardAmount(3)
                .setUserID("user123")
                .setMediaExtra("media_extra")
                .setOrientation(orientation)
                .build();
        mTTAdNative.loadRewardVideoAd(adSlot, new TTAdNative.RewardVideoAdListener() {
            @Override
            public void onError(int code, String message) {
                Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
            }

            //视频广告加载后的视频资源缓存到本地的回调
            @Override
            public void onRewardVideoCached() {
                Toast.makeText(mContext, "rewardVideoAd video cached", Toast.LENGTH_SHORT).show();
            }

            //视频广告的素材加载完毕，比如视频url等
            @Override
            public void onRewardVideoAdLoad(TTRewardVideoAd ad) {
                Toast.makeText(mContext, "rewardVideoAd loaded", Toast.LENGTH_SHORT).show();
                mttRewardVideoAd = ad;
//                mttRewardVideoAd.setShowDownLoadBar(false);
                mttRewardVideoAd.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() {

                    @Override
                    public void onAdShow() {
                        Toast.makeText(mContext, "rewardVideoAd show", Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void onAdVideoBarClick() {
                        Toast.makeText(mContext, "rewardVideoAd bar click", Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void onAdClose() {
                        Toast.makeText(mContext, "rewardVideoAd close", Toast.LENGTH_SHORT).show();
                    }

                    @Override
                    public void onVideoComplete() {
                        Toast.makeText(mContext, "rewardVideoAd complete", Toast.LENGTH_SHORT).show();
                        loadAd(QinConst.ADParamList[2], TTAdConstant.HORIZONTAL);
                    }

                    @Override
                    public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName) {
                        Toast.makeText(mContext, "verify:"+rewardVerify+" amount:"+rewardAmount+
                                " name:"+rewardName,
                                Toast.LENGTH_SHORT).show();
                    }
                });
                mttRewardVideoAd.setDownloadListener(new TTAppDownloadListener() {
                    @Override
                    public void onIdle() {

                    }

                    @Override
                    public void onDownloadActive(long totalBytes, long currBytes, String fileName, String appName) {

                    }

                    @Override
                    public void onDownloadPaused(long totalBytes, long currBytes, String fileName, String appName) {

                    }

                    @Override
                    public void onDownloadFailed(long totalBytes, long currBytes, String fileName, String appName) {

                    }

                    @Override
                    public void onDownloadFinished(long totalBytes, String fileName, String appName) {

                    }

                    @Override
                    public void onInstalled(String fileName, String appName) {

                    }
                });
            }
        });
    }
	//end
}

