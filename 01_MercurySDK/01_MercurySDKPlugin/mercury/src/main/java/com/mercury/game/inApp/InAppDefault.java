package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;


import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import static com.east2west.game.E2WApp.SavePidName;

public class InAppDefault extends InAppBase {
	

	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();		
	}
	
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);


		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("["+SavePidName+"]");
			builder.setTitle("↓ Your Purduction ID ↓");
			builder.setPositiveButton("SuccessCallBack", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] purchaseProduct() purchaseProduct Success");
					onPurchaseSuccess(SavePidName);
					Toast.makeText(mContext, "Purchase succeed [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNeutralButton("FailedCallBack", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] purchaseProduct() purchaseProduct Failed");
					onPurchaseFailed(SavePidName);
					Toast.makeText(mContext, "Purchase fail [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNegativeButton("CancelCallBack", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] purchaseProduct() purchaseProduct Cancel");
					onPurchaseCanceled(SavePidName);
					Toast.makeText(mContext, "Purchase cancel [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();
			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}
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

	public void ExitGame()
	{
		Log.e("IAP","[InAppDefault][ExitGame]");

		((Activity) E2WApp.mContext).finish();
		android.os.Process.killProcess(android.os.Process.myPid());

	}


	private void purchaseProduct()
	{
		E2WApp.LogLocal("["+Channelname+"] CarriersPayLock="+QinConst.CarriersPayLock);
		E2WApp.LogLocal("["+Channelname+"] SDKPayLock="+QinConst.SDKPayLock);
		
		if(QinConst.CarriersPayLock.equals("0")&&QinConst.SDKPayLock.equals("0"))
		{
			onPurchaseSuccess(SavePidName);
			Toast.makeText(mContext, "Purchase succeed [simulation]", Toast.LENGTH_SHORT).show();
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
	public void SharePicture(String imagePath, boolean istimeline)
	{
		Toast.makeText(mContext, "SharePicture Completed succeed [simulated]", Toast.LENGTH_SHORT).show();
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
					onPurchaseFailed(Channelname);
					dialog.dismiss();
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void show_push(String scenes)
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("["+scenes+"]");
			builder.setTitle("↓ Your Scenes ↓");
			builder.setPositiveButton("show_push Completed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_push Completed Success");
					onFunctionCallBack("AdSucceed");
					Toast.makeText(mContext, "show_push Completed succeed [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNeutralButton("show_push Failed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_push Failed Failed");
					onFunctionCallBack("AdFailed");
					Toast.makeText(mContext, "show_push Failed fail [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();
			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void show_out(String scenes)
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("["+scenes+"]");
			builder.setTitle("↓ Your Scenes ↓");
			builder.setPositiveButton("show_out Completed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_out Completed Success");
					onFunctionCallBack("AdSucceed");
					Toast.makeText(mContext, "show_out Completed succeed [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNeutralButton("show_out Failed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_out Failed Failed");
					onFunctionCallBack("AdFailed");
					Toast.makeText(mContext, "show_out Failed fail [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();
			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void show_video(String scenes)
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("["+scenes+"]");
			builder.setTitle("↓ Your Scenes ↓");
			builder.setPositiveButton("VideoCompleted", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] VideoCompleted Success");
					onOnVideoCompleted(SavePidName);
					Toast.makeText(mContext, "VideoCompleted succeed [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNeutralButton("VideoFailed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] VideoFailed Failed");
					onPurchaseFailed(SavePidName);
					Toast.makeText(mContext, "VideoFailed fail [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();
			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void show_insert(String scenes)
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("["+scenes+"]");
			builder.setTitle("↓ Your Scenes ↓");
			builder.setPositiveButton("show_insert Completed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_insert Completed Success");
					onFunctionCallBack("AdSucceed");
					Toast.makeText(mContext, "show_insert Completed succeed [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNeutralButton("show_insert Failed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_insert Failed");
					onFunctionCallBack("AdFailed");
					Toast.makeText(mContext, "show_insert Failed fail [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();
			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void show_banner(String scenes)
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("["+scenes+"]");
			builder.setTitle("↓ Your Scenes ↓");
			builder.setPositiveButton("show_banner Completed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_banner Completed Success");
					onFunctionCallBack("AdSucceed");
					Toast.makeText(mContext, "show_banner Completed succeed [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			builder.setNeutralButton("show_banner Failed", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					E2WApp.LogLocal("[E2WApp] show_banner Failed Failed");
					onFunctionCallBack("AdFailed");
					Toast.makeText(mContext, "show_banner Failed fail [simulated]", Toast.LENGTH_SHORT).show();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();
			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
