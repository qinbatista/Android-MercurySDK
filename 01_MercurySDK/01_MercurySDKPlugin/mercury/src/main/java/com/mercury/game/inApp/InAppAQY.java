package com.east2west.game.inApp;


//commentimport com.east2west.game.inApp.InAppBase;
import com.iqiyi.sdk.listener.LoginListener;
import com.iqiyi.sdk.listener.PayListener;
import com.iqiyi.sdk.platform.GamePlatform;
import com.iqiyi.sdk.platform.GamePlatformInitListener;
import com.iqiyi.sdk.platform.GameSDKResultCode;
import com.iqiyi.sdk.platform.GameUser;
import com.iqiyi.sdk.platform.QIYIInfoCallBack;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
//endpublic class InAppAQY extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppAQY";
	private static String gameId = "6567";
	public boolean isLogin=false;
	private static GamePlatform platform;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		initData();
		ShowTime();

	}
	private int count=0;
	  public void ShowTime()
	  {
	    new Thread(new Runnable()
	    {
	      public void run()
	      {
	    	  if(isLogin==true)
	    	  {
	    		  Log.e("IAP", "isLogin="+true);
	    		  return;
	    	  }
	    	  while(true)
	    	  {
		        try
		        {
		        	count++;
		            Thread.sleep(1000L);
		          	Log.e("IAP", "count="+count);
		          	if(count==18000)
		          	{
		          		handler.sendEmptyMessage(0);
		          	}
		          	if(count>=18005)
		          	{
		          		mContext.finish();
			    		android.os.Process.killProcess(android.os.Process.myPid());
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
    private Handler handler = new Handler()
    {
		  @Override
		  public void handleMessage(Message msg)
		  {
			  Toast.makeText(mContext, "登录超时，请重新登陆", Toast.LENGTH_SHORT).show();
		  }
    };
	public void initData()
	{
		//Log.e("IAP", "init Start");
		platform = GamePlatform.getInstance();
		//platform.initSliderBar(mContext);
		platform.initPlatform(mContext, gameId, new GamePlatformInitListener() {
			@Override
			public void onSuccess() {
				// TODO Auto-generated method stub
				Log.e("IAP", "init Success");
			    platform.addLoginListener(new LoginListener() {
					
					@Override
					public void loginResult(int arg0, GameUser arg1) {
						// TODO Auto-generated method stub
						if (GameSDKResultCode.SUCCESSLOGIN == arg0) {
							Log.e("IAP", "isLogin="+isLogin);
							platform.initSliderBar(mContext);
							getUserType();
							getUserVip();
							isLogin=true;
						} else if (GameSDKResultCode.SUCCESSLOGOUT == arg0) {
							Log.e("IAP", "Logout");
						} else if (GameSDKResultCode.EXITGAME == arg0) {
							Log.e("IAP", "Exit");
							mBaseInApp.ExitGame();
						}
					}
				});
				
                platform.addPaymentListener(new PayListener() {
					
					@Override
					public void paymentResult(int arg0) {
						// TODO Auto-generated method stub
						if (GameSDKResultCode.SUCCESSPAYMENT == arg0) {
							Log.e("IAP", "Payment paymentResult (success): " + arg0);
							onPurchaseSuccess(Channelname);
						} else if (GameSDKResultCode.ERRORPAYMENT == arg0) {
							Log.e("IAP", "Payment Failed");
							onPurchaseFailed(Channelname);
						} else if (GameSDKResultCode.CANCEL_BEFORE_ORDER_CREATED == arg0) {
							Log.e("IAP", "Payment Canel");
							onPurchaseFailed(Channelname);
						}
					}
				});
                platform.iqiyiUserLogin(mContext);
				platform.enterGame(E2WApp.mContext);
			}
			
			@Override
			public void onFail(String msg) {
				// TODO Auto-generated method stub
				Log.e("IAP", "init fail : " + msg);
			}
		}); 
	}
	private void getUserVip(){
		platform.getQIYIInfoAsync(mContext, new QIYIInfoCallBack() {
			
			@Override
			public void onResult(JSONObject arg0) {
				// TODO Auto-generated method stub
				Log.i("IAP", "is_game_vip = " + arg0);
			}
		});
	}
	private void getUserType(){
	try {
		JSONObject json = platform.getQIYIInfo();
		if (json != null) {
			String type = json.getString("type"); // 0：非会员， 1：会员
			int level = json.getInt("level"); // 会员等级
			String s = "province:" + json.getString("province") + ",city:"
					+ json.getString("city") + ",gender:"
					+ json.getString("gender") + ",icon:"
					+ json.getString("icon");
			Log.e("IAP", "VIP : " + type + ", levele : " + level);
		}
	} catch (JSONException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
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
	
//end}
