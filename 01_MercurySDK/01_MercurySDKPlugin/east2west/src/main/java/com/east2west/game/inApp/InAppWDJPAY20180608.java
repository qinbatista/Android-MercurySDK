package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.util.Log;
import cn.uc.gamesdk.UCGameSdk;
import cn.uc.gamesdk.even.SDKEventKey;
import cn.uc.gamesdk.even.SDKEventReceiver;
import cn.uc.gamesdk.even.Subscribe;
import cn.uc.gamesdk.exception.AliLackActivityException;
import cn.uc.gamesdk.open.GameParamInfo;
import cn.uc.gamesdk.open.UCOrientation;
import cn.uc.gamesdk.param.SDKParamKey;
import cn.uc.gamesdk.param.SDKParams;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

//endpublic class InAppWDJPAY20180608 extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppWDJPAY20180608";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
			// 银河历险记3 full打开		
		if(QinConst.Restoreappid.equals("Samorost3"))
 		{
			onPurchaseSuccess("17");
   	  	}
		 UCGameSdk.defaultSdk().registerSDKEventReceiver(receiver);
		 mBaseInApp = E2WApp.activityforappbase.getBaseInApp();	
	      	GameParamInfo gpi= new GameParamInfo();
	      	gpi.setGameId(724740);// 游戏参数从开放平台游戏管理-SDK接入那里获取
	        //设置SDK屏幕方向 
	      	//LANDSCAPE：横屏，横屏游戏必须设置为横屏,PORTRAIT：竖屏
	     	gpi.setOrientation(UCOrientation.LANDSCAPE);
	      	SDKParams sdkParams = new SDKParams();
	      	
	      	sdkParams.put(SDKParamKey.GAME_PARAMS, gpi); 
	      	
	      	String info =mContext.getIntent().getDataString();
	      	if (TextUtils.isEmpty(info)) {
	      		Intent intent =mContext.getIntent();
	      	    info = intent.getStringExtra("data");
	      	}
	      	sdkParams.put("pullup_info", info);
	      	
	        //付费下载游戏增加此设置
	        	sdkParams.put("fee_type", 1);      	
	      	
	      	try {
	              UCGameSdk.defaultSdk().initSdk((Activity)mContext, sdkParams);
	          } catch (AliLackActivityException e) {
	              e.printStackTrace();
	          }

	      }

	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
	}
	
	
	 SDKEventReceiver receiver = new SDKEventReceiver() {
	     	

	     	//初始化回调
	     	@Subscribe(event = SDKEventKey.ON_INIT_SUCC)
	         private void onInitSucc() {
	             System.out.println("初始化成功");
	         }

	         @Subscribe(event = SDKEventKey.ON_INIT_FAILED)
	         private void onInitFailed(String desc) {
	         	System.out.println("初始化失败:" + desc);
	         }
	
	         //退出回调
	         @Subscribe(event = SDKEventKey.ON_EXIT_SUCC)
	         private void onExit(String msg){
	       	  System.out.println( "退出成功: msg = " + msg);
	       	  mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	       	  mBaseInApp.ExitGame();
	       	  System.exit(0);
	         }
	         
	         @Subscribe(event = SDKEventKey.ON_EXIT_CANCELED)
	         private void onExitCanceled(String msg) {
	       	  System.out.println( "取消退出游戏: msg = " + msg);
	         }
	       
	     };
	
	
	
	
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
	}
	@Override
	public void onPause()
	{		
		E2WApp.LogLocal("["+Channelname+"] onPause");
	}
	
	@Override
	public void onResume()
	{
		E2WApp.LogLocal("["+Channelname+"] onResume");
	}
	@Override
	public void onDestroy()
	{
		E2WApp.LogLocal("["+Channelname+"] onDestroy");
		UCGameSdk.defaultSdk().registerSDKEventReceiver(receiver);
        receiver = null;
        super.onDestroy();
	}
	@Override
	public void onStop() 
	{
		E2WApp.LogLocal("["+Channelname+"] onStop");
	}
	@Override
	public void onStart() 
	{
		E2WApp.LogLocal("["+Channelname+"] onStart");
	}
	@Override
	public void onRestart()
	{
		E2WApp.LogLocal("["+Channelname+"] onRestart");
		
	}
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) 
	{
		E2WApp.LogLocal("["+Channelname+"] onActivityResult(int requestCode, int resultCode, Intent data)");
	}
	@Override
	public void onNewIntent(Intent intent) 
	{
		E2WApp.LogLocal("["+Channelname+"] onNewIntent(Intent intent) ");
	}
	
	
	
	


	@Override
	public void ExitGame()
	{

		try{
	   		  UCGameSdk.defaultSdk().exit((Activity)mContext, null);
	   		 
	   	  }catch(Exception e){
	   		  e.printStackTrace();
	   	  }
		
	}
	
	/*
     * 设备返回键退出
     */
    public void onBackPressed() {
    	ExitGame();	  	
    }


	private void purchaseProduct()
	{
		E2WApp.LogLocal("["+Channelname+"] CarriersPayLock="+QinConst.CarriersPayLock);
		E2WApp.LogLocal("["+Channelname+"] SDKPayLock="+QinConst.SDKPayLock);
		
		if(QinConst.CarriersPayLock.equals("0")&&QinConst.SDKPayLock.equals("0"))
		{
			
		}
		else if(QinConst.CarriersPayLock.equals("1")&&QinConst.SDKPayLock.equals("0"))
		{
			 CarriersPay();
		}
		else if(QinConst.CarriersPayLock.equals("0")&&QinConst.SDKPayLock.equals("1"))
		{
			ChannelPay();
		}
		else if(QinConst.CarriersPayLock.equals("1")&&QinConst.SDKPayLock.equals("1"))
		{
			DoublePay();
		}
	}
	public void CarriersPay()
	{
		if (mBaseInApp != null&&SdkApplication.iscarriersneed.equals("open")) 
		{
			mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
		}
		else
		{
			E2WApp.LogLocal("["+Channelname+"] MOBILE_SPLASH Closed...Can't Use Carrier's Pay");
		}
	}
	public void ChannelPay()
	{
		Log.e(QinConst.TAG,"mProductId="+mProductId);
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("小米支付", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					ChannelPay();
				}
			});
			builder.setNeutralButton("短信支付", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					CarriersPay();
				}
			});
			builder.setNegativeButton("取消", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					onPurchaseFailed(Channelname);
					dialog.dismiss();
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
//end}
