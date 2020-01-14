package com.east2west.game.inApp;
//commentimport com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.HTTPSTrustManager;
import com.east2west.game.util.JsonParser;
import com.east2west.game.util.VivoSignUtils;
import com.vivo.authentication.AuthenticationCenter;
import com.vivo.authentication.VerifyCallback;
import com.vivo.unionsdk.open.VivoAccountCallback;
import com.vivo.unionsdk.open.VivoExitCallback;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import com.vivo.unionsdk.open.VivoUnionSDK;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.http.RequestQueue;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request.Method;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
//endimport org.json.JSONException;
import org.json.JSONObject;


public class InAppVIVOPAY20180813 extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppVIVOPAY20180813";
	private String openId;
	private VivoPayInfo mVivoPayInfo;
	public Context maincontext=null;
	public static String appid="";
	public static String appkey="";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		maincontext=appContext;
		appid= strAppId;
		appkey = strAppSecret;		
		E2WApp.LogLocal("["+Channelname+"] strAppId->appid="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret->appkey="+strAppSecret);
		VivoUnionSDK.login(mContext);	
		VivoUnionSDK.registerAccountCallback(mContext, new VivoAccountCallback(){

			@Override
			public void onVivoAccountLogin(String arg0, String arg1, String arg2) {				
				//登陆成功 openid参数为用户唯一标识
				Toast.makeText(mContext, "登录成功", Toast.LENGTH_LONG).show();
				String pkgName = mContext.getApplicationInfo().loadLabel(mContext.getPackageManager()).toString();
				doVerifyAction(mCallback, mAppContext, openId, strAppSecret, strAppId,pkgName);
				E2WApp.LogLocal("["+Channelname+"] strAppId->mCallback="+mCallback);
				E2WApp.LogLocal("["+Channelname+"] strAppId->openId="+openId);
				E2WApp.LogLocal("["+Channelname+"] strAppId->strAppSecret="+strAppSecret);
				E2WApp.LogLocal("["+Channelname+"] strAppId->strAppId="+strAppId);
				E2WApp.LogLocal("["+Channelname+"] strAppId->pkgName="+pkgName);
			}

			@Override
			public void onVivoAccountLoginCancel() {				
				//登陆退出
				
			}

			@Override
			public void onVivoAccountLogout(int arg0) {			
				//登陆取消
				
			}
			
		});
	
	}
	
	

	public void doVerifyAction(VerifyCallback callback, Context context, String openId, String key, String appId, String pkgName) {
	
		//鉴权入口
		AuthenticationCenter.getInstance().doVerifyAction(callback, mAppContext, openId, key, appId, pkgName);
		
	}
		VerifyCallback mCallback = new VerifyCallback() {
			
			@Override
			public void verifyOk() {
				// TODO Auto-generated method stub
				 Toast.makeText(mContext, "授权成功", Toast.LENGTH_LONG).show();				 
				 
			}
			
			@Override
			public void verifyFailed(int arg0) {
				// TODO Auto-generated method stub
				 Toast.makeText(mContext, "授权失败", Toast.LENGTH_LONG).show();
				 	mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	  				mBaseInApp.ExitGame();
			}
		};
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
		VivoUnionSDK.initSdk(appcontext, QinConst.APPID, false);
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

		E2WApp.LogLocal("["+Channelname+"] ExitGame");
		VivoUnionSDK.exit((Activity) E2WApp.mContext, new VivoExitCallback(){

			@Override
			public void onExitCancel() {
				// TODO Auto-generated method stub
				
			}
			@Override
			public void onExitConfirm() {
				// TODO Auto-generated method stub
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
  				mBaseInApp.ExitGame();
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
		pay();
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
	
	
	
	   private void pay() {
	        //订单推送接口请在服务器端访问
	        final HashMap<String, String> params = new HashMap<String, String>();
	        params.put("notifyUrl", "http://pay.east2west.cn/cdkey/index.php/Callback/vivo");
	        DecimalFormat decimalFormat = new DecimalFormat(".00");//构造方法的字符格式这里如果小数不足2位,会以0补足.
	        String pricestring = decimalFormat.format(mProductPrice);//format 返回的是字符串
	        params.put("orderAmount", pricestring);  //注意：精确到小数点后两位；        
	        params.put("orderDesc", mProductDescription);
	        params.put("orderTitle", mProductDescription);	        
	        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
	        params.put("orderTime", format.format(new Date()));	                
	        params.put("appId", appid);    
	        params.put("storeOrder", E2WApp.DeviceId+"_"+QinConst.SDKID+"_"+InAppBase.OrderID);//商户订单号
	        params.put("version", "1.0");
	        params.put("extInfo", "extInfo_test");
	        String str = VivoSignUtils.getVivoSign(params, appkey); //20131030114035565895为app对应的signkey
	        params.put("signature", str);
	        params.put("signMethod", "MD5");
	        
	        
	        E2WApp.LogLocal("["+Channelname+"] pricestring="+pricestring);
	        E2WApp.LogLocal("["+Channelname+"] orderDesc="+mProductDescription);	        
	        E2WApp.LogLocal("["+Channelname+"] orderTitle="+mProductDescription);
	        E2WApp.LogLocal("["+Channelname+"] appId="+appid);        
	        E2WApp.LogLocal("["+Channelname+"] str="+str);
	        E2WApp.LogLocal("["+Channelname+"] signature="+str);
	        E2WApp.LogLocal("["+Channelname+"] signMethod="+"md5");
	        E2WApp.LogLocal("["+Channelname+"] format="+format);

	        com.android.volley.RequestQueue mQueue = Volley.newRequestQueue(mContext);  
	        HTTPSTrustManager.allowAllSSL();
	        StringRequest jsonObjectRequest = new StringRequest(Method.POST, "https://pay.vivo.com.cn/vivoPay/getVivoOrderNum",  
	                new Response.Listener<String>() {  
	        	
	            @Override
	            public void onResponse(String response) {
	            	  E2WApp.LogLocal("["+Channelname+"] response="+response);
	                JSONObject jsonObject = null;
	                try {
	                    jsonObject = new JSONObject(response);
	                } catch (JSONException e) {
	                    e.printStackTrace();
	                }
	                if (JsonParser.getString(jsonObject, "respCode").equals("200")) {
	                	mVivoPayInfo = new VivoPayInfo(mProductDescription, mProductDescription,
	                            JsonParser.getString(jsonObject, "orderAmount"),
	                            JsonParser.getString(jsonObject, "vivoSignature"), appid,
	                            JsonParser.getString(jsonObject, "vivoOrder"), null);
	                	
	                	  E2WApp.LogLocal("["+Channelname+"] orderAmount="+"orderAmount");
	                	  E2WApp.LogLocal("["+Channelname+"] vivoSignature="+"vivoSignature");
	                	  E2WApp.LogLocal("["+Channelname+"] vivoOrder="+"vivoOrder");
	                	  
	                	  VivoUnionSDK.pay(mContext, mVivoPayInfo, new VivoPayCallback() {
	                          //客户端返回的支付结果不可靠，请以服务器端最终的支付结果为准；
	                          public void onVivoPayResult(String arg0, boolean arg1, String arg2) {
	                              if (arg1) {
	                              		onPurchaseSuccess(Channelname);
	                                  Toast.makeText(mContext, "支付成功", Toast.LENGTH_SHORT).show();
	                              } else {
	                              	onPurchaseFailed(Channelname);
	                                  Toast.makeText(mContext, "支付失败", Toast.LENGTH_SHORT).show();
	                              }
	                          };
	                   });
	        
	              } else {
	                  Toast.makeText(mContext, "获取订单错误", Toast.LENGTH_LONG).show();
	              }

	            }  
	        }, new Response.ErrorListener() {  
	            @Override  
	            public void onErrorResponse(VolleyError error) {  
	                Toast.makeText(mContext, "获取参数错误", Toast.LENGTH_SHORT).show();
	                
	            }  
	        }) {
	            @Override
	            protected Map<String, String> getParams() throws AuthFailureError {
	            	E2WApp.LogLocal("["+Channelname+"] params="+params);
	                return params;
	            }
	        };  
	        mQueue.add(jsonObjectRequest);
	        mQueue.start();
	    } 
	
//end}
