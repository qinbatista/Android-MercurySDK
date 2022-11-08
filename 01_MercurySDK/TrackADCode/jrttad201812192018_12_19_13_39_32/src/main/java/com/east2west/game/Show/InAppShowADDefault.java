package com.east2west.game.Show;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdManagerFactory;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTInteractionAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import static com.east2west.game.QinConst.ADParamList;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	public static String appShow="InAppShowADDefault";
	public static String MyScence = "";
	private TTAdNative mTTAdNative;
	private TTRewardVideoAd mttRewardVideoAd;
	private TTFullScreenVideoAd mttFullVideoAd;
	private boolean mHasShowDownloadActive = false;
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[1]="+ADParamList[1]);
		E2WApp.LogLocal("[InAppShow"+appShow+"] ADParamList[2]="+ADParamList[2]);
		//String s = QinConst.E2WADID;
		TTAdManager ttAdManager = TTAdManagerFactory.getInstance(mContext);


		ttAdManager.setAppId(ADParamList[1]).isUseTextureView(true).setName(QinConst.APPChineseName)
				.setDirectDownloadNetworkType(TTAdConstant.NETWORK_STATE_4G, TTAdConstant.NETWORK_STATE_WIFI,
						TTAdConstant.NETWORK_STATE_3G)
				.openDebugMode();
		ttAdManager.requestPermissionIfNecessary(mContext);
		mTTAdNative = ttAdManager.createAdNative(mContext);
		loadAdFullVideo(ADParamList[2], TTAdConstant.HORIZONTAL);
		loadAdVideo(ADParamList[3], TTAdConstant.HORIZONTAL);


	}
	private void loadAdFullVideo(String codeId, int orientation) {
		//step4:创建广告请求参数AdSlot,具体参数含义参考文档
		AdSlot adSlot = new AdSlot.Builder()
				.setCodeId(codeId)
				.setSupportDeepLink(true)
				.setImageAcceptedSize(1080, 1920)
				.setOrientation(orientation)//必填参数，期望视频的播放方向：TTAdConstant.HORIZONTAL 或 TTAdConstant.VERTICAL
				.build();
		//step5:请求广告
		mTTAdNative.loadFullScreenVideoAd(adSlot, new TTAdNative.FullScreenVideoAdListener() {
			@Override
			public void onError(int code, String message) {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ message);
			}

			@Override
			public void onFullScreenVideoAdLoad(TTFullScreenVideoAd ad) {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd loaded");
				mttFullVideoAd = ad;
				mttFullVideoAd.setFullScreenVideoAdInteractionListener(new TTFullScreenVideoAd.FullScreenVideoAdInteractionListener() {

					@Override
					public void onAdShow() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd show");
						SdkApplication.myStatistics.DisplayAD(MyScence,"fullvideo");
						loadAdFullVideo(ADParamList[2], TTAdConstant.HORIZONTAL);
					}

					@Override
					public void onAdVideoBarClick() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd bar click");
						SdkApplication.myStatistics.HitAD(MyScence,"video");
					}

					@Override
					public void onAdClose() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd close");
					}

					@Override
					public void onVideoComplete() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd complete");
					}

					@Override
					public void onSkippedVideo() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd skipped");

					}

				});
			}

			@Override
			public void onFullScreenVideoCached() {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "FullVideoAd video cached");
			}
		});


	}
	private void loadAdVideo(String codeId, int orientation) {
		//step4:创建广告请求参数AdSlot,具体参数含义参考文档
		AdSlot adSlot = new AdSlot.Builder()
				.setCodeId(codeId)
				.setSupportDeepLink(true)
				.setImageAcceptedSize(1080, 1920)
				.setRewardName("金币") //奖励的名称
				.setRewardAmount(3)  //奖励的数量
				.setUserID("user123")//用户id,必传参数
				.setMediaExtra("media_extra") //附加参数，可选
				.setOrientation(orientation) //必填参数，期望视频的播放方向：TTAdConstant.HORIZONTAL 或 TTAdConstant.VERTICAL
				.build();
		//step5:请求广告
		mTTAdNative.loadRewardVideoAd(adSlot, new TTAdNative.RewardVideoAdListener() {
			@Override
			public void onError(int code, String message) {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ message);
			}

			//视频广告加载后，视频资源缓存到本地的回调，在此回调后，播放本地视频，流畅不阻塞。
			@Override
			public void onRewardVideoCached() {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "rewardVideoAd video cached");
			}

			//视频广告的素材加载完毕，比如视频url等，在此回调后，可以播放在线视频，网络不好可能出现加载缓冲，影响体验。
			@Override
			public void onRewardVideoAdLoad(TTRewardVideoAd ad) {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "rewardVideoAd loaded");
				mttRewardVideoAd = ad;
//                mttRewardVideoAd.setShowDownLoadBar(false);
				mttRewardVideoAd.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() {

					@Override
					public void onAdShow() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+"rewardVideoAd show");
						SdkApplication.myStatistics.DisplayAD(MyScence,"video");
						loadAdVideo(ADParamList[3], TTAdConstant.HORIZONTAL);
					}

					@Override
					public void onAdVideoBarClick() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "rewardVideoAd bar click");
						SdkApplication.myStatistics.HitAD(MyScence,"video");
					}

					@Override
					public void onAdClose() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "rewardVideoAd close");
					}

					//视频播放完成回调
					@Override
					public void onVideoComplete() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "rewardVideoAd complete");
					}

					@Override
					public void onVideoError() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "rewardVideoAd error");
					}

					//视频播放完成后，奖励验证回调，rewardVerify：是否有效，rewardAmount：奖励梳理，rewardName：奖励名称
					@Override
					public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+ "verify:"+rewardVerify+" amount:"+rewardAmount+
								" name:"+rewardName);
					}
				});
				mttRewardVideoAd.setDownloadListener(new TTAppDownloadListener() {
					@Override
					public void onIdle() {
						mHasShowDownloadActive = false;
					}

					@Override
					public void onDownloadActive(long totalBytes, long currBytes, String fileName, String appName) {
						if (!mHasShowDownloadActive) {
							mHasShowDownloadActive = true;
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+"下载中，点击下载区域暂停");
						}
					}

					@Override
					public void onDownloadPaused(long totalBytes, long currBytes, String fileName, String appName) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+"下载暂停，点击下载区域继续");
					}

					@Override
					public void onDownloadFailed(long totalBytes, long currBytes, String fileName, String appName) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+"下载失败，点击下载区域重新下载");
					}

					@Override
					public void onDownloadFinished(long totalBytes, String fileName, String appName) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+"下载失败，点击下载区域重新下载");
					}

					@Override
					public void onInstalled(String fileName, String appName) {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_video"+"安装完成，点击下载区域打开");
					}
				});
			}
		});
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
	public void show_insert(final String Scenes) {
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
		if (mttFullVideoAd != null){
			//step6:在获取到广告后展示
			mttFullVideoAd.showFullScreenVideoAd(mContext);
			mttFullVideoAd = null;
		}
		else
		{
			loadAdFullVideo(ADParamList[2], TTAdConstant.HORIZONTAL);
		}

	}
	public void show_video(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
		MyScence=Scenes;
		if (mttRewardVideoAd != null){
			//step6:在获取到广告后展示
			mttRewardVideoAd.showRewardVideoAd(mContext);
			mttRewardVideoAd = null;
		}else {
			loadAdVideo(ADParamList[3], TTAdConstant.HORIZONTAL);
		}
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

	public void show_out(final String Scenes) {
		// TODO Auto-generated method stub
		MyScence=Scenes;
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");

		AdSlot adSlot = new AdSlot.Builder()
				.setCodeId(ADParamList[2])
				.setSupportDeepLink(true)
				.setImageAcceptedSize(600, 600) //根据广告平台选择的尺寸，传入同比例尺寸
				.build();
		//step5:请求广告，调用插屏广告异步请求接口
		mTTAdNative.loadInteractionAd(adSlot, new TTAdNative.InteractionAdListener() {
			@Override
			public void onError(int code, String message) {
				E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "code: " + code + "  message: " + message);
			}

			@Override
			public void onInteractionAdLoad(TTInteractionAd ttInteractionAd) {

				ttInteractionAd.setAdInteractionListener(new TTInteractionAd.AdInteractionListener() {
					@Override
					public void onAdClicked() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "被点击");
						SdkApplication.myStatistics.HitAD(Scenes,"insert");
					}

					@Override
					public void onAdShow() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "被展示");
						SdkApplication.myStatistics.DisplayAD(Scenes,"insert");

					}

					@Override
					public void onAdDismiss() {
						E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+  "插屏广告消失");

					}
				});
				//如果是下载类型的广告，可以注册下载状态回调监听
				if (ttInteractionAd.getInteractionType() == TTAdConstant.INTERACTION_TYPE_DOWNLOAD) {
					ttInteractionAd.setDownloadListener(new TTAppDownloadListener() {
						@Override
						public void onIdle() {
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+  "点击开始下载");
						}

						@Override
						public void onDownloadActive(long totalBytes, long currBytes, String fileName, String appName) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "下载中");
						}

						@Override
						public void onDownloadPaused(long totalBytes, long currBytes, String fileName, String appName) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "下载暂停");
						}

						@Override
						public void onDownloadFailed(long totalBytes, long currBytes, String fileName, String appName) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "下载失败");
						}

						@Override
						public void onDownloadFinished(long totalBytes, String fileName, String appName) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "下载完成");
						}

						@Override
						public void onInstalled(String fileName, String appName) {
							E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert"+ "安装完成");
						}
					});
				}
				//弹出插屏广告
				ttInteractionAd.showInteractionAd(mContext);
			}
		});
	}

	//end
}

