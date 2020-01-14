package com.east2west.game.inApp;
import java.util.HashMap;
import java.util.UUID;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.LauncherActivity;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import com.mice.mtsdk_library.BaseFunctionListener;
import com.mice.mtsdk_library.BaseFunctionListener.ExitListener;
import com.mice.mtsdk_library.BaseFunctionListener.initListener;
import com.mice.mtsdk_library.MTSingleSDK;
import com.mice.mtsdk_library.entity.PayInfo;
import com.mice.mtsdk_library.utils.CodeConstant;
//endpublic class InAppMEITU extends InAppBase {
	
//comment	public String id="";
	public String key="";
	public String secret="";
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppMEITU";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppKey,appinterface);	
		id=strAppId;
		key=strAppKey;
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		  MTSingleSDK.getInstance().init(mContext, strAppId, strAppKey, 1, new initListener() {

				@Override
				public void initlistener(int result) {
					if (result==0) {
						onLoginSuccess("");
					}else {
						onLoginFailed("");
					}
				}
		  });
		  E2WApp.LogLocal("["+Channelname+"] strAppSecret->strAppId");
		  E2WApp.LogLocal("["+Channelname+"] strAppSecret->strAppKey");
	}
    public static String[] convertStrToArray(String str,String symbol){   
	  String[] strArray = null;   
	  strArray = str.split(symbol); //拆分字符为symbol 可以是 "," ,然后把结果交给数组strArray 
	  return strArray;
    }

	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		E2WApp.LogLocal("["+Channelname+"] CarriersPayLock="+QinConst.CarriersPayLock);
		E2WApp.LogLocal("["+Channelname+"] SDKPayLock="+QinConst.SDKPayLock);
		purchaseProduct();		
		
	}
	public void MeituPay()
	{
        PayInfo info = new PayInfo();
		info.setAmount(20);// 以角为单位
		info.setAppId(id);
		String orderNum = UUID.randomUUID().toString().replaceAll("-", "");
		info.setCpOrderId(orderNum);  //该参数为订单号，但请保持每次支付订单号唯一
		info.setExtrend("123");// 扩展字段 在不使用的时候可以随便传递 但是不可以为空
		info.setCpServerId("1");  //单机游戏填写固定值1
		MTSingleSDK.getInstance().pay(mContext, info, new BaseFunctionListener.PayListener() {
			@Override
			public void paylistener(int result) {
				if (CodeConstant.PAYSUCCESS == result)
				{
					onPurchaseSuccess(Channelname);
					Log.i("TAG", "支付成功");
				}
				if (CodeConstant.PAYFAILED == result)
				{
					onPurchaseFailed(Channelname);
					Log.i("TAG", "支付失败");
				}
				if (CodeConstant.PAYQUIT == result)
				{
					onPurchaseCanceled(Channelname);
					Log.i("TAG", "支付取消");
				}
			}
		});


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
		MTSingleSDK.getInstance().exit(mContext, new ExitListener() {			
			@Override
			public void Comfirm() {
				CodeConstant.SendMsg("点击接收礼包");	
			}
			@Override
			public void Cancel() {
				CodeConstant.SendMsg("点击退出游戏");
				
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
  				mBaseInApp.ExitGame();
			}
});

	}


	private void purchaseProduct()
	{
		E2WApp.LogLocal("style="+QinConst.CarriersPayLock+QinConst.SDKPayLock);
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
		if (mBaseInApp != null) {
			mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
		}
	}
	public void ChannelPay()
	{
		MeituPay();
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext,AlertDialog.THEME_HOLO_DARK);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("美图支付", new OnClickListener() {
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
	public void swtichuser() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("MZ_swtichuser");
	}
//end}
