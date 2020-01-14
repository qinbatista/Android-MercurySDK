package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;
import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

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
import android.widget.Toast;
import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;
import cn.cmgame.billing.api.LoginResult;
import cn.egame.terminal.paysdk.EgameExitListener;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.util.HashMap;
import java.util.Map;
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
		
		if(SdkApplication.mSimOperatorId ==QinConst.ChinaMobile)
		{
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
		}
		else if(SdkApplication.mSimOperatorId ==QinConst.ChinaTelecom)
		{
			EgamePay.init(mContext);
		}
		else if(SdkApplication.mSimOperatorId ==QinConst.ChinaUnicom)
		{
			
		}
		else
		{
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
		}
			

	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
		if(SdkApplication.mSimOperatorId ==QinConst.ChinaMobile)
		{
			E2WApp.LogLocal("["+Channelname+"]->ApplicationInit megjb");
			System.loadLibrary("megjb");
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
	}
	@Override
	public void onNewIntent(Intent intent) 
	{
		E2WApp.LogLocal("["+Channelname+"] onNewIntent(Intent intent) ");
	}
	


	@Override
	public void ExitGame()
	{
		if(SdkApplication.mSimOperatorId ==QinConst.ChinaMobile)
		{
			
			 GameInterface.exit(E2WApp.mContext, new GameInterface.GameExitCallback() {
			        @Override
			        public void onConfirmExit() {	
			        	E2WApp.LogLocal("[InAppMobileMarket] Callback Exit");
			        	onFunctionCallBack("ExitGame");
			        	mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
						mBaseInApp.ExitGame();
			        }
			        @Override
			        public void onCancelExit() {
			          Toast.makeText(E2WApp.mContext, "取消退出", Toast.LENGTH_SHORT).show();
		
			        }
			      });	
		}
		else if(SdkApplication.mSimOperatorId ==QinConst.ChinaTelecom)
		{
			EgamePay.exit((Activity) E2WApp.mContext,new EgameExitListener(){
				public void exit() {
					onFunctionCallBack("ExitGame");
		        	mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
					mBaseInApp.ExitGame();
				}
				public void cancel() {
					 Toast.makeText(E2WApp.mContext, "取消退出", Toast.LENGTH_SHORT).show();
				}
			});
		}
		else if(SdkApplication.mSimOperatorId ==QinConst.ChinaUnicom)
		{
			E2WApp.LogLocal("["+Channelname+"] E2WApp.mContext="+E2WApp.mContext);
			AlertDialog.Builder builder = new Builder(E2WApp.mContext);
			builder.setMessage("确认退出吗?");
			builder.setTitle("提示");
			builder.setPositiveButton("确认", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					
					mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	  				mBaseInApp.ExitGame();
				}
			});
			builder.setNegativeButton("取消", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					dialog.dismiss();
				}
			});
			builder.create().show();
		}
		else
		{
			 GameInterface.exit(E2WApp.mContext, new GameInterface.GameExitCallback() {
			        @Override
			        public void onConfirmExit() {	
			        	E2WApp.LogLocal("[InAppMobileMarket] Callback Exit");
			        	onFunctionCallBack("ExitGame");
			        	mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
						mBaseInApp.ExitGame();
			        }
			        @Override
			        public void onCancelExit() {
			          Toast.makeText(E2WApp.mContext, "取消退出", Toast.LENGTH_SHORT).show();
		
			        }
			      });	
		}
	}


	private void purchaseProduct()
	{
		E2WApp.LogLocal("["+Channelname+"] CarriersPayLock="+QinConst.CarriersPayLock);
		E2WApp.LogLocal("["+Channelname+"] SDKPayLock="+QinConst.SDKPayLock);
		
		if(QinConst.CarriersPayLock.equals("0")&&QinConst.SDKPayLock.equals("0"))
		{
			ChannelPay();
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
		mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
	}
	public void ChannelPay()
	{
		Log.e(QinConst.TAG,"QinConst.CarriersID="+QinConst.CarriersID);
		if(SdkApplication.mSimOperatorId ==QinConst.ChinaMobile)
		{
			GameInterface.doBilling(mContext, 1, QinConst.CarriersID,
					"0123456789012345", payCallback);
		}
		else if(SdkApplication.mSimOperatorId ==QinConst.ChinaTelecom)
		{
			mContext.runOnUiThread(new Runnable() {
			      @Override
			      public void run() {
				
				HashMap<String, String> hashMap=new HashMap<String, String>();
				hashMap.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, QinConst.CarriersID);
				hashMap.put(EgamePay.PAY_PARAMS_KEY_TOOLS_NAME, mProductDescription);
				
				
				EgamePay.pay(mContext, hashMap, new EgamePayListener() {
					
					@Override
					public void paySuccess(Map<String, String> arg0) {
						onPurchaseSuccess(Channelname);
						E2WApp.LogLocal("BUY_SUCCESS,save_message="+arg0.get(EgamePay.PAY_PARAMS_KEY_TOOLS_NAME));
					}
					
					@Override
					public void payFailed(Map<String, String> arg0, int arg1) {
						onPurchaseFailed("支付失败" + arg1);
						E2WApp.LogLocal("payFailed - " + arg1);
					}
					
					@Override
					public void payCancel(Map<String, String> arg0) {
						onPurchaseCanceled(Channelname);
						E2WApp.LogLocal("payFailed - " + arg0);
					}
				});
			      }
			    });
		}
		else if(SdkApplication.mSimOperatorId ==QinConst.ChinaUnicom)
		{
			Utils.getInstances().pay(mContext, QinConst.CarriersID, new Paylistener());
		}
		else
		{
			
		}
		
	}
	private class Paylistener implements UnipayPayResultListener
	{
		@Override
		public void PayResult(String arg0, int arg1, int arg2, String err)
		{
			switch (arg1) 
			{
				case 1://success	
				onPurchaseSuccess("");
				break;
				 
				case 2://fail
				onPurchaseFailed("");
				break;
				 
				case 3://cancel
				onPurchaseCanceled("");
				break;	
				default:
				break;		
			}
		}
	}
	GameInterface.IPayCallback payCallback = new GameInterface.IPayCallback() {
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
