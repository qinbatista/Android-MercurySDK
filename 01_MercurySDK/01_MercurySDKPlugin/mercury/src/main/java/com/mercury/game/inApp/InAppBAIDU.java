package com.east2west.game.inApp;

//commentimport org.json.JSONObject;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.util.Log;
import com.duoku.platform.single.DKPlatformSettings;
import com.duoku.platform.single.DKPlatform;
import com.duoku.platform.single.DkErrorCode;
import com.duoku.platform.single.DkProtocolKeys;
import com.duoku.platform.single.callback.IDKSDKCallBack;
import com.duoku.platform.single.item.GamePropsInfo;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.util.SharedUtil;
//endpublic class InAppBAIDU extends InAppBase {
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppBAIDU";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		
		E2WApp.LogLocal("["+Channelname+"] 1strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] 1strAppSecret="+strAppSecret);
		new Handler(E2WApp.mContext.getMainLooper()).post(new Runnable() {
			@Override
			public void run() {
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		
		IDKSDKCallBack initcompletelistener = new IDKSDKCallBack(){
			@Override
			public void onResponse(String paramString) {
				Log.d("GameMainActivity", paramString);
				try {
					JSONObject jsonObject = new JSONObject(paramString);
					// 返回的操作状态码
					int mFunctionCode = jsonObject.getInt(DkProtocolKeys.FUNCTION_CODE);
					
					//初始化完成
					if(mFunctionCode == DkErrorCode.BDG_CROSSRECOMMEND_INIT_FINSIH){
						DKPlatform.getInstance().bdgameInit(mContext, new IDKSDKCallBack() {
							@Override
							public void onResponse(String paramString) {
								Log.d("GameMainActivity","bggameInit success");
							}
						});
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		};
		DKPlatform.getInstance().init(mContext, false, DKPlatformSettings.SdkMode.SDK_PAY,null,null,null,initcompletelistener);
		
			  }
					});
	
	}
	
	@Override
	public boolean isPurchase()
	{
		return false;
	}

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
		 GamePropsInfo  propsThird =  new GamePropsInfo(mProductId,mProductPrice+"" , mProductDescription, "qpfangshua");
		 propsThird.setThirdPay("qpfangshua");
		 DKPlatform.getInstance().invokePayCenterActivity(mContext,propsThird, null, null, null,null,null,RechargeCallback);
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("百度支付", new OnClickListener() {
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
	public void onPause()
	{	
		DKPlatform.getInstance().pauseBaiduMobileStatistic(mContext);
	}
	
	@Override
	public void onResume()
	{
		DKPlatform.getInstance().pauseBaiduMobileStatistic(mContext);
	}
	
	@Override
	public void onDestroy()
	{
	}

	@Override
	public void ExitGame()
	{
		DKPlatform.getInstance().bdgameExit((Activity) E2WApp.mContext, new IDKSDKCallBack() {
			@Override
			public void onResponse(String paramString) {
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
  				mBaseInApp.ExitGame();
			}
		});
	}
	IDKSDKCallBack RechargeCallback = new IDKSDKCallBack(){
		@Override
		public void onResponse(String paramString) {
			// TODO Auto-generated method stub
			E2WApp.LogLocal("["+Channelname+"] IDKSDKCallBack paramString="+paramString);
			try {
				JSONObject jsonObject = new JSONObject(paramString);
				// 支付状态码
				int mStatusCode = jsonObject.getInt(DkProtocolKeys.FUNCTION_STATUS_CODE);
				
				if(mStatusCode == DkErrorCode.BDG_RECHARGE_SUCCESS){
					// 返回支付成功的状态码，开发者可以在此处理相应的逻辑
					onPurchaseSuccess("");
					// 订单ID
					String mOrderId = null;
					// 订单状态
					String mOrderStatus = null;
					// 道具ID
					String mOrderProductId = null;
					// 道具实际支付的价格
					String mOrderPrice = null;
					// 支付通道
					String mOrderPayChannel = null;
					//道具原始价格，若微信、支付宝未配置打折该值为空，
					String mOrderPriceOriginal = null;
					
					if(jsonObject.has(DkProtocolKeys.BD_ORDER_ID)){						
						mOrderId = jsonObject.getString(DkProtocolKeys.BD_ORDER_ID);	
						SharedUtil.getInstance(mContext).saveString("payment_orderid", mOrderId);
					}
					if(jsonObject.has(DkProtocolKeys.BD_ORDER_STATUS)){
						mOrderStatus = jsonObject.getString(DkProtocolKeys.BD_ORDER_STATUS);
					}
					if(jsonObject.has(DkProtocolKeys.BD_ORDER_PRODUCT_ID)){			
						mOrderProductId = jsonObject.getString(DkProtocolKeys.BD_ORDER_PRODUCT_ID);
					}
					if(jsonObject.has(DkProtocolKeys.BD_ORDER_PAY_CHANNEL)){						
						mOrderPayChannel = jsonObject.getString(DkProtocolKeys.BD_ORDER_PAY_CHANNEL);
					}
					if(jsonObject.has(DkProtocolKeys.BD_ORDER_PRICE)){						
						mOrderPrice = jsonObject.getString(DkProtocolKeys.BD_ORDER_PRICE);
					}
					//int mNum = Integer.valueOf(mOrderPrice) * 10;
					if(jsonObject.has(DkProtocolKeys.BD_ORDER_PAY_ORIGINAL)){						
						mOrderPriceOriginal = jsonObject.getString(DkProtocolKeys.BD_ORDER_PAY_ORIGINAL);
					}
					int mNum = 0;
					if( "".equals(mOrderPriceOriginal) ||null==mOrderPriceOriginal){
						mNum = Integer.valueOf(mOrderPrice) * 10;
					}else{
						mNum = Integer.valueOf(mOrderPriceOriginal) * 10;
					}
					String propsType = "1";
					onPurchaseSuccess(Channelname);
				}
				else
				{
					onPurchaseFailed(Channelname);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	};
//end}
