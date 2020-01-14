package com.east2west.game.inApp;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.CPCallBackMgr.MatrixCallBack;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;
import com.east2west.game.util.QihooUserInfo;
import com.east2west.game.util.Constants;
import com.east2west.game.util.QihooPayInfo;
import org.json.JSONException;
import org.json.JSONObject;
//endpublic class InAppQIHU360 extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppQIHU360";
	protected QihooUserInfo mQihooUserInfo;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		Matrix.setActivity(mContext, mSDKCallback,false); 
		E2WApp.LogLocal("[InAppQIHU360] strAppKey="+strAppId);
		E2WApp.LogLocal("[InAppQIHU360] strAppSecret="+strAppSecret);
	}
	@Override
	public void ApplicationInit(Application app)
	{
		Matrix.initInApplication(app);
		E2WApp.LogLocal("[InAppQIHU360]->ApplicationInit="+app);
	}
	protected MatrixCallBack mSDKCallback = new MatrixCallBack() 
	{ @Override  
		public void execute(Context context, int functionCode, String functionParams) {  if (functionCode == ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT) 
		{              // 调用 sdk 的切换帐号功能，并更新自己的 access token 相关信息。              // 详见 demo 源码
			doSdkSwitchAccount(true);   
			}  
		} 
	};
	protected QihooPayInfo getQihooPayInfo(int functionCode) {
        QihooPayInfo payInfo = null;
        if(functionCode==ProtocolConfigs.FUNC_CODE_PAY){
            	 payInfo = getQihooPay(getPayAmount());
                 return payInfo;
        }
        payInfo = getQihooPay(getPayAmount());
        return payInfo;
    }
    private QihooPayInfo getQihooPay(String moneyAmount) {

        // 鍒涘缓QihooPay
        QihooPayInfo qihooPay = new QihooPayInfo();
        qihooPay.setQihooUserId(((mQihooUserInfo != null) ? mQihooUserInfo.getId() : null));
        qihooPay.setMoneyAmount(moneyAmount);
        qihooPay.setExchangeRate(Constants.DEMO_PAY_EXCHANGE_RATE);

        qihooPay.setProductName(mProductId);
        qihooPay.setProductId(Constants.DEMO_PAY_PRODUCT_ID);

        qihooPay.setNotifyUri(Constants.DEMO_APP_SERVER_NOTIFY_URI);

        qihooPay.setAppName("");
        qihooPay.setAppUserName("");
        qihooPay.setAppUserId(Constants.DEMO_PAY_APP_USER_ID);

        qihooPay.setAppExt1("");
        qihooPay.setAppExt2("");
        qihooPay.setAppOrderId("");

        return qihooPay;
    }
    protected String getPayAmount(){
    	//EditText et_input_amount = (EditText) findViewById(R.id.et_input_amount);
    	String amount = "10";//et_input_amount.getEditableText().toString();
    	return amount;
    }
	protected void doSdkPay(boolean isLandScape,int functionCode) {        
		// 支付基础参数         
		QihooPayInfo payInfo = getQihooPayInfo(functionCode); 
		Intent intent = getPayIntent(isLandScape, payInfo,functionCode,false);   
		// 可选参数，登录界面的背景图片路径，必须是本地图片路径         
		intent.putExtra(ProtocolKeys.UI_BACKGROUND_PICTRUE, "");        
		Matrix.invokeActivity(mContext, intent, mPayCallback);     
	}

	protected Intent getPayIntent(boolean isLandScape, QihooPayInfo pay,int functionCode, boolean isPayWithOutUserId) { 
		  
	        Bundle bundle = new Bundle(); 
	 
	        // 界面相关参数，360SDK 界面是否以横屏显示。        
	        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape); 
	 
	        // 设置 QihooPay 中的参数。         
	        if(false)
	        {   
	        	 bundle.putString(ProtocolKeys.QIHOO_USER_ID, pay.getQihooUserId());         
	        }   
	        bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, ""); 
	        bundle.putString(ProtocolKeys.AMOUNT, (mProductPrice*100)+""); 
	        bundle.putString(ProtocolKeys.PRODUCT_NAME, mProductDescription); 
	        bundle.putString(ProtocolKeys.PRODUCT_ID, mProductId); 
	        bundle.putString(ProtocolKeys.NOTIFY_URI, pay.getNotifyUri()); 
	        bundle.putString(ProtocolKeys.APP_NAME, pay.getAppName()); 
	        bundle.putString(ProtocolKeys.APP_USER_NAME, pay.getAppUserName()); 
	        bundle.putString(ProtocolKeys.APP_USER_ID, pay.getAppUserId()); 
	        bundle.putString(ProtocolKeys.APP_ORDER_ID, pay.getAppOrderId()); 
	        bundle.putString(ProtocolKeys.APP_EXT_1, pay.getAppExt1()); 
	        bundle.putString(ProtocolKeys.APP_EXT_2, pay.getAppExt2()); 
	        bundle.putInt(ProtocolKeys.FUNCTION_CODE,functionCode); 
	        Intent intent = new Intent(); 
	        intent.putExtras(bundle); 
	        return intent; 
	}
	protected IDispatcherCallback mPayCallback = new IDispatcherCallback() { 
	  @Override         
	  public void onFinished(String data) {             
		  Log.d("IAP", "mPayCallback, data is " + data);             
		  if(TextUtils.isEmpty(data)) 
		  {                 
			  return;             
			  } 
		  JSONObject jsonRes;             
		  try 
		  {                 
			  jsonRes = new JSONObject(data); 
			  int errorCode = jsonRes.optInt("error_code"); 
			  Log.d("IAP", "errorCode="+errorCode); 
				  if(errorCode==0)
				  {
					  onPurchaseSuccess(errorCode+"");
				  }
				  else
				  {
					  onPurchaseFailed(errorCode+"");
				  }
		  } 
		  catch (JSONException e)
		  {                 
			  e.printStackTrace();            
			  } 
			  
		  }
  	  };
	@Override
	public boolean isPurchase()
	{
		return false;
	}
	private Intent getSwitchAccountIntent(boolean isLandScape) {

        Intent intent = new Intent(mContext, ContainerActivity.class);
        // 可选参数，是否在自动登录的过程中显示切换账号按钮
        intent.putExtra(ProtocolKeys.IS_SHOW_AUTOLOGIN_SWITCH, 0);
        
        // 必须参数，360SDK界面是否以横屏显示。
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);

        // 必需参数，使用360SDK的切换账号模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT);

        return intent;
    }
	protected void doSdkSwitchAccount(boolean isLandScape) 
	{
		
		Intent intent = getSwitchAccountIntent(isLandScape);
        IDispatcherCallback callback = mAccountSwitchCallback;
        Matrix.invokeActivity(mContext, intent, callback);
	}
	 private IDispatcherCallback mAccountSwitchCallback = new IDispatcherCallback() {

	        @Override
	        public void onFinished(String data) {
	            // press back      
	        }
	    };
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
	}
	
	public void purchaseProduct()
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
		E2WApp.LogLocal("["+Channelname+"] 360 sdk Paying...");
		doSdkPay(true,ProtocolConfigs.FUNC_CODE_PAY);
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("360支付", new OnClickListener() {
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
	@Override
	public void onDestroy()
	{
		super.onDestroy();
		Matrix.destroy(mContext);
	}

    @Override
    public void onStart() {
   		super.onStart();
   		Matrix.onStart(mContext);
   	}
    @Override
    public void onRestart() {
   		super.onRestart();
   		Matrix.onRestart(mContext);
   	}
    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
   		super.onActivityResult(requestCode, resultCode, data);
   		Matrix.onActivityResult(mContext,requestCode, resultCode, data);
   	}
    @Override
    public void onPause() {
   		super.onPause();
   		Matrix.onPause(mContext);
   	}
    @Override
    public void onStop() {
   		super.onStop();
   		Matrix.onStop(mContext);
   	}
    @Override
    public void onNewIntent(Intent intent) {
    	super.onNewIntent(intent);
    	Matrix.onNewIntent(mContext,intent);
    } 

	@Override
	public void ExitGame()
	{
		doSdkQuit(true);
	}

	
	protected void doSdkQuit(boolean isLandScape) { 
   	 
        Bundle bundle = new Bundle(); 
 
        // 界面相关参数，360SDK 界面是否以横屏显示。         
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape); 
 
        // 可选参数，登录界面的背景图片路径，必须是本地图片路径         
        bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, ""); 
 
        // 必需参数，使用 360SDK 的退出模块。      
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT); 
 
        Intent intent = new Intent((Activity) E2WApp.mContext, ContainerActivity.class);         
        intent.putExtras(bundle); 
 
        Matrix.invokeActivity((Activity) E2WApp.mContext, intent, mQuitCallback);     
    }

	private IDispatcherCallback mQuitCallback = new IDispatcherCallback()
	{
		@Override
		public void onFinished(String data) {
			JSONObject json;
			try {
				json = new JSONObject(data);
				int which = json.optInt("which", -1);
				switch (which) {
				case 0:
					return;
				default:
					
					mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	  				mBaseInApp.ExitGame();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	};
	

//end}
