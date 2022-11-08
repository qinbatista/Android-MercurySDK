package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;

import com.east2west.east2westsdk.BaseWrapper;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import com.east2west.east2westsdk.BaseWrapper;
import com.east2west.east2westsdk.BaseWrapperAd;
import com.east2west.east2westsdk.Const;
import com.east2west.east2westsdk.WrapperAdInstance;
import com.east2west.east2westsdk.WrapperApplicationInstance;
import com.east2west.east2westsdk.WrapperInstance;
import com.east2west.east2westsdk.CallbackListener;
import com.east2west.east2westsdk.Const.GameItem;
import com.east2west.east2westsdk.Const.PackageGameItem;

import java.util.ArrayList;
import java.util.UUID;
//endpublic class InAppE2WWK extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppE2WWK";
	private static BaseWrapper mBaseWrapper;
	private  CallbackListener callback = new CallbackListener(){
		@Override
		public void onExchangeCancelCallBack() {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onExchangeFailedCallBack(String arg0, String arg1) {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onExchangeSuccessCallBack(String arg0, String arg1) {
			// TODO Auto-generated method stub		
			onFunctionCallBack(arg0);
		}

		@Override
		public void onGameItemPackage(ArrayList<PackageGameItem> arg0) {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onGameItemState(ArrayList<GameItem> arg0) {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onIsShowAds(boolean arg0) {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onLoginCancelCallBack() {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onLoginFailedCallBack() {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onLoginInvalidCallBack() {
			// TODO Auto-generated method stub			
		}

		@Override
		public void onLoginSuccessCallBack(Object arg0) {
			// TODO Auto-generated method stub			
			
		}

		@Override
		public void onPurchaseCancelCallBack(String arg0) {
			// TODO Auto-generated method stub
			onPurchaseCanceled(arg0);
		}

		@Override
		public void onPurchaseFailedCallBack(String arg0) {
			// TODO Auto-generated method stub
			onPurchaseFailed(arg0);
		}

		@Override
		public void onPurchaseSuccessCallBack(String arg0) {
			// TODO Auto-generated method stub
			onPurchaseSuccess(arg0+"");
		}
	};
	public BaseWrapper getBaseWrapper(Activity activity) 
	{
		if (mBaseWrapper == null) 
		{
			mBaseWrapper = WrapperInstance.getWrapperInstance(activity,callback);
		}
		return mBaseWrapper;
	}
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		getBaseWrapper(mContext).setScreentOrient(2);
	}
	@Override
	public void ApplicationInit(Application app)
	{		
		E2WApp.LogLocal("["+Channelname+"]->ApplicationInit="+app);
		WrapperApplicationInstance.getWrapperInstance().Initialise(app);
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
		super.onStop();
		getBaseWrapper(mContext).onPause();
	}
	@Override
	public void onResume()
	{
		super.onStop();
		getBaseWrapper(mContext).onResume();
	}
	@Override
    public void onStop() {
   		super.onStop();
		getBaseWrapper(mContext).onStop();
   	}
	@Override
	public void onDestroy()
	{
		getBaseWrapper(mContext).onDestroy();
	}
	@Override
    public void onNewIntent(Intent intent) {
    	super.onNewIntent(intent);
    	// Matrix.onNewIntent(mContext,intent);
		getBaseWrapper(mContext).onNewIntent(intent);
    } 
	@Override
	public void ExitGame()
	{
		getBaseWrapper(mContext).exitGame(mContext);	
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
		getBaseWrapper(mContext).purchase(E2WApp.SavePidName, callback);
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
