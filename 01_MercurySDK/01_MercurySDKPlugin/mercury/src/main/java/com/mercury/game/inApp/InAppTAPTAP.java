package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.MD5;
import com.east2west.game.util.PayResult;
import com.east2west.game.util.SignUtils;

import android.annotation.SuppressLint;
//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import android.util.Xml;
import com.taptap.iab.util.TapIabHelper;
import com.alipay.sdk.app.PayTask;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;

import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.xmlpull.v1.XmlPullParser;
//endpublic class InAppTAPTAP extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppXM";
	private TapIabHelper mTabIabHelper;
	private final String PUBLIC_KEY = null;
	public  StringBuffer sb;
	public  Map<String,String> resultunifiedorder;
	public  PayReq req;
	private  IWXAPI msgApi;
	public final int ALI_SDK_PAY_FLAG = 1;
	public static String east2westid;
	private boolean isOnly=true; 
	
	static String WX_APP_ID = "wx651cced760792802"; 
	static String WX_MCH_ID = "1489860852";	
	static String WX_API_KEY = "53236073337180470952250400959808"; 	
	
	static String ALI_PARTNER = "2088511798626863";
	static String ALI_SELLER = "2088511798626863";	
	static String ALI_RSA_PRIVATE = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKTrA5p/o++3KydmC66AY3V0fj1evRZEbEAEwETl1ISBzmK1kEQLnVtnwq2fFbUPWsJM49WktIVCqJyAQBZ4oQCS1w+bAZxSdz4cISr98OI5xwOXJT9uDhOQOOp2qyq11RNSrEfZppT19X29aZ86aPW92EFqitngHAk8f7cGXwDHAgMBAAECgYBhpEuD4+KaASbpsr9j19wLJKfBiiAF2QkGdkmoATNsKLabNshtoTrPbYWT6kad5rNjqsaSLWw8IhVWY5COPWmEy95Bwt/4Ted1wCu+dspibOe0zdeA8BVEMbA9GjXkNVxKb9n1oacSUtyEkSglRE9tNsY3LnFPwFkm/AMIqyGSUQJBANbhdiHybiW9dk+0B1xHzMW9QoEDUcPtZI5rmMPPHzNtkUbnH9dnB+VE7ompSroXi8E1xxQ7TYQNB9cazVjY4MUCQQDEef1GHUqcdtSPjAnD754HOsodbW0X4kt+6oBu3xBbYgHGSBh7CE2LQRp0BTgrC8yen2dYTMoJRBgY6iqmXtwbAkBnezKRzJdA84nrfk5hIW6695b0XG3fBg78C1MJUVC8SpLA64NJD6QcxGJ/xxhmn/o8tLJHyvtckY3qCE1F8UPlAkEAkshUKEp/0C6SlH9ZWFEubVZFYwC6LMq5/iIxOyNYs/yfOMPpzhig3fUQTzcLBFW3U5Xg/j23/n4pxotCu7JImwJBALPNI6/lr824upEK4p/2he0LqDWIQIOMmqHgMbnwkONAHrjaMWxUA9/b0GPy+9mmUhQcvVhIYja3kfzkRAekrQY=";
	static String ALI_RSA_PUBLIC = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB";

	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();

		 mTabIabHelper = TapIabHelper.getInstance(context);
	        mTabIabHelper.setCheckOnce(true); // ???????????????????????????????????????????????????????????? TapTap ??????????????????

	        // Set null if you do not want to check license.
	        mTabIabHelper.setupLicenseListener(new TapIabHelper.TapLicenseCallback() {
	            @Override
	            public boolean onLicenseCallback(int i) {
	                switch (i) {
	                    case TapIabHelper.LICENSE_OK:
	                        new android.os.Handler(Looper.getMainLooper())
	                                .post(new Runnable() {
	                                    @Override
	                                    public void run() {
	                                        //Toast.makeText(mContext, "????????????", Toast.LENGTH_SHORT).show();
	                                    	E2WApp.LogLocal("["+Channelname+"]->????????????");
	                                    	onFunctionCallBack("com.ironhidegames.ironmarines.unlock_campaign");
	                                    }
	                                });
	                        break;
	                    case TapIabHelper.LICENSE_NO:
	                        // ??????????????? TapTap ???????????????????????? true
	                        new android.os.Handler(Looper.getMainLooper())
	                                .post(new Runnable() {
	                                    @Override
	                                    public void run() {
	                                    	E2WApp.LogLocal("["+Channelname+"]->????????????");
	                                    	if(isOnly)
	                                    	{
	                                    		E2WApp.LogLocal("["+Channelname+"]->queryLicense");
	                                    		mTabIabHelper.queryLicense();
	                                    		isOnly=false;
	                                    		ExitMyGame();
	                                    	}
	                                    }
	                                });
	                        break;
	                    case TapIabHelper.LICENSE_NOT_INSTALL_TAPTAP:
	                        // ??????????????? TapTap ???????????????????????? true
	                        // ?????? TapTap
	                        mTabIabHelper.downloadLatestTapTap();
	                        // ?????? TapTap
	                        mTabIabHelper.openTapTap((Activity)mContext);
	                        
	                        ExitMyGame();
	                        break;
	                }
	                return false;
	            }
	        });

	        mTabIabHelper.setupPurchaseListener(purchaseCallback);
	        mTabIabHelper.register(PUBLIC_KEY);
	        E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
			E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
			WX_APP_ID = strAppId;
			AnalysisID(strAppSecret);
			
	        req = new PayReq();
			sb=new StringBuffer();
			msgApi = WXAPIFactory.createWXAPI(mContext,WX_APP_ID);	
			
	}
	public void AnalysisID(String IDString)
    {
    	try
    	{
	    	String[] strArray=null;    	 
	    	strArray = convertStrToArray(IDString,",");
	    	WX_MCH_ID=strArray[0].toString();
	    	WX_API_KEY=strArray[1].toString();
	    	ALI_PARTNER=strArray[2].toString();
	    	ALI_SELLER=strArray[4].toString();
	    	ALI_RSA_PRIVATE=strArray[5].toString();
	    	ALI_RSA_PUBLIC=strArray[6].toString();	
    	}
    	catch(Exception E)
    	{
    		E2WApp.LogLocal("[AnalysisID]Error="+E);
    	}
    }
	public static String[] convertStrToArray(String str,String symbol){   
        String[] strArray = null;   
        strArray = str.split(symbol); //???????????????symbol ????????? "," ,???????????????????????????strArray 
        return strArray;
    }
	public static int countApp=0;
	private Handler handler = new Handler()
	{
		  @Override
		  public void handleMessage(Message msg)
		  {		  
			String showcounttime="0";
			if(countApp==1)		  
        	{
			  showcounttime="7";
			  Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==2)		  
        	{
			  //showcounttime="6";
			  //Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==3)		  
        	{
			  showcounttime="5";
			  Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==4)		  
        	{
			  //showcounttime="4";
			  //Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==5)		  
        	{
			  showcounttime="3";
			  Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==6)		  
        	{
			  //showcounttime="1";
			  //Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==7)		  
        	{
			  showcounttime="1";
			  Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==8)		  
        	{
			  //showcounttime="0";
			  //Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==9)		  
        	{
			  showcounttime="0";
			  Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S",1000).show();
        	}
			if(countApp==10)		  
        	{
			  //showcounttime="1";
			  //Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", 1000).show();
        	}
			if(countApp==11)		  
        	{
			  //showcounttime="1";
			  //Toast.makeText(mContext, "????????????"+QinConst.APPChineseName+"????????????:"+showcounttime+"S", Toast.LENGTH_SHORT).show();
			  mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
          	  mBaseInApp.ExitGame();
          	  mContext.finish();
          	  android.os.Process.killProcess(android.os.Process.myPid());
        	}
		  }
    };
	public void ExitMyGame()
	{
	    new Thread(new Runnable()
	    {
	      public void run()
	      {	    	 
	    	  while(true)
	    	  {
		        try
		        {
		            countApp++;
		          	Log.e("IAP", "countApp="+countApp);
		          	handler.sendEmptyMessage(0);
		          	Thread.sleep(1500L);
//		          	if(countApp>=10)
//		          	{
//		          		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
//	                	mBaseInApp.ExitGame();
//		          		break;
//		          	}
		        }
		        catch (InterruptedException e)
		        {
		          e.printStackTrace();
		        }
	    	  }
	      }
	    }).start();
	}
	TapIabHelper.OnInventoryCallback purchaseCallback = new TapIabHelper.OnInventoryCallback() {
        @Override
        public boolean onInventoryCallback(int code) {
            switch (code) {
                case TapIabHelper.BILLING_RESULT_OK:
                    if (mTabIabHelper.getInventory().hasPurchase("1")) {
                        //mText.setText("????????????");
                    } else {
                        //mText.setText("?????????");
                    }
                    break;
                case TapIabHelper.BILLING_RESULT_ERR:
                    break;
                case TapIabHelper.BILLING_RESULT_NOT_INSTALL_TAPTAP:
                    break;
            }
            return false;
        }
    };
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
		 super.onDestroy();
		 E2WApp.LogLocal("onDestroy");
         TapIabHelper.getInstance(mContext).unregister();
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
		EW2Pay();

	}
	public void EW2Pay()
	{
		east2westid=mProductId;
		final String price= String.valueOf((int)mProductPrice);
		E2WApp.LogLocal("price="+price);
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("??????????????????");
			builder.setTitle("??????");
			builder.setPositiveButton("????????????", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					if(isNetworkAvailable(mContext))
					{
						GetPrepayIdTask getPrepayId = new GetPrepayIdTask();
						getPrepayId.execute();
					}
					else {
						Toast.makeText(mContext, "??????????????????????????????????????????", 5000).show();
						onPurchaseFailed(Channelname);
					}	
				}
			});
			builder.setNeutralButton("???????????????", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					Alipay(mProductDescription,mProductDescription,price);
				}
			});
			builder.setNegativeButton("??????", new OnClickListener() {
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
	public void Alipay()
	{
		east2westid=mProductId;
		final String price= String.valueOf((int)mProductPrice);
		E2WApp.LogLocal("[Alipay]->price="+price);
		Alipay(mProductDescription,mProductDescription,price);
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("??????????????????");
			builder.setTitle("??????");
			builder.setPositiveButton("????????????", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					ChannelPay();
				}
			});
			builder.setNeutralButton("????????????", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					CarriersPay();
				}
			});
			builder.setNegativeButton("??????", new OnClickListener() {
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
	//?????????????????????
	//?????????????????????
		/**
		 * create the order info. ??????????????????
		 * 
		 */
		private  String getOrderInfo(String subject, String body, String price) {

			// ?????????????????????ID
			String orderInfo = "partner=" + "\"" + ALI_PARTNER + "\"";

			// ???????????????????????????
			orderInfo += "&seller_id=" + "\"" + ALI_SELLER + "\"";

			// ???????????????????????????
			orderInfo += "&out_trade_no=" + "\"" + getOutTradeNo() + "\"";

			// ????????????
			orderInfo += "&subject=" + "\"" + subject + "\"";

			// ????????????
			orderInfo += "&body=" + "\"" + body + "\"";

			// ????????????
			orderInfo += "&total_fee=" + "\"" + price + "\"";

			// ?????????????????????????????????
			orderInfo += "&notify_url=" + "\"" + "http://pay.east2west.cn/cdkey/index.php/Callback/alipayCPS";

			// ????????????????????? ?????????
			orderInfo += "&service=\"mobile.securitypay.pay\"";

			// ??????????????? ?????????
			orderInfo += "&payment_type=\"1\"";

			// ??????????????? ?????????
			orderInfo += "&_input_charset=\"utf-8\"";
			
			// ??????????????? ?????????
			orderInfo += "&passback_params=\""+E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg+"\"";

			// ????????????????????????????????????
			// ??????30????????????????????????????????????????????????????????????
			// ???????????????1m???15d???
			// m-?????????h-?????????d-??????1c-??????????????????????????????????????????0???????????????
			// ???????????????????????????????????????1.5h???????????????90m???
			orderInfo += "&it_b_pay=\"30m\"";

			// extern_token?????????????????????????????????alipay_open_id,?????????????????????????????????????????????????????????
			// orderInfo += "&extern_token=" + "\"" + extern_token + "\"";

			// ???????????????????????????????????????????????????????????????????????????????????????
			orderInfo += "&return_url=\"m.alipay.com\"";

			return orderInfo;
		}

		/**
		 * get the out_trade_no for an order. ???????????????????????????????????????????????????????????????????????????????????????
		 * 
		 */
		private  String getOutTradeNo() {
			SimpleDateFormat format = new SimpleDateFormat("MMddHHmmss", Locale.getDefault());
			Date date = new Date();
			String key = format.format(date);

			Random r = new Random();
			key = key + r.nextInt();
			key = key.substring(0, 15);
			//key=InAppBase.OrderID;
			return key;
		}

		/**
		 * sign the order info. ???????????????????????????
		 * 
		 * @param content
		 *            ?????????????????????
		 */
		private  String sign(String content) {
			return SignUtils.sign(content, ALI_RSA_PRIVATE);
		}

		/**
		 * get the sign type we use. ??????????????????
		 * 
		 */
		private  String getSignType() {
			return "sign_type=\"RSA\"";
		}
		
		public  void Alipay(String subject, String body, String price) {
			String orderInfo = getOrderInfo(subject, body, price);

			/**
			 * ????????????????????????????????????????????????????????????????????????????????????????????????
			 */
			String sign = sign(orderInfo);
			try {
				/**
				 * ?????????sign ???URL??????
				 */
				sign = URLEncoder.encode(sign, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			/**
			 * ???????????????????????????????????????????????????
			 */
			final String payInfo = orderInfo + "&sign=\"" + sign + "\"&" + getSignType();

			Runnable payRunnable = new Runnable() {

				@Override
				public void run() {
					// ??????PayTask ??????
					PayTask alipay = new PayTask(mContext);
					// ???????????????????????????????????????
					String result = alipay.pay(payInfo,true);

					Message msg = new Message();
					msg.what = ALI_SDK_PAY_FLAG;
					msg.obj = result;
					mHandlerAli.sendMessage(msg);
				}
			};

			// ??????????????????
			Thread payThread = new Thread(payRunnable);
			payThread.start();
		}
		
		@SuppressLint("HandlerLeak")
		private  Handler mHandlerAli = new Handler() {
			@SuppressWarnings("unused")
			public void handleMessage(Message msg) {
				switch (msg.what) {
				case ALI_SDK_PAY_FLAG: {
					PayResult payResult = new PayResult((String) msg.obj);
					/**
					 * ?????????????????????????????????????????????????????????????????????????????????https://doc.open.alipay.com/doc2/
					 * detail.htm?spm=0.0.0.0.xdvAU6&treeId=59&articleId=103665&
					 * docType=1) ??????????????????????????????
					 */
					String resultInfo = payResult.getResult();// ?????????????????????????????????

					String resultStatus = payResult.getResultStatus();
					// ??????resultStatus ??????9000???????????????????????????????????????????????????????????????????????????
					if (TextUtils.equals(resultStatus, "9000")) 
					{
						//????????? ??????????????????
						{
							onPurchaseSuccess(Channelname);
						}
						Toast.makeText(mContext, "????????????", Toast.LENGTH_SHORT).show();				
					} 
					else 
					{
						// ??????resultStatus ??????"9000"???????????????????????????
						// "8000"????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
						if (TextUtils.equals(resultStatus, "8000")) {
							Toast.makeText(mContext, "?????????????????????", Toast.LENGTH_SHORT).show();

						} else {
							// ??????????????????????????????????????????????????????????????????????????????????????????????????????
							Toast.makeText(mContext, "????????????", Toast.LENGTH_SHORT).show();
							onPurchaseFailed(Channelname);
						}
					}
					break;
				}
				default:
					break;
				}
			};
		};
		
		//??????????????????
	    private  String genOutTradNo() {  
	        //Random random = new Random();  
	        //return MD5.getMessageDigest(String.valueOf(random.nextInt(10000)).getBytes());  
	    	SimpleDateFormat format = new SimpleDateFormat("MMddHHmmss", Locale.getDefault());
			Date date = new Date();
			String key = format.format(date);
			Random r = new Random();
			key = key + r.nextInt();
			key = key.substring(0, 15);
			//key = InAppBase.OrderID;
			return key;

	    }
	    
	    private  String genAppSign(List<NameValuePair> params) {  
	        StringBuilder sb = new StringBuilder();  
	  
	        for (int i = 0; i < params.size(); i++) {  
	            sb.append(params.get(i).getName());  
	            sb.append('=');  
	            sb.append(params.get(i).getValue());  
	            sb.append('&');  
	        }  
	        sb.append("key=");  
	        sb.append(WX_API_KEY);  
	  
	        this.sb.append("sign str\n"+sb.toString()+"\n\n");  
	        String appSign = MD5.getMessageDigest(sb.toString().getBytes());  
	        E2WApp.LogLocal(appSign);  
	        return appSign;  
	    }
	    
		private static String genNonceStr() {
			Random random = new Random();
			return MD5.getMessageDigest(String.valueOf(random.nextInt(10000)).getBytes());
		}
	    
		 private  String genProductArgs() {  
		        StringBuffer xml = new StringBuffer();
		        int nPrice = (int)(mProductPrice*100);
		        String strPriceString = String.valueOf(nPrice);
		        try {  
		            String  nonceStr = genNonceStr();  
		            xml.append("</xml>");  
		            List<NameValuePair> packageParams = new LinkedList<NameValuePair>();  
		            packageParams.add(new BasicNameValuePair("appid", WX_APP_ID));  
		            packageParams.add(new BasicNameValuePair("body", mProductDescription));  
		            packageParams.add(new BasicNameValuePair("mch_id", WX_MCH_ID));  
		            packageParams.add(new BasicNameValuePair("nonce_str", nonceStr));  
		            packageParams.add(new BasicNameValuePair("notify_url","http://pay.east2west.cn/cdkey/index.php/Callback/weixinCPS"));  
		            packageParams.add(new BasicNameValuePair("out_trade_no",InAppBase.OrderID));  
		            packageParams.add(new BasicNameValuePair("spbill_create_ip","127.0.0.1"));  
		            packageParams.add(new BasicNameValuePair("total_fee", strPriceString));           
		            packageParams.add(new BasicNameValuePair("trade_type", "APP"));  
		            String sign = genPackageSign(packageParams);  
		            packageParams.add(new BasicNameValuePair("sign", sign));  
		            String xmlstring =toXml(packageParams);  
		        
		            return new String(xmlstring.toString().getBytes(), "ISO8859-1");
		  
		        } catch (Exception e) {  
		        	E2WApp.LogLocal( "fail, ex = " + e.getMessage());  
		            return null;  
		        }  
		    }
	    
	    public   boolean isNetworkAvailable(Context context) {  
	        ConnectivityManager connectivity = (ConnectivityManager) context  
	                .getSystemService(Context.CONNECTIVITY_SERVICE);  
	        if (connectivity != null) {  
	            NetworkInfo info = connectivity.getActiveNetworkInfo();  
	            if (info != null && info.isConnected())   
	            {  
	                // ????????????????????????  
	                if (info.getState() == NetworkInfo.State.CONNECTED)   
	                {  
	                    // ??????????????????????????????  
	                    return true;  
	                }  
	            }  
	        }  
	        return false;  
	    } 
	    
		private  String genPackageSign(List<NameValuePair> params) {
			StringBuilder sb = new StringBuilder();

			for (int i = 0; i < params.size(); i++) {
				sb.append(params.get(i).getName());
				sb.append('=');
				sb.append(params.get(i).getValue());
				sb.append('&');
			}
			sb.append("key=");
			sb.append(WX_API_KEY);


			String packageSign = MD5.getMessageDigest(sb.toString().getBytes()).toUpperCase();
			E2WApp.LogLocal(packageSign);
			return packageSign;
		}
	    
	    private  String toXml(List<NameValuePair> params) {  
	        StringBuilder sb = new StringBuilder();  
	        sb.append("<xml>");  
	        for (int i = 0; i < params.size(); i++) {  
	            sb.append("<"+params.get(i).getName()+">");  
	  
	  
	            sb.append(params.get(i).getValue());  
	            sb.append("</"+params.get(i).getName()+">");  
	        }  
	        sb.append("</xml>");  
	  
	        E2WApp.LogLocal(sb.toString());  
	        return sb.toString();  
	    }
	    
	    private  class GetPrepayIdTask extends AsyncTask<Void, Void, Map<String,String>> {  
	    	  
	        private ProgressDialog dialog;  
	  
	  
	        @Override  
	        protected void onPreExecute() {  
	            dialog = ProgressDialog.show(mContext,"??????????????????", "????????????");  
	        }  
	  
	        @Override  
	        protected void onPostExecute(Map<String,String> result) {  
	            if (dialog != null) {  
	                dialog.dismiss();  
	            }  
	            sb.append("prepay_id\n"+result.get("prepay_id")+"\n\n");  
	  
	            resultunifiedorder=result;  
	            WXSendReq();
	  
	        }  
	  
	        @Override  
	        protected void onCancelled() {  
	            super.onCancelled();  
	        }  
	  
	        @Override  
	        protected Map<String,String>  doInBackground(Void... params) {  
	  
	            String url = String.format("https://api.mch.weixin.qq.com/pay/unifiedorder");  
	            String entity = genProductArgs();  
	  
	            E2WApp.LogLocal(entity);  
	  
	            byte[] buf = com.east2west.game.util.Util.httpPost(url, entity);  
	  
	            String content = new String(buf);  
	            E2WApp.LogLocal(content);  
	            Map<String,String> xml=decodeXml(content);  
	  
	            return xml;  
	        }  
	    }
	    
	    public  Map<String,String> decodeXml(String content) {  
	    	  
	        try {  
	            Map<String, String> xml = new HashMap<String, String>();  
	            XmlPullParser parser = Xml.newPullParser();  
	            parser.setInput(new StringReader(content));  
	            int event = parser.getEventType();  
	            while (event != XmlPullParser.END_DOCUMENT) {  
	  
	                String nodeName=parser.getName();  
	                switch (event) {  
	                    case XmlPullParser.START_DOCUMENT:  
	  
	                        break;  
	                    case XmlPullParser.START_TAG:  
	  
	                        if("xml".equals(nodeName)==false){  
	                            //?????????student??????  
	                            xml.put(nodeName,parser.nextText());  
	                        }  
	                        break;  
	                    case XmlPullParser.END_TAG:  
	                        break;  
	                }  
	                event = parser.next();  
	            }  
	  
	            return xml;  
	        } catch (Exception e) {  
	        	E2WApp.LogLocal(e.toString());  
	        }  
	        return null;  
	  
	    }
	    
	    private  void genPayReq() {  
	    	  
	        req.appId = WX_APP_ID;  
	        req.partnerId = WX_MCH_ID;  
	        req.prepayId = resultunifiedorder.get("prepay_id");  
	        req.packageValue = "prepay_id="+resultunifiedorder.get("prepay_id");  
	        req.nonceStr = genNonceStr();  
	        req.timeStamp = String.valueOf(genTimeStamp());  
	        List<NameValuePair> signParams = new LinkedList<NameValuePair>();  
	        signParams.add(new BasicNameValuePair("appid", req.appId));  
	        signParams.add(new BasicNameValuePair("noncestr", req.nonceStr));  
	        signParams.add(new BasicNameValuePair("package", req.packageValue));  
	        signParams.add(new BasicNameValuePair("partnerid", req.partnerId));  
	        signParams.add(new BasicNameValuePair("prepayid", req.prepayId));  
	        signParams.add(new BasicNameValuePair("timestamp", req.timeStamp));  
	        req.sign = genAppSign(signParams);  
	        sb.append("sign\n"+req.sign+"\n\n");    
	        E2WApp.LogLocal(signParams.toString());  	  
	    }	    
	    private  long genTimeStamp() {  
	        return System.currentTimeMillis() / 1000;  
	    }
		
		public  void WXSendReq()
		{
			genPayReq();
			msgApi.registerApp(WX_APP_ID);
			msgApi.sendReq(req);
		}

	public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        E2WApp.LogLocal("onActivityResult");
        mTabIabHelper.onActivityResult(requestCode, resultCode, data);
    }
//end}
