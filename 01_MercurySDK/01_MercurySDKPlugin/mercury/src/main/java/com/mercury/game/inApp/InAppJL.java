package com.east2west.game.inApp;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.gionee.game.offlinesdk.AppInfo;
import com.gionee.game.offlinesdk.GamePlatform;
import com.gionee.game.offlinesdk.InitPluginCallback;
import com.gionee.game.offlinesdk.OrderInfo;
import com.gionee.game.offlinesdk.PayCallback;
import com.gionee.game.offlinesdk.QuitGameCallback;
//endpublic class InAppJL extends InAppBase {
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppJL";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		AppInfo appInfo = new AppInfo();
		appInfo.setApiKey(strAppId);        // apiKey由开发者后台申请得到
		appInfo.setPrivateKey(strAppSecret);  //privateKey由开发者后台申请得到
		appInfo.setPayMode(AppInfo.PayMode.NO_ACCOUNT_BY_TRADE_DATA);
		GamePlatform.init((Application) mContext.getApplicationContext(), appInfo);
		
		InitPluginCallback initPluginCallback = new InitPluginCallback() {
		    @Override
		    public void onEvent(int event) {
		        if (InitPluginCallback. EVENT_INIT_PLUGIN_FINISH == event) {
		            // 插件初始化完成，请游戏根据实际情况处理
		        }
		    }
		};
		//GamePlatform.getInstance().initPlugin((Activity) mContext.getApplicationContext(),initPluginCallback);

		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();

		
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

		GamePlatform.getInstance().quitGame((Activity) E2WApp.mContext, new QuitGameCallback() {
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
		OrderInfo orderInfo = createOrderInfo();
        GamePlatform.getInstance().pay((Activity)mContext, orderInfo, new PayCallback() {

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
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("金立支付", new OnClickListener() {
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

	   private OrderInfo createOrderInfo() 
	   {
		
		   OrderInfo orderInfo = new OrderInfo();
	        orderInfo.setCpOrderNum("GiveItUp"+System.currentTimeMillis());
	        orderInfo.setSubject(mProductDescription);
	        orderInfo.setProductName(mProductPrice+"");
	        orderInfo.setTotalFee(mProductPrice+"");
	        orderInfo.setPayMethod(GamePlatform.PAY_METHOD_UNSPECIFIED);
	        orderInfo.setDealPrice(mProductPrice+"");
	        return orderInfo;
	    }
//end}
