package com.east2west.game.inApp;

//comment
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.xmlpull.v1.XmlPullParser;

import com.alipay.sdk.app.PayTask;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.util.MD5;
import com.east2west.game.util.PayResult;
import com.east2west.game.util.SignUtils;
import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.unity3d.player.UnityPlayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import android.view.WindowManager;
import android.widget.Toast;
//end
public class InAppEAST2WEST extends InAppBase{
    public static String WX_APP_ID= "";
//comment
	public  StringBuffer sb;
	public  Map<String,String> resultunifiedorder;
	public  PayReq req;
	private  IWXAPI msgApi;
	public final int ALI_SDK_PAY_FLAG = 1;
	private InAppBase mBaseInApp = null;
	public static String east2westid;
	public boolean isLogin=false;
	private String Channelname="InAppEAST2WEST";

	public static String WX_MCH_ID = "";	
	public static String WX_API_KEY = ""; 
	public static String ALI_PARTNER = "";
	public static String ALI_SELLER = "";	
	public static String ALI_RSA_PRIVATE = "";
	public static String ALI_RSA_PUBLIC = "";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		req = new PayReq();
		sb=new StringBuffer();
		msgApi = WXAPIFactory.createWXAPI(mContext,WX_APP_ID);	
		E2WApp.LogLocal("["+Channelname+"] strAppKey1.0="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret1.0="+strAppSecret);
		WX_APP_ID=strAppId;
		AnalysisID(strAppSecret);
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
	    	ALI_SELLER=strArray[3].toString();
	    	ALI_RSA_PRIVATE=strArray[4].toString();
	    	ALI_RSA_PUBLIC=strArray[5].toString();	
	    	E2WApp.LogLocal("["+Channelname+"] WX_APP_ID="+WX_APP_ID);
	    	E2WApp.LogLocal("["+Channelname+"] WX_MCH_ID="+WX_MCH_ID);
	    	E2WApp.LogLocal("["+Channelname+"] WX_API_KEY="+WX_API_KEY);
	    	
	    	
    	}
    	catch(Exception E)
    	{
    		E2WApp.LogLocal("[AnalysisID]Error="+E);
    	}
    }
    public static String[] convertStrToArray(String str,String symbol){   
        String[] strArray = null;   
        strArray = str.split(symbol); //拆分字符为symbol 可以是 "," ,然后把结果交给数组strArray 
        return strArray;
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
		          		//handler.sendEmptyMessage(0);
		          	}
		          	if(count>=10)
		          	{
		          		//onPurchaseSuccess("UnlockGame");
		          		isLogin=true;
		          		break;
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
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		//onPurchaseSuccess(Channelname);
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
		EW2Pay();
	}
	public void EW2Pay()
	{
		east2westid=mProductId;
		final String price= String.valueOf((int)mProductPrice);
		E2WApp.LogLocal("price="+price);
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("微信支付", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					if(isNetworkAvailable(mContext))
					{
						GetPrepayIdTask getPrepayId = new GetPrepayIdTask();
						getPrepayId.execute();
					}
					else {
						Toast.makeText(mContext, "没有可用网络，微信无法支付！", 5000).show();
					}	
					
				}
			});
			builder.setNeutralButton("支付宝支付", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					Alipay(mProductDescription,mProductDescription,price);
				}
			});
			builder.setNegativeButton("取消", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					onPurchaseFailed(Channelname);
					dialog.dismiss();
				}
			});
			AlertDialog alertDialog;
			alertDialog = builder.create();// AlertDialog.Builder.create();
			alertDialog.setCancelable(false);
			alertDialog.setCanceledOnTouchOutside(false);
			alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
					WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
			alertDialog.show();

			alertDialog.getWindow().getDecorView()
					.setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow()
							.getDecorView().getSystemUiVisibility());
			alertDialog.getWindow()
					.clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("华为支付", new OnClickListener() {
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
	//支付宝相关方法
	//支付宝相关方法
		/**
		 * create the order info. 创建订单信息
		 * 
		 */
		private  String getOrderInfo(String subject, String body, String price) {

			// 签约合作者身份ID
			String orderInfo = "partner=" + "\"" + ALI_PARTNER + "\"";

			// 签约卖家支付宝账号
			orderInfo += "&seller_id=" + "\"" + ALI_SELLER + "\"";

			// 商户网站唯一订单号
			orderInfo += "&out_trade_no=" + "\"" + getOutTradeNo() + "\"";

			// 商品名称
			orderInfo += "&subject=" + "\"" + subject + "\"";

			// 商品详情
			orderInfo += "&body=" + "\"" + body + "\"";

			// 商品金额
			orderInfo += "&total_fee=" + "\"" + price + "\"";

			// 服务器异步通知页面路径
			orderInfo += "&notify_url=" + "\"" + "http://pay.east2west.cn/cdkey/index.php/Callback/alipayCPS"+ "\"";

			// 服务接口名称， 固定值
			orderInfo += "&service=\"mobile.securitypay.pay\"";

			// 支付类型， 固定值
			orderInfo += "&payment_type=\"1\"";

			// 参数编码， 固定值
			orderInfo += "&_input_charset=\"utf-8\"";
			
			// 参数编码， 固定值
			orderInfo += "&passback_params=\""+E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg+"\"";

			// 设置未付款交易的超时时间
			// 默认30分钟，一旦超时，该笔交易就会自动被关闭。
			// 取值范围：1m～15d。
			// m-分钟，h-小时，d-天，1c-当天（无论交易何时创建，都在0点关闭）。
			// 该参数数值不接受小数点，如1.5h，可转换为90m。
			orderInfo += "&it_b_pay=\"30m\"";

			// extern_token为经过快登授权获取到的alipay_open_id,带上此参数用户将使用授权的账户进行支付
			// orderInfo += "&extern_token=" + "\"" + extern_token + "\"";

			// 支付宝处理完请求后，当前页面跳转到商户指定页面的路径，可空
			orderInfo += "&return_url=\"m.alipay.com\"";

			return orderInfo;
		}

		/**
		 * get the out_trade_no for an order. 生成商户订单号，该值在商户端应保持唯一（可自定义格式规范）
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
		 * sign the order info. 对订单信息进行签名
		 * 
		 * @param content
		 *            待签名订单信息
		 */
		private  String sign(String content) {
			return SignUtils.sign(content, ALI_RSA_PRIVATE);
		}

		/**
		 * get the sign type we use. 获取签名方式
		 * 
		 */
		private  String getSignType() {
			return "sign_type=\"RSA\"";
		}
		
		public  void Alipay(String subject, String body, String price) {
			String orderInfo = getOrderInfo(subject, body, price);

			/**
			 * 特别注意，这里的签名逻辑需要放在服务端，切勿将私钥泄露在代码中！
			 */
			String sign = sign(orderInfo);
			try {
				/**
				 * 仅需对sign 做URL编码
				 */
				sign = URLEncoder.encode(sign, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			/**
			 * 完整的符合支付宝参数规范的订单信息
			 */
			final String payInfo = orderInfo + "&sign=\"" + sign + "\"&" + getSignType();

			Runnable payRunnable = new Runnable() {

				@Override
				public void run() {
					// 构造PayTask 对象
					PayTask alipay = new PayTask(mContext);
					// 调用支付接口，获取支付结果
					String result = alipay.pay(payInfo,true);

					Message msg = new Message();
					msg.what = ALI_SDK_PAY_FLAG;
					msg.obj = result;
					mHandlerAli.sendMessage(msg);
				}
			};

			// 必须异步调用
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
					 * 同步返回的结果必须放置到服务端进行验证（验证的规则请看https://doc.open.alipay.com/doc2/
					 * detail.htm?spm=0.0.0.0.xdvAU6&treeId=59&articleId=103665&
					 * docType=1) 建议商户依赖异步通知
					 */
					String resultInfo = payResult.getResult();// 同步返回需要验证的信息

					String resultStatus = payResult.getResultStatus();
					// 判断resultStatus 为“9000”则代表支付成功，具体状态码代表含义可参考接口文档
					if (TextUtils.equals(resultStatus, "9000")) 
					{
						//支付宝 支付成功回调
						{
							onPurchaseSuccess(Channelname);
						}
						Toast.makeText(mContext, "支付成功", Toast.LENGTH_SHORT).show();				
					} 
					else 
					{
						// 判断resultStatus 为非"9000"则代表可能支付失败
						// "8000"代表支付结果因为支付渠道原因或者系统原因还在等待支付结果确认，最终交易是否成功以服务端异步通知为准（小概率状态）
						if (TextUtils.equals(resultStatus, "8000")) {
							Toast.makeText(mContext, "支付结果确认中", Toast.LENGTH_SHORT).show();

						} else {
							// 其他值就可以判断为支付失败，包括用户主动取消支付，或者系统返回的错误
							Toast.makeText(mContext, "支付失败", Toast.LENGTH_SHORT).show();
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
		
		//微信支付相关
	    private  String genOutTradNo() {  
	    	Random random = new Random();
			DateFormat format = new java.text.SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US);
	        String requestId = format.format(new Date());
			return MD5.getMessageDigest((String.valueOf(random.nextInt(10000))+requestId).getBytes());
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
			DateFormat format = new java.text.SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US);
	        String requestId = format.format(new Date());
			return MD5.getMessageDigest((String.valueOf(random.nextInt(10000))+requestId).getBytes());
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
				packageParams.add(new BasicNameValuePair("attach", E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID));
				E2WApp.LogLocal("mProductDescription="+mProductDescription); 
	            packageParams.add(new BasicNameValuePair("body", mProductDescription));  
	            packageParams.add(new BasicNameValuePair("mch_id", WX_MCH_ID));  
	            packageParams.add(new BasicNameValuePair("nonce_str", nonceStr));  
	            packageParams.add(new BasicNameValuePair("notify_url","http://pay.east2west.cn/cdkey/index.php/Callback/weixinCPS"));
	            E2WApp.LogLocal("notify_url="+"http://pay.east2west.cn/cdkey/index.php/Callback/weixinCPS");  
	            E2WApp.LogLocal("genOutTradNo()="+genOutTradNo());  
	            packageParams.add(new BasicNameValuePair("out_trade_no",genOutTradNo()));  
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
	                // 当前网络是连接的  
	                if (info.getState() == NetworkInfo.State.CONNECTED)   
	                {  
	                    // 当前所连接的网络可用  
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
	            dialog = ProgressDialog.show(mContext,"正在生成订单", "请稍后！");  
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
	                            //实例化student对象  
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
//end
}
