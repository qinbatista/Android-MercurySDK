package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnExitListner;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppType;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import java.util.UUID;
//end
	
//comment
	private String Channelname="InAppXM20181024";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey1="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret1="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();


		E2WApp.LogLocal("["+Channelname+"] mContext="+mContext);
		DelayActivity();
	}
	void DelayActivity()
	{
		new Thread(new Runnable()
		{
			public void run()
			{
				int count=0;
				while(true)
				{
					try
					{
						count++;
						Thread.sleep(1000L);
						Log.e("IAP", "count="+count);
						if(count==5)
						{
							MiCommplatform.getInstance().miLogin( (Activity) mContext, new OnLoginProcessListener(){
							@Override
							public void finishLoginProcess( int code , MiAccountInfo arg1 ) {
								switch( code ) {
								case MiErrorCode.MI_XIAOMI_GAMECENTER_SUCCESS:

								String uid = arg1.getUid();
									//Log.d(Const.TAG,"MI_XIAOMI_GAMECENTER_SUCCESS:"+uid);

									onLoginSuccess(Channelname+"MI_XIAOMI_GAMECENTER_SUCCESS:"+uid);
									break;
								case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_LOGIN_FAIL:
									//Log.d(Const.TAG,"MI_XIAOMI_GAMECENTER_ERROR_LOGIN_FAIL");
									onLoginFailed(Channelname+"MI_XIAOMI_GAMECENTER_ERROR_LOGIN_FAIL");
								break;
								case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_CANCEL :
									//Log.d(Const.TAG,"MI_XIAOMI_GAMECENTER_ERROR_CANCEL");
									onLoginFailed(Channelname+"MI_XIAOMI_GAMECENTER_ERROR_CANCEL");
								break;
								case MiErrorCode.MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED:
									//Log.d(Const.TAG,"MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED");
									onLoginFailed(Channelname+"MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED");
								break;
								default :
								break ;
								}
							}
		});
							break;
						}

					}
					catch (InterruptedException e)
					{
						e.printStackTrace();
					}
				}
			}
		}).start();
	}
	void DelayApplication(final Application appcontext)
	{
		new Thread(new Runnable()
		{
			public void run()
			{
				int count=0;

					while(true)
					{
						try
						{
							count++;
							if(count==3)
							{
								Log.e("IAP", "count="+count);
								Log.e("IAP", "QinConst.APPID="+QinConst.APPID);
								Log.e("IAP", "QinConst.APPKEY="+QinConst.APPKEY);
								MiAppInfo appInfom = new MiAppInfo();
								appInfom.setAppId(QinConst.APPID);
								appInfom.setAppKey(QinConst.APPKEY);
								appInfom.setAppType(MiAppType.offline); //
								MiCommplatform.Init(appcontext, appInfom );
								break;
							}
							Thread.sleep(1000L);

						}
						catch (InterruptedException e)
						{
							e.printStackTrace();
						}
					}
				}
		}).start();
	}
	public void ApplicationInit(Application appcontext)
	{
		if (QinConst.appid.equals("giveitup2")) {
			mAppContext = appcontext;
			E2WApp.LogLocal("[" + Channelname + "]->init:InAppBase.ApplicationInit=" + appcontext);
			DelayApplication(appcontext);
		}
		else
		{
			try {
				Thread.sleep(3000L);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			MiAppInfo appInfom = new MiAppInfo();
			appInfom.setAppId(QinConst.APPID);
			appInfom.setAppKey(QinConst.APPKEY);
			appInfom.setAppType(MiAppType.offline);
			Log.e("IAP", "NoDelay");
			Log.e("IAP", "QinConst.APPID=" + QinConst.APPID);
			Log.e("IAP", "QinConst.APPKEY=" + QinConst.APPKEY);
			Log.e("IAP", "appcontext=" + appcontext);
			MiCommplatform.Init(appcontext, appInfom);
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

		MiCommplatform.getInstance().miAppExit( (Activity) E2WApp.mContext, new OnExitListner()
		{
			@Override
			public void onExit(int code )
			{
				if ( code == MiErrorCode.MI_XIAOMI_EXIT )
				{
					mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
					mBaseInApp.ExitGame();
				}
			}
		} );
		
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
		MiBuyInfo miBuyInfo = new MiBuyInfo();
		miBuyInfo.setCpOrderId(InAppBase.OrderID);
		miBuyInfo.setProductCode(QinConst.SDKID);
		miBuyInfo.setCpUserInfo(E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID); 
		miBuyInfo.setCount(1);
		try {
			MiCommplatform.getInstance().miUniPay(mContext, miBuyInfo, new OnPayProcessListener() {
				@Override
				public void finishPayProcess(int code) {
					switch (code) {
					case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS:
						onPurchaseSuccess(Channelname);
						break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_CANCEL:
						onPurchaseCanceled(Channelname);
						break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_FAILURE:
						onPurchaseFailed(Channelname);
						break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_REPEAT:
						onPurchaseFailed(Channelname);
						break;
					case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
						onPurchaseFailed(Channelname);
						break;
					default:
						break;
					}
				}
			});
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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