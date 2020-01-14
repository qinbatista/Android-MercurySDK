package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;
import com.xiaomi.gamecenter.sdk.newlicense.License;
import com.xiaomi.gamecenter.sdk.newlicense.LicenseCallBack;

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
import java.util.UUID;
//end


public class InAppDefault extends InAppBase {
	
	//comment
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
	private License mLicense;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		
		mLicense = new License(context, true, new LicenseCallBack(){
	        @Override
	        public void onLicensed() {
	           //已经购买该游戏，根据需要处理相应逻辑
	        	
	        }
	        
	        /**
	        *
	        * @param code
	        *        1000：LicenseCallBackCode.ERROR_CODE_UNLICENSED 未购买
	        *        1001：LicenseCallBackCode.ERROR_CODE_NO_ACCOUNT 未登录
	        *        4000：LicenseCallBackCode.ERROR_CODE_CREATE_AIDL 与游戏中心服务连接失败
	        *        4001：LicenseCallBackCode.ERROR_CODE_NET_WORK 网路错误
	        *        4002：LicenseCallBackCode.ERROR_CODE_INVALID_GAME_CENTER 未正确安装游戏中心
	        *        4003：LicenseCallBackCode.ERROR_CODE_CHECKING 检查中的未知错误
	        *        5000：LicenseCallBackCode.ERROR_CODE_DOUBLE_OPEN 应用双开错误
	        *        5001：LicenseCallBackCode.ERROR_CODE_IMEI_MAX_LIMIT 已超过该账号支持的最大设备数
	        */
	        @Override
	        public void onFinishApp(int code) {
	            //检测到没有登录，没有购买,用户主动放弃购买或者发生异常，此处 **必须关闭应用**，同时根据需要处理相应逻辑
	        	mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	    		mBaseInApp.ExitGame();//关闭游戏
	        }
	     });
	    mLicense.checkLicense();
			
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
		 super.onDestroy();
	        mLicense.destroy();
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
