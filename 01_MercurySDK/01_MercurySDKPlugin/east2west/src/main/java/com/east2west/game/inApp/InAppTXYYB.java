package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import java.util.UUID;
//endpublic class InAppTXYYB extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppKP";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		
	}
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub
		
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

		AlertDialog.Builder builder = new Builder(mContext);
		builder.setMessage("确认退出吗?");
		builder.setTitle("提示");
		builder.setPositiveButton("确认", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
  				mBaseInApp.ExitGame();
			}
		});
		builder.setNegativeButton("取消", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				dialog.dismiss();
			}
		});
		builder.create().show();
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
					dialog.dismiss();
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
//end}
