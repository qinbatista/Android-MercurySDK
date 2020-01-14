package com.east2west.game.inApp;

//commentimport com.east2west.game.SdkApplication;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;

import android.content.Context;
import android.app.Activity;
import android.util.Log;
import android.widget.Toast;
import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;
import cn.cmgame.billing.api.LoginResult;
//endpublic class InAppMobileMarket extends InAppBase {
//comment	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);

		if(SdkApplication.iscarriersneed.equals("open"))
		{
			// 初始化SDK，并完成自动登陆
			GameInterface.initializeApp(mContext, "123",
					new GameInterface.ILoginCallback() {
						@Override
						public void onResult(int result, String userId, Object o) {
							if (result == LoginResult.SUCCESS_EXPLICIT
									|| result == LoginResult.SUCCESS_IMPLICIT) {
								
							} else {
								
							}
						}
					});
			E2WApp.LogLocal("[InAppMobileMarket] GameInterface.initializeApp");
		}
		else
		{
			E2WApp.LogLocal("[InAppMobileMarket] Skip,GameInterface.initializeApp");
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
	public void onLoadLib()
	{		
		System.loadLibrary("megjb");
	}
	@Override
	public void onDestroy()
	{
	}
	@Override
	public void ExitGame()
	{
		E2WApp.LogLocal("[InAppMobileMarket] Mobile Exit->"+E2WApp.mContext);
		if(SdkApplication.iscarriersneed.equals("open"))
		{
			
		    GameInterface.exit(E2WApp.mContext, new GameInterface.GameExitCallback() {
		        @Override
		        public void onConfirmExit() {	
		        	E2WApp.LogLocal("[InAppMobileMarket] Callback Exit");
		        	onFunctionCallBack("ExitGame");
		        	((Activity) E2WApp.mContext).finish();
		    		android.os.Process.killProcess(android.os.Process.myPid());
		        }
		        @Override
		        public void onCancelExit() {
		          Toast.makeText(E2WApp.mContext, "取消退出", Toast.LENGTH_SHORT).show();
	
		        }
		      });	
		}
		else
		{
			E2WApp.LogLocal("[InAppMobileMarket] Callback  Exit");
			onFunctionCallBack("ExitGame");
			E2WApp.LogLocal("[InAppMobileMarket] Kill Process");
			((Activity) E2WApp.mContext).finish();
    		android.os.Process.killProcess(android.os.Process.myPid());
		}
	}

	private void purchaseProduct()
	{
		E2WApp.LogLocal("[InAppMobileMarket] Mobile Billing...");
		try {
			GameInterface.doBilling(mContext, 1, QinConst.CarriersID,
					"0123456789012345", payCallback);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	final GameInterface.IPayCallback payCallback = new GameInterface.IPayCallback() {
		@Override
		public void onResult(int resultCode, String billingIndex, Object obj) {
			String result = "";
			switch (resultCode) {
			case BillingResult.SUCCESS:
				if ((BillingResult.EXTRA_SENDSMS_TIMEOUT + "").equals(obj
						.toString())) {
					result = "短信计费超时";
				} else {
					result = "购买道具：[" + billingIndex + "] 成功！";
					onPurchaseSuccess("billingIndex="+billingIndex);
				}
				break;
			case BillingResult.FAILED:
				result = "购买道具：[" + billingIndex + "] 失败！";
				onPurchaseFailed("billingIndex:" + billingIndex);
				break;
			default:
				result = "购买道具：[" + billingIndex + "] 取消！";
				onPurchaseCanceled("billingIndex:"+billingIndex);
				break;
			}
			Toast.makeText(mContext, result, Toast.LENGTH_SHORT)
					.show();
		}
	};
//end}
