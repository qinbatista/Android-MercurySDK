package com.east2west.game.inApp;

//commentimport java.util.HashMap;
import java.util.Map;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import cn.cmgame.billing.api.GameInterface;
import cn.egame.terminal.paysdk.EgameExitListener;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;
import cn.egame.terminal.sdk.log.EgameAgent;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;
//endpublic class InAppTelecom extends InAppBase {
//comment	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		
		if(SdkApplication.iscarriersneed.equals("open")&&!E2WApp.SortChannelID.equals("telecom"))
		{			
			EgamePay.init(mContext);
			GameInterface.initializeApp(mContext);
			E2WApp.LogLocal("[InAppTelecom] Telecom Init with Mobile Init");
		}
		if(SdkApplication.iscarriersneed.equals("open")&&E2WApp.SortChannelID.equals("telecom"))
		{			
			EgamePay.init(mContext);
			E2WApp.LogLocal("[InAppTelecom] Telecom Init");
		}
		else
		{
			E2WApp.LogLocal("[InAppTelecom] Skip Telecom Init with Mobile Init");
		}
		
		
	}
	
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
	}
	
	@Override
	public void onPause()
	{
		if(SdkApplication.iscarriersneed.equals("open"))
		{
			EgameAgent.onPause(mContext);
			E2WApp.LogLocal("[InAppTelecom] onPause()");
		}
		else
		{
			E2WApp.LogLocal("[InAppTelecom] Skip onPause()");
		}
	}
	@Override
	public void onResume()
	{
		if(SdkApplication.iscarriersneed.equals("open"))
		{
			EgameAgent.onResume(mContext);
			E2WApp.LogLocal("[InAppTelecom] onResume()");
		}
		else
		{
			E2WApp.LogLocal("[InAppTelecom] Skip onResume()");
		}
	}
	
	@Override
	public void onDestroy()
	{
	}
	@Override
	public void ExitGame()
	{		
		E2WApp.LogLocal("[InAppTelecom] Callback Exit");
		if(SdkApplication.iscarriersneed.equals("open")&&E2WApp.SortChannelID.equals("telecom"))
		{
			 EgamePay.exit((Activity) E2WApp.mContext,new EgameExitListener(){
					public void exit() {
						onFunctionCallBack("ExitGame");
			        	((Activity) E2WApp.mContext).finish();
			    		android.os.Process.killProcess(android.os.Process.myPid());
					}
					public void cancel() {
						 Toast.makeText(E2WApp.mContext, "取消退出", Toast.LENGTH_SHORT).show();
					}
				});
		}
		else
		{
			E2WApp.LogLocal("[InAppTelecom] Kill Progroess");
			onFunctionCallBack("ExitGame");
			((Activity) E2WApp.mContext).finish();
    		android.os.Process.killProcess(android.os.Process.myPid());
		}
	}

	private void purchaseProduct()
	{
		E2WApp.LogLocal("InAppTelecom purchaseProduct");
		mContext.runOnUiThread(new Runnable() {
	      @Override
	      public void run() {
		
		HashMap<String, String> hashMap=new HashMap<String, String>();
		hashMap.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, QinConst.CarriersID);
		hashMap.put(EgamePay.PAY_PARAMS_KEY_TOOLS_NAME, mProductDescription);
		
		
		EgamePay.pay(mContext, hashMap, new EgamePayListener() {
			
			@Override
			public void paySuccess(Map<String, String> arg0) {
				onPurchaseSuccess("");
				Log.d(QinConst.TAG, "BUY_SUCCESS,save_message="+arg0.get(EgamePay.PAY_PARAMS_KEY_TOOLS_NAME));
			}
			
			@Override
			public void payFailed(Map<String, String> arg0, int arg1) {
				onPurchaseFailed(":" + arg1);
				Log.e(QinConst.TAG, "payFailed - " + arg1);
			}
			
			@Override
			public void payCancel(Map<String, String> arg0) {
				onPurchaseCanceled("");
			}
		});
	      }
	    });

	}
//end}

