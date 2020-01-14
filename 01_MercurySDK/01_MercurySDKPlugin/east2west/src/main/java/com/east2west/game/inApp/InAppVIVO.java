package com.east2west.game.inApp;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

//commentimport java.util.Map;
import java.util.UUID;

import org.json.JSONException;
import org.json.JSONObject;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.util.HTTPSTrustManager;
import com.east2west.game.util.JsonParser;
import com.east2west.game.util.VivoSignUtils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ImageView;
import android.widget.Toast;

import com.vivo.unionsdk.open.VivoExitCallback;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import com.vivo.unionsdk.open.VivoUnionSDK;

import com.android.volley.AuthFailureError;
import com.android.volley.Request.Method;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

//endpublic class InAppVIVO extends InAppBase {

//comment	private InAppBase mBaseInApp = null;
	private ProgressDialog mProgress = null;
	private long lastClickTime = 0;
	public static String appid="";
	public static String cpid="";
	public static String cpkey="";
	public Context maincontext=null;
    private String vivoOrder = "";
    private String vivoSignature = "";
	private VivoPayInfo mVivoPayInfo;
	private String Channelname="InAppVIVO";
	
	
	public final static String getFileProviderName(Context context){
	    return context.getPackageName()+".fileprovider";
	}
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);

		maincontext=appContext;
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		appid=strAppId;
		String[] strArray=null;
		strArray = convertStrToArray(strAppSecret,",");
		if(strArray[0]!=null&&strAppSecret.length()>=1)
		{
			cpid=strArray[0];
			E2WApp.LogLocal("["+Channelname+"] strAppSecret->cpid="+cpid);
		}
		if(strArray[1]!=null&&strAppSecret.length()>=2)
		{
			cpkey=strArray[1];
			E2WApp.LogLocal("["+Channelname+"] strAppSecret->cpkey="+cpkey);
		}
	}

	public void ApplicationInit(Application appcontext)
	{
		E2WApp.LogLocal("["+Channelname+"] ApplicationInit="+appcontext+":"+QinConst.APPID);
		VivoUnionSDK.initSdk(appcontext, QinConst.APPID, false);
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
		E2WApp.LogLocal("["+Channelname+"] VivoPay....");
		VivoPay();
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext,AlertDialog.THEME_HOLO_LIGHT);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("vivo支付", new OnClickListener() {
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
	public void VivoPay()
	{
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
        params.put("storeId", cpid);//商户ID
        params.put("appId", appid);                  //APPID
        E2WApp.LogLocal("["+Channelname+"]"+E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg);
        params.put("storeOrder", E2WApp.DeviceId+"_"+QinConst.SDKID+"_"+InAppBase.OrderID);//商户订单号
        params.put("version", "1.0");
        String str = VivoSignUtils.getVivoSign(params, cpkey);//signkey
        params.put("signature", str);
        params.put("signMethod", "MD5");

        com.android.volley.RequestQueue mQueue = Volley.newRequestQueue(E2WApp.mContext);  
        HTTPSTrustManager.allowAllSSL();
        StringRequest jsonObjectRequest = new StringRequest(Method.POST, "https://pay.vivo.com.cn/vivoPay/getVivoOrderNum",  
                mResponseListener, new Response.ErrorListener() {
            @Override  
            public void onErrorResponse(VolleyError error) {  
                Toast.makeText(mContext, "获取参数错误"+error, Toast.LENGTH_SHORT).show();
            }  
        }) {
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                return params;
            }
        };  
        mQueue.add(jsonObjectRequest);
        mQueue.start();

	}
	private void Pay_ALIPAY_WX_Dialog() 
	{
		 new Thread(new Runnable() {
	            @Override
	            public void run() {

	            }
	        }).start();
	}
	private void Pay_VIVO_Dialog() {
        new Thread(new Runnable() {
            @Override
            public void run() {
            	
            }
        }).start();
    }
    private Response.Listener<String> mResponseListener = new Response.Listener<String>() {
        @Override
        public void onResponse(String response) {
            JSONObject jsonObject = null;
            try {
                jsonObject = new JSONObject(response);
            } catch (JSONException e) {
            }
            if (JsonParser.getString(jsonObject, "respCode").equals("200")) {
                mVivoPayInfo = new VivoPayInfo(mProductDescription, mProductDescription,
                        JsonParser.getString(jsonObject, "orderAmount"),
                        JsonParser.getString(jsonObject, "vivoSignature"), appid,
                        JsonParser.getString(jsonObject, "vivoOrder"), null);
    
                    VivoUnionSDK.pay(mContext, mVivoPayInfo, new VivoPayCallback() {
                        //客户端返回的支付结果不可靠，请以服务器端最终的支付结果为准；
                        public void onVivoPayResult(String arg0, boolean arg1, String arg2) {
                            if (arg1) {
                            	onPurchaseSuccess(Channelname);
								onFunctionCallBack("com.ironhidegames.ironmarines.unlock_campaign");
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
    };
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
	private String generateSignature(Map<String, String> param_map) {
		String result = null;
        result = VivoSignUtils.getVivoSign(param_map, cpkey);
        E2WApp.LogLocal("["+Channelname+"] generateSignature->cpkey="+cpkey);
		return result;
	}
//end}

