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

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppType;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
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


		E2WApp.LogLocal("["+Channelname+"] mContext="+mContext);
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
	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
		MiAppInfo appInfom = new MiAppInfo();
		appInfom.setAppId(QinConst.APPID);
		appInfom.setAppKey(QinConst.APPKEY);
		appInfom.setAppType(MiAppType.offline); //
		MiCommplatform.Init(appcontext, appInfom );
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

		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		mBaseInApp.ExitGame();
		
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
}
