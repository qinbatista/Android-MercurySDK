package com.east2west.game.inApp;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.xiaomi.gamecenter.sdk.LoginFlag;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnXsollaPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiXsollaBuyInfo;
import com.xiaomi.gamecenter.sdk.entry.MiXsollaResponseInfo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
//end


public class InAppDefault extends InAppBase {
	
	//comment
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
	private String mUid;
	private String mSession;
	private int mAccountType;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret, APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		MiAppInfo appInfo = new MiAppInfo();
		appInfo.setAppId("2882303761517836756");
		appInfo.setAppKey("5551783694756");
		MiCommplatform.Init(mContext, appInfo);
		MiCommplatform.getInstance().miOverseasLogin( mContext,new OnLoginProcessListener() {

			@Override
			public void finishLoginProcess(int arg0, MiAccountInfo arg1, int accountType) {

				if (MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS == arg0) {//成功
					mUid = arg1.getUid();
					mSession = arg1.getSessionId();
					mAccountType = accountType;
					//TODO 可⽤ uid 和 sessionId 到我们后台进⾏正确性校验，接⼝⻅后端⽂档
					Log.e("game", "->登陆成功");
				} else {//失败
					//TODO 登录失败处理
					Log.e("game", "->登陆失败");
				}
			}
		} , LoginFlag.DEFAULT);

	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
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

		((Activity) E2WApp.mContext).finish();
		android.os.Process.killProcess(android.os.Process.myPid());
		
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
		String code = "001";
		String name = "abc";
		String price = "1.0";

		MiXsollaBuyInfo miXsollaBuyInfo = new MiXsollaBuyInfo();
		miXsollaBuyInfo.setProductCode(code);
		miXsollaBuyInfo.setDisplayName(name);
		miXsollaBuyInfo.setQuantity("1");
		miXsollaBuyInfo.setFeeValue(price);
		Log.e("game", "Code="+code+"--Name="+name+"--Price="+price);
		DateFormat format = new java.text.SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US);
		String requestId = format.format(new Date());
		Random r = new Random();
		requestId = requestId + r.nextInt(100);
		Log.e("game", "CpOrderId=="+requestId);
		miXsollaBuyInfo.setCpOrderId(requestId);
		miXsollaBuyInfo.setCpUserInfo("西安西品网络科技有限公司");

		MiCommplatform.getInstance().miOverseasXsollaPay(mContext, miXsollaBuyInfo,
				new OnXsollaPayProcessListener() {

					@Override
					public void finishXsollaPayProcess(MiXsollaResponseInfo arg0) {
						// TODO 自动生成的方法存根

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
	
	//end
}
