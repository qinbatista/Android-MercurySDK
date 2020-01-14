package com.east2west.game.inApp;

//commentimport org.json.JSONException;
import org.json.JSONObject;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.tencent.assistant.sdk.remote.SDKConst;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import cn.uc.gamesdk.UCGameSdk;
import cn.uc.gamesdk.even.SDKEventKey;
import cn.uc.gamesdk.even.SDKEventReceiver;
import cn.uc.gamesdk.even.Subscribe;
import cn.uc.gamesdk.exception.AliLackActivityException;
import cn.uc.gamesdk.open.GameParamInfo;
import cn.uc.gamesdk.open.UCOrientation;
import cn.uc.gamesdk.param.SDKParamKey;
import cn.uc.gamesdk.param.SDKParams;
import cn.uc.paysdk.SDKCore;
import cn.uc.paysdk.face.commons.PayResponse;
import cn.uc.paysdk.face.commons.Response;
import cn.uc.paysdk.face.commons.SDKCallbackListener;
import cn.uc.paysdk.face.commons.SDKError;
import cn.uc.paysdk.face.commons.SDKProtocolKeys;
//endpublic class InAppUC extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppUC";
	public Boolean mRepeatCreate = false;
	public int gameid=729821;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		E2WApp.LogLocal("["+Channelname+"] strAppKeyUC="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecretUC="+strAppSecret);
		gameid=Integer.parseInt(strAppId);
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		UCGameSdk.defaultSdk().registerSDKEventReceiver(receiver);		
		 if ((mContext.getIntent().getFlags() & Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT) != 0) {
			 	E2WApp.LogLocal("["+Channelname+"] onCreate with flag FLAG_ACTIVITY_BROUGHT_TO_FRONT");
	            mRepeatCreate = true;
	            mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	    		mBaseInApp.ExitGame();
	            return;
	     }
		 ucSdkInit(getPullupInfo(mContext.getIntent()));
	}
	private String getPullupInfo(Intent intent) {
        if(intent == null){
            return null;
        }
        String pullupInfo = intent.getDataString();
        if (TextUtils.isEmpty(pullupInfo)) {
            pullupInfo = intent.getStringExtra("data");
        }

        return pullupInfo;
    }
	private void ucSdkInit(String pullUpInfo) {
    	
        GameParamInfo gameParamInfo = new GameParamInfo();
        gameParamInfo.setGameId(gameid);
        gameParamInfo.setOrientation(UCOrientation.PORTRAIT);
        SDKParams sdkParams = new SDKParams();
        sdkParams.put(SDKParamKey.GAME_PARAMS, gameParamInfo);
        sdkParams.put(SDKParamKey.PULLUP_INFO,pullUpInfo);
			
        try {
            UCGameSdk.defaultSdk().initSdk(mContext, sdkParams);
            
        } catch (AliLackActivityException e) {
            e.printStackTrace();
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
	public void ExitGame()
	{
		new Handler(E2WApp.mContext.getMainLooper()).post(new Runnable() {
			@Override
			public void run() {
				E2WApp.LogLocal("["+Channelname+"] ExitGame()_");
				 try
				 {
		   		  UCGameSdk.defaultSdk().exit((Activity) E2WApp.mContext, null);
		   	  	 }
				 catch(Exception e)
				 {
		   		  e.printStackTrace();
		   	  	 } 	  
		 
	  }
});
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
		doPay();
	}
	 public void doPay() {

	        SDKParams sdkParams = new SDKParams();
	        sdkParams.put(SDKProtocolKeys.APP_NAME, QinConst.APPChineseName);
	        sdkParams.put(SDKProtocolKeys.PRODUCT_NAME, mProductDescription);
	        sdkParams.put(SDKProtocolKeys.AMOUNT, mProductPrice);
	        sdkParams.put(SDKProtocolKeys.NOTIFY_URL, "http://pay.east2west.cn/cdkey/index.php/Callback/UC");
	        sdkParams.put(SDKProtocolKeys.ATTACH_INFO, E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg);
	        sdkParams.put(SDKProtocolKeys.CP_ORDER_ID, InAppBase.OrderID);

	        

	        try {
	            UCGameSdk.defaultSdk().pay(mContext, sdkParams);


	        } catch (Exception e) {
	            e.printStackTrace();
	            Log.d("pay" ,"charge failed - Exception: " + e.toString() + "\n");
	        }
	    }
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("UC支付", new OnClickListener() {
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
					dialog.dismiss();
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    private SDKEventReceiver receiver = new SDKEventReceiver() 
    {

        @Subscribe(event = SDKEventKey.ON_EXIT_SUCC)
        private void onExit(String desc) {
	    	    Message msg2 = new Message();
	            msg2.obj  = "游戏即将退出";
	            handler.sendMessage(msg2);  
	        	mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	    		mBaseInApp.ExitGame();
			            
        }

        @Subscribe(event = SDKEventKey.ON_EXIT_CANCELED)
        private void onExitCanceled(String desc) {
            
        	    Message msg2 = new Message();
                msg2.obj  = "继续游戏";
                handler.sendMessage(msg2);   
        } 
        
        
        @Subscribe(event = SDKEventKey.ON_INIT_SUCC)
        private void onInitSucc() {

        	    Message msg2 = new Message();
                msg2.obj  = "初始化成功";
                handler.sendMessage(msg2);    
            
        }

        @Subscribe(event = SDKEventKey.ON_INIT_FAILED)
        private void onInitFailed(String msg) {        	 
    	    Message msg2 = new Message();
            msg2.obj  = "初始化失败";
            handler.sendMessage(msg2);       
        }
        
        @Subscribe(event = SDKEventKey.ON_CREATE_ORDER_SUCC)
        private void onPaySucc(final Bundle data) {
 
            String response = data.getString("response");
            // 这里执行发货，如果发货成功需要设置以下值
            data.putString("result", Response.OPERATE_SUCCESS_MSG);
            Message msg = new Message();
            msg.obj  = "支付成功";
            handler.sendMessage(msg);     
            onPurchaseSuccess(response);
            // 如果发货失败需要设置以下值
            //data.putString("result", Response.OPERATE_FAIL_MSG);
            //Log.i("alisdk", "pay succ" + data);
        }

        @Subscribe(event = SDKEventKey.ON_PAY_USER_EXIT)
        private void onPayFail(String data) {
        	
        	Message msg = new Message();
            msg.obj  = "支付失败";
            handler.sendMessage(msg);     
            onPurchaseFailed(Channelname+"_"+data);
            //Log.i("alisdk", "pay exit");
        }
                
            
    };
    private Handler handler = new Handler()
    {
		  @Override
		  public void handleMessage(Message msg)
		  {
			  E2WApp.LogLocal("["+Channelname+"] handler()_");
			  Toast.makeText(E2WApp.mContext, msg.obj.toString(), Toast.LENGTH_SHORT).show();
		  }
    };
   
//end}
