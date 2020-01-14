package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;


//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.callback.SinglePayCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.platform.opensdk.pay.PayResponse;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.util.Random;
import java.util.UUID;
//endpublic class InAppOPPO extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppOPPO";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appContext);
		String appSecret = strAppId;
		GameCenterSDK.init(appSecret, appContext);
	
		
	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;

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

		GameCenterSDK.getInstance().onExit((Activity) E2WApp.mContext,
				new GameExitCallback() {

					@Override
					public void exitGame() {
						// CP 实现游戏退出操作，也可以直接调用
						// AppUtil工具类里面的实现直接强杀进程~
						mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
						mBaseInApp.ExitGame();
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
		Log.e(QinConst.TAG,"mProductId="+mProductId);
		doPay();
	}
	private void doPay() {
		// cp支付参数
		int amount = (int)mProductPrice ; // 支付金额，单位分
		E2WApp.LogLocal("["+Channelname+"][doPay] amount="+amount);
		PayInfo payInfo = new PayInfo(System.currentTimeMillis()
				+ new Random().nextInt(1000) + "", E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg, amount*100);
		payInfo.setProductDesc(mProductDescription);
		payInfo.setProductName(mProductDescription);
		// 支付结果服务器回调地址，不通过服务端回调发货的游戏可以不用填写~	
		payInfo.setCallbackUrl("http://pay.east2west.cn/cdkey/index.php/Callback/oppo");
		GameCenterSDK.getInstance().doSinglePay(mContext, payInfo,
				new SinglePayCallback() {

					@Override
					public void onSuccess(String resultMsg) {
						// add OPPO 支付成功处理逻辑~
						Toast.makeText(mContext, "支付成功",
								Toast.LENGTH_SHORT).show();
						onPurchaseSuccess(resultMsg);
		//				onFunctionCallBack("com.ironhidegames.ironmarines.unlock_campaign");
					}

					@Override
					public void onFailure(String resultMsg, int resultCode) {
						// add OPPO 支付失败处理逻辑~
						if (PayResponse.CODE_CANCEL != resultCode) {
							Toast.makeText(mContext, "支付失败",
									Toast.LENGTH_SHORT).show();
							onPurchaseFailed(resultMsg);
						} else {
							// 取消支付处理
							Toast.makeText(mContext, "支付取消",
									Toast.LENGTH_SHORT).show();
							onPurchaseCanceled(resultMsg);
						}
					}
					@Override
					public void onCallCarrierPay(PayInfo payInfo, boolean bySelectSMSPay) {
						// TODO Auto-generated method stub
						Toast.makeText(mContext, "运营商支付",
								Toast.LENGTH_SHORT).show();
					}
				});
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
