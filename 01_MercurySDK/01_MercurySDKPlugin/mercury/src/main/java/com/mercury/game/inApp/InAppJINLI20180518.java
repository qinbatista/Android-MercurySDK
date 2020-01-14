package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;


//commentimport com.gionee.game.offlinesdk.floatwindow.AppInfo;
import com.gionee.game.offlinesdk.floatwindow.GamePlatform;
import com.gionee.game.offlinesdk.floatwindow.QuitGameCallback;
import com.gionee.game.offlinesdk.floatwindow.pay.GamePlayByTradeData;
import com.gionee.game.offlinesdk.floatwindow.pay.MessagePayCallback;
import com.gionee.game.offlinesdk.floatwindow.pay.OrderInfo;
import com.gionee.game.offlinesdk.floatwindow.pay.PayGameCallback;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import java.util.UUID;
//endpublic class InAppJINLI20180518 extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppJINLI20180518";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		   if (Build.VERSION.SDK_INT >= 23){
	            GamePlatform.requestFloatWindowsPermission(mContext);
	        }
	        GamePlatform.startFloatWindowsService(mContext);
	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
		  
        AppInfo appInfo = new AppInfo();
        appInfo.setApiKey(QinConst.APPID);
        appInfo.setPrivateKey(QinConst.APPKEY);
        GamePlatform.init(appcontext, appInfo);
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
		GamePlatform.onActivityResult(mContext, requestCode, resultCode, data);
	}
	@Override
	public void onNewIntent(Intent intent) 
	{
		E2WApp.LogLocal("["+Channelname+"] onNewIntent(Intent intent) ");
	}
	


	@Override
	public void ExitGame()
	{
			GamePlatform.quitGame((Activity) E2WApp.mContext, new QuitGameCallback() {
	            @Override
	            public void onQuit() {
	                Toast.makeText((Activity) E2WApp.mContext, "结束游戏", Toast.LENGTH_SHORT).show();
	                
					mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	  				mBaseInApp.ExitGame();
	            }

	            @Override
	            public void onCancel() {
	                Toast.makeText((Activity) E2WApp.mContext, "取消退出", Toast.LENGTH_SHORT).show();
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
		OrderInfo orderInfo = createOrderInfo();
//        orderInfo.setMessagePayCallback(new MessagePayCallback() {
//            @Override
//            public void onCallback() {
//                Toast.makeText(mContext, "短信支付回调",
//                        Toast.LENGTH_SHORT).show();
//            }
//        });
        GamePlayByTradeData.getInstance().pay(mContext, orderInfo, new PayGameCallback() {

            @Override
            public void onSuccess() {
                // 测试用，支付成功情况，请游戏更具实际情况处理
                Toast.makeText(mContext, "支付成功", Toast.LENGTH_SHORT).show();
                onPurchaseSuccess(Channelname);
            }

            @Override
            public void onFail(String errCode, String errDescription) {
                // 测试用，支付失败情况，请游戏更具实际情况处理
                Toast.makeText(mContext, "支付失败：code：" + errCode + "， des：" + errDescription,
                        Toast.LENGTH_SHORT).show();
                onPurchaseFailed(Channelname);
            }
        });
	}
	private OrderInfo createOrderInfo() {
		E2WApp.LogLocal("["+Channelname+"] mProductDescription:"+mProductDescription);
		E2WApp.LogLocal("["+Channelname+"] mProductPrice"+mProductPrice);

        String orderNum = E2WApp.DeviceId+"_"+QinConst.SDKID+"_"+InAppBase.OrderID;
        String subject = mProductDescription;
        String totalFee = mProductPrice+"";
        String dealPrice =mProductPrice+"";
        int mPayMethod = GamePlayByTradeData.PAY_METHOD_UNSPECIFIED;
        
        // 设置订单信息
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setCpOrderNum(orderNum);
        orderInfo.setSubject(subject);
        orderInfo.setProductName(subject);
        orderInfo.setTotalFee(totalFee);
        orderInfo.setPayMethod(mPayMethod);
        orderInfo.setDealPrice(dealPrice);
        return orderInfo;
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
