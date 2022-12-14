package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;


//comment
import android.app.Activity;
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
//end


public class InAppDefault extends InAppBase {
	
	//comment
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
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
		GameCenterSDK.getInstance().onPause();
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

		GameCenterSDK.getInstance().onExit(mContext,
				new GameExitCallback() {

					@Override
					public void exitGame() {
						// CP ????????????????????????????????????????????????
						// AppUtil??????????????????????????????????????????~
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
		// cp????????????
		int amount = (int)mProductPrice ; // ????????????????????????
		E2WApp.LogLocal("["+Channelname+"][doPay] amount="+amount);
		PayInfo payInfo = new PayInfo(System.currentTimeMillis()
				+ new Random().nextInt(1000) + "", E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID, amount*100);
		payInfo.setProductDesc(mProductDescription);
		payInfo.setProductName(mProductDescription);
		// ?????????????????????????????????????????????????????????????????????????????????????????????~
		payInfo.setCallbackUrl("http://101.200.214.15/pay/oppo/"+QinConst.appid+"/main.php");

		GameCenterSDK.getInstance().doSinglePay(mContext, payInfo,
				new SinglePayCallback() {

					@Override
					public void onSuccess(String resultMsg) {
						// add OPPO ????????????????????????~
						Toast.makeText(mContext, "????????????",
								Toast.LENGTH_SHORT).show();
						onPurchaseSuccess(resultMsg);
					}

					@Override
					public void onFailure(String resultMsg, int resultCode) {
						// add OPPO ????????????????????????~
						if (PayResponse.CODE_CANCEL != resultCode) {
							Toast.makeText(mContext, "????????????",
									Toast.LENGTH_SHORT).show();
							onPurchaseFailed(resultMsg);
						} else {
							// ??????????????????
							Toast.makeText(mContext, "????????????",
									Toast.LENGTH_SHORT).show();
							onPurchaseCanceled(resultMsg);
						}
					}
					@Override
					public void onCallCarrierPay(PayInfo payInfo, boolean bySelectSMSPay) {
						// TODO Auto-generated method stub
						Toast.makeText(mContext, "???????????????",
								Toast.LENGTH_SHORT).show();
					}
				});
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("??????????????????");
			builder.setTitle("??????");
			builder.setPositiveButton("????????????", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					ChannelPay();
				}
			});
			builder.setNeutralButton("????????????", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					CarriersPay();
				}
			});
			builder.setNegativeButton("??????", new OnClickListener() {
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
	
	//end
}
