package com.east2west.game.inApp;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;



//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Configuration;
import android.util.Log;
import android.widget.Toast;
//endpublic class InAppHWPAY extends InAppBase {
	
//comment//	
//	
//	public static final int PAY_ORI = 1;//1表示竖屏，2表示横屏，默认竖屏
//	private InAppBase mBaseInApp = null;
//	private String Channelname="InAppHW";
//	public static String APP_ID="10431960";
//	public static String PAY_ID="900086000020107215";
//    public static String BUO_SECRET = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCkTf5n+SZQVI2/4HGw9xewR7FeCjXMU76w3iYeZNrej18iCfc+qpgrVd4Ptx49utqNML6lfGcTePkry7oXtQi0oUIb1A2pXikXVrWC7qL0UekzC868Gmi1DXiGxWyGK6Z1X7yZN3YoWN4pSaLJDhumDen6Oronzmre8sZ+WHDYssSQqXPiM32KnGlXR/hrh68F1Jx8raHS4C5q98LaqzGPWHjedzwFYhCN3KRk2Akj3gB6/SEAvkeK1qdB60rYblRNeeJg03YXGdLz/DgozEFzI06uEwLXfcmToJoSrCjQyIZiSDdQhPfrbZGl/pr3jinTlod7LFAMMJcfsz0nf0lvAgMBAAECggEAYpZZ/NFG6BSUKXnnPiRFloSuLJs7xKrLVR03Ci3CFqE4mBgavwNl4zrWz980yh2AXg/NlUacItcHy/umYetCmf/YxxHqUKIrTdG9gB7osGkl4HdJSR0fjuPSWivD/o3ah7s2U0kwIO2SAHwqrTFF7dGTf44VfSUigzxxVgaDT8KehEpUV752IKitVhctwHVIL+CQEz/HXrXQmjpnjLrnjdVwyZt+HtHtZL628kizl1PJgFjCCbMm5Lh7y/rZx1S86I5tG+j6HpXpOXHKhwi5PyTTGT4F+6ks3xCTmeSoNi+UsuUsBG5Em/+6846Zb2R0lKQx19i7i+y/dEp4SM32gQKBgQDPWM4l3NtkWfz9p6vDHbno1wD5S+umLoWDBmgAA1JquWuWUwNNgkOB0mYKyxKweWozZtpZ4zxDpipfevjyUCO2qegrF9g/r2aCoA1z482sRwSt1/Jech7JfW4uF5yM1VCeUBMmuExPu6XcHrqmSJvrQK2t1Ocit/q3Kyb5h/EFUQKBgQDK26tVtxn7Co9XR1D6vf2hsXcDYjwes6h0qAMHaQ0Ti38OjwS+CVsMGQz1GVfwlV0qt8h0jV5Iy88KXyI42nvNzf4pe02dvCXxhSejbXcy0eCWEYSCyxbQU+Bg0ckoPd82+4Oig0Us7JgxWoS8rysXEF2ZBItpPi26c2cTPtqyvwKBgQCQ0gf6Lg4WQzwOtqOjPgnxdOo7NSm8AlZCM6FEEQ3peOSKNCTkaA1aiWe4NioxlDv29umfSrV20oJZ+fwS0qJ/HKEKKDdkE9BXgA6lWQD4SQodmeywxqh2NuNT0i4Ht539VRRrQOIb9oZb/iKDrccpQx2Lgl6Fw1abxMoOE0LmYQKBgQCm01BsBVCQa3bGSBgInQZgWxmM5tSaSxVWGnWjOnlOgYHT7znvLrJ5mIBXcKgpaixcXRe1Ai1voGx8ExCJwOPftHA4nPaPqZNqtB6NABDu8jrIL0/SYEI6wT/dX6kWNwvCo8T1eQ8Ciu/+ZnqS0VuWdBcFJ/+eZUwl8ZHq+d3Q8QKBgQDAVVWr2IH4aRtHyQigeexVg650RbcmhkjsSefRhT3tczFa85OCFL1DebmIFUNwUSeQQx/r2ArFH/jrs+EB+1i97nBzhTuCivE9uH0SOJKpBhUZzjpYsxEFq35KJEGXoZ4g0jZW/yuNfHB9XFfH2bwQxjK+4lUKuaJK8HgP/QcmdQ==";
//    public static String PAY_RSA_PRIVATE = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCkqFML+cLnLbvrnNZ0pKkjRahOUoJJ6AjQkNhaKvvTjy/fxLiAeNxn/2IdgKHR8mpU0yYYPcsRZyDdn80CtAkP+mAw3778pf7dQxFmGA8iOUBw8vkezSzzeXgR7gnji8iqgiRoHYg7zMkgJD+Ru4qzk0ClMdYU2xbRloV+NzHYeUJNmJekLOhTBekt6/L2MZdoQ3AahXrvtJf2Dz9qq3Aj29eFaeDpRscJ37kkhTRJvmMg1HdLvr6P+QUNdb4pEJA8hwLWQhYbGkyKW0ZEXyRMzeaKF1mC23geewNhYOZg+KnMZhuuo53TsFNu0+C6zsAO+nYC3bXm2srrdkHpvFupAgMBAAECggEAG1H6hZApcKY7+foJ80ym671REb3K9GxVmhWOcFeVdSLa9Kv1WQu0tmS/aNnA/87TKcPnHDqUiQytfVhYccxhfI80iqd1TwJT6W6JYoE3cZxCPvtxrlSo0rUi4Qa4CVNWNkRlugi8Y/+0l2qsSYfumaEjJsXAGbHIdXoeKDUMRjiDsBvCZmqN9SQe6ivPp8uySV5soctQSrd9WU+kOPmJFGxgb15pfSbYgiX6tQeHBc2QT3m0CnZ0S+C1fNonfUUVu9DiuQyDH5TtkOOsvhavNYxFDWtPWwGv3tpL4ELlH6emvn/TvR+EQz3x5A+jCRYVRIv6HeaNJQpkNiKchgWqoQKBgQDrD+KqXfvOjZ617MCIh/fmkVU5LseC5QU130SdoK0ZFLQnDKgLsYxxYJI3i46/GL+WU8s/uRbNuYZDmyKimpzbTu5cfbfHWCm71tyB4gnZ/NqWISAJIiyW43v0xnUTFcIZQ6fRZ5vKmbb41o0NGse9p+lNCO/GcKWHpfXV2mMJnQKBgQCzUwGIdiYS83NAqrdzMpWNH80RG0yKJSbh/+KP4d8HBBpYGXwUgomoLXVR4HqfoWuEH+eoMh7b7Jn+AgktLgJBgIiIuydg4wziHXQuhNAOjmWrPnCiHAJLHIdNo3jz9SvF1KFr67QfcFoiL+abS2/P0Zcx4NFIgjnA4Z2NVYAyfQKBgQDRY24rCttC7L6DGimLtWrrlWyQKo6ImA/jJEaQD1ACdoHgAxMyj28mk7rMBeIbciU/+Nalpe+dRHVIhcn9hLLTXOVRuJ9b0LokXEpC3KKf7vCcKVfLKwkDRBLoQVyKqqgjLzQvghayC+mEkkJFeSSSWh+lgp9sam3ZfsmVPRtZtQKBgARDVuf9lw4gR38kD9RnQXLnbKKZeYpXM8Nvp90vy3OJP28UvARozgj3e7CEm6Wr2rh7YbB38I/d4hNNzRYL3/XarmRBvr/o5eeCN77bXW7bJ8OYamkQLWXHude4qSlzjKTZVzUPl2qf6ySg6uSKOJBCNUv0QkVtAx54vpwbij6pAoGAaHtiED7pDqQubIr+MVovNJXqmYryokEfTd3CbLek0Rc2XnWWzPYvALBNkrO/0pCJprFP4u/B7pjt0eUqjwHd1m4Oap4vVROF+BGUAFlwLaz3iQPKAdWxy+ZduwoGZUjVoTNS2D8bQVH+yDtCoeYymW/2yF+S6c+++dNtr/3CcLM=";
//    public static final String PAY_RSA_PUBLIC = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApKhTC/nC5y2765zWdKSpI0WoTlKCSegI0JDYWir7048v38S4gHjcZ/9iHYCh0fJqVNMmGD3LEWcg3Z/NArQJD/pgMN++/KX+3UMRZhgPIjlAcPL5Hs0s83l4Ee4J44vIqoIkaB2IO8zJICQ/kbuKs5NApTHWFNsW0ZaFfjcx2HlCTZiXpCzoUwXpLevy9jGXaENwGoV677SX9g8/aqtwI9vXhWng6UbHCd+5JIU0Sb5jINR3S76+j/kFDXW+KRCQPIcC1kIWGxpMiltGRF8kTM3mihdZgtt4HnsDYWDmYPipzGYbrqOd07BTbtPgus7ADvp2At215trK63ZB6bxbqQIDAQAB";
//    public static final String LOGIN_RSA_PUBLIC = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmKLBMs2vXosqSR2rojMzioTRVt8oc1ox2uKjyZt6bHUK0u+OpantyFYwF3w1d0U3mCF6rGUnEADzXiX/2/RgLQDEXRD22er31ep3yevtL/r0qcO8GMDzy3RJexdLB6z20voNM551yhKhB18qyFesiPhcPKBQM5dnAOdZLSaLYHzQkQKANy9fYFJlLDo11I3AxefCBuoG+g7ilti5qgpbkm6rK2lLGWOeJMrF+Hu+cxd9H2y3cXWXxkwWM1OZZTgTq3Frlsv1fgkrByJotDpRe8SwkiVuRycR0AHsFfIsuZCFwZML16EGnHqm2jLJXMKIBgkZTzL8Z+201RmOheV4AQIDAQAB";
//	// landscape view for pay UI
//	public static final int PAY_ORI_LAND = 2;
//
//	public static final String GET_PAY_PRIVATE_KEY = "https://ip:port/HuaweiServerDemo/getPayPrivate";
//
//	public static final String GET_BUOY_PRIVATE_KEY = "https://ip:port/HuaweiServerDemo/getBuoyPrivate";
//    
//    public static final String USER_ID = "userID";
//    
//    public static final String APPLICATION_ID = "applicationID";
//    
//    public static final String AMOUNT = "amount";
//    
//    public static final String PRODUCT_NAME = "productName";
//    
//    public static final String PRODUCT_DESC = "productDesc";
//    
//    public static final String REQUEST_ID = "requestId";
//    
//    public static final String USER_NAME = "userName";
//    
//    public static final String SIGN = "sign";
//    
//    public static final String NOTIFY_URL = "notifyUrl";
//    
//    public static final String SERVICE_CATALOG = "serviceCatalog";
//    
//    public static final String SHOW_LOG = "showLog";
//    
//    public static final String SCREENT_ORIENT = "screentOrient";
//    
//    public static final String SDK_CHANNEL = "sdkChannel";
//    
//    public static final String URL_VER = "urlver";
//    
//	@Override
//	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey)
//	{		
//		super.init(appContext, context, strAppId, strAppKey);	
//		mBaseInApp = ((MainActivity) context).getBaseInApp(); 
//		Log.e("IAP","init"+Channelname);
//		GameServiceSDK.init(mContext,APP_ID, PAY_ID,
//				"pl.idreams.pottery.installnewtype.provider", new GameEventHandler() {
//
//					@Override
//					public void onResult(Result result) {
//						if (result.rtnCode != Result.RESULT_OK) {							
//							return;
//						}
//						login(1);
//						checkUpdate();
//					}
//
//					@Override
//					public String getGameSign(String appId, String cpId, String ts) {
//						return createGameSign(appId + cpId + ts);
//					}
//
//				});
//			 		 
//		
//	}
//	private String createGameSign(String data) {
//
//		String str = data;
//		try {
//			String result = RSAUtil.sha256WithRsa(str.getBytes("UTF-8"), BUO_SECRET);
//			return result;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
//	private void checkUpdate() {
//		GameServiceSDK.checkUpdate(mContext, new GameEventHandler() {
//
//			@Override
//			public void onResult(Result result) {
//				if (result.rtnCode != Result.RESULT_OK) 
//				{
//					//检测更新失败
//				}
//			}
//
//			@Override
//			public String getGameSign(String appId, String cpId, String ts) {
//				return createGameSign(appId + cpId + ts);
//			}
//
//		});
//	}
//	private void login(int authType) {
//		GameServiceSDK.login(mContext, new GameEventHandler() {
//
//			@Override
//			public void onResult(Result result) {
//				if (result.rtnCode != Result.RESULT_OK) 
//				{
//					//登陆失败
//				} 
//				else 
//				{
//					UserResult userResult = (UserResult) result;
//					if (userResult.isAuth != null && userResult.isAuth == 1) 
//					{
//						boolean checkResult = checkSign(APP_ID + userResult.ts + userResult.playerId,
//								userResult.gameAuthSign);
//						if (checkResult) 
//						{
//							//验签成功
//						} 
//						else 
//						{
//							//验签失败
//						}
//
//					} else if (userResult.isChange != null && userResult.isChange == 1) {
//						login(1);
//					} else {
//						//登陆成功
//					}
//				}
//			}
//
//			@Override
//			public String getGameSign(String appId, String cpId, String ts) {
//				return createGameSign(appId + cpId + ts);
//			}
//
//		}, authType);
//	}
//
//	@Override
//	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
//	{
//		super.purchase(strProductId, strProductDescription, fPrice);
//		purchaseProduct();		
//	}
//	public void MeizuPay()
//	{
//		
//	}
//	@Override
//	public void onPause()
//	{		
//		GameServiceSDK.hideFloatWindow(mContext);
//	}
//	
//	@Override
//	public void onResume()
//	{
//		GameServiceSDK.showFloatWindow(mContext);
//	}
//	
//	@Override
//	public void onDestroy()
//	{
//		GameServiceSDK.destroy(mContext);
//	}
//
//
//	public static String getSignData(Map<String, String> params)
//    {
//      StringBuffer content = new StringBuffer();
//      
//      List keys = new ArrayList(params.keySet());
//      Collections.sort(keys);
//      for (int i = 0; i < keys.size(); i++)
//      {
//        String key = (String)keys.get(i);
//        if (!"sign".equals(key))
//        {
//          String value = (String)params.get(key);
//          if (value != null) {
//            content.append((i == 0 ? "" : "&") + key + "=" + value);
//          }
//        }
//      }
//      return content.toString();
//    }
//	@Override
//	public void ExitGame()
//	{
//
//		AlertDialog.Builder builder = new Builder(mContext);
//		builder.setMessage("确认退出吗?");
//		builder.setTitle("提示");
//		builder.setPositiveButton("确认", new OnClickListener() {
//			@Override
//			public void onClick(DialogInterface dialog, int which) {
//				mBaseInApp = ((MainActivity) mContext).getBaseInApp(); 
//				mBaseInApp.ExitGame();
//			}
//		});
//		builder.setNegativeButton("取消", new OnClickListener() {
//			@Override
//			public void onClick(DialogInterface dialog, int which) {
//				dialog.dismiss();
//			}
//		});
//		builder.create().show();
//	}
//
//	
//	private void purchaseProduct()
//	{
//		Log.e("IAP","purchaseProduct"+Channelname);
//	    DateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd-hh-mm-ss-SSS", Locale.US);
//	    String requestId = format.format(new Date());
//		HuaWeipay(mContext, mProductPrice+"0", mProductDescription, mProductDescription, requestId, payHandler);		
//	}
//	protected boolean checkSign(String data, String gameAuthSign) {
//
//		try {
//			return RSAUtil.verify(data.getBytes("UTF-8"),LOGIN_RSA_PUBLIC, gameAuthSign);
//		} catch (Exception e) {
//			return false;
//		}
//	}
//	public static void HuaWeipay(
//	        final Activity activity,
//	        final String price,
//	        final String productName,
//	        final String productDesc,
//	        final String requestId,
//	            final GameEventHandler handler)
//	    {
//	        
//	        Map<String, String> params = new HashMap<String, String>();
//	        // 必填字段，不能为null或者""，请填写从联盟获取的支付ID
//	        // the pay ID is required and can not be null or "" 
//	        params.put(USER_ID, PAY_ID);
//	        // 必填字段，不能为null或者""，请填写从联盟获取的应用ID
//	        // the APP ID is required and can not be null or "" 
//	        params.put(APPLICATION_ID, APP_ID);
//	        // 必填字段，不能为null或者""，单位是元，精确到小数点后两位，如1.00
//	        // the amount (accurate to two decimal places) is required
//	        params.put(AMOUNT, price);
//	        // 必填字段，不能为null或者""，道具名称
//	        // the product name is required and can not be null or "" 
//	        params.put(PRODUCT_NAME, productName);
//	        // 必填字段，不能为null或者""，道具描述
//	        // the product description is required and can not be null or "" 
//	        params.put(PRODUCT_DESC, productDesc);
//	        // 必填字段，不能为null或者""，最长30字节，不能重复，否则订单会失败
//	        // the request ID is required and can not be null or "". Also it must be unique.
//	        params.put(REQUEST_ID, requestId);
//
//	        String noSign = getSignData(params);
//	        LogUtil.d("startPay", "noSign：" + noSign);
//	        
//	        // CP必须把参数传递到服务端，在服务端进行签名，然后把sign传递下来使用；服务端签名的代码和客户端一致
//	        // the CP need to send the params to the server and sign the params on the server , 
//	        // then the server passes down the sign to client;
//	        String sign = RSAUtil.sign(noSign, PAY_RSA_PRIVATE);
//	        LogUtil.d("startPay", "sign： " + sign);
//
//
//	        Map<String, Object> payInfo = new HashMap<String, Object>();
//	        // 必填字段，不能为null或者""
//	        // the amount is required and can not be null or "" 
//	        payInfo.put(AMOUNT, price);
//	        // 必填字段，不能为null或者""
//	        // the product name is required and can not be null or ""
//	        payInfo.put(PRODUCT_NAME, productName);
//	        // 必填字段，不能为null或者""
//	        // the request ID is required and can not be null or ""
//	        payInfo.put(REQUEST_ID, requestId);
//	        // 必填字段，不能为null或者""
//	        // the product description is required and can not be null or ""
//	        payInfo.put(PRODUCT_DESC, productDesc);
//	        // 必填字段，不能为null或者""，请填写自己的公司名称
//	        // the user name is required and can not be null or "". Input the company name of CP.
//	        payInfo.put(USER_NAME, "西安西品网络科技有限公司");
//	        // 必填字段，不能为null或者""
//	        // the APP ID is required and can not be null or "". 
//	        payInfo.put(APPLICATION_ID, APP_ID);
//	        // 必填字段，不能为null或者""
//	        // the user ID is required and can not be null or "". 
//	        payInfo.put(USER_ID, PAY_ID);
//	        // 必填字段，不能为null或者""
//	        // the sign is required and can not be null or "".
//	        payInfo.put(SIGN, sign);
//	        
//	        // 必填字段，不能为null或者""，此处写死X6
//	        // the service catalog is required and can not be null or "".
//	        payInfo.put(SERVICE_CATALOG, "X6");
//	        
//
//	        // 调试期可打开日志，发布时注释掉
//	        // print the log for demo
//	        payInfo.put(SHOW_LOG, true);
//	        
//	        if (activity.getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE)
//	        {
//	            payInfo.put(SCREENT_ORIENT,
//	                    PAY_ORI_LAND);
//	        }
//	        else
//	        {
//	            payInfo.put(SCREENT_ORIENT,
//	                   PAY_ORI);
//	        }
//	        
//	        GameServiceSDK.startPay(activity, payInfo, handler);   
//	    }
//	
//	public void swtichuser() {
//		// TODO Auto-generated method stub
//		MainActivity.LogLocal("MZ_swtichuser");
//	}
//    private GameEventHandler payHandler = new GameEventHandler()
//    {
//		@Override
//		public String getGameSign(String appId, String cpId, String ts) {
//			return null;
//		}
//		
//        @Override
//        public void onResult(Result result)
//        {        
//            Map<String, String> payResp = ((PayResult)result).getResultMap();
//            String pay = "支付未成功！";
//            // 支付成功，进行验签
//            // payment successful, then check the response value
//            if ("0".equals(payResp.get("returnCode")))
//            {
//                if ("success".equals(payResp.get("errMsg")))
//                {
//                    // 支付成功，验证信息的安全性；待验签字符串中如果有isCheckReturnCode参数且为yes，则去除isCheckReturnCode参数
//                	if (payResp.containsKey("isCheckReturnCode") && "yes".equals(payResp.get("isCheckReturnCode")))
//                    {
//                        payResp.remove("isCheckReturnCode");
//                        
//                    }
//                	// 支付成功，验证信息的安全性；待验签字符串中如果没有isCheckReturnCode参数活着不为yes，则去除isCheckReturnCode和returnCode参数
//                	else
//                    {
//                        payResp.remove("isCheckReturnCode");
//                        payResp.remove("returnCode");
//                    }
//                    // 支付成功，验证信息的安全性；待验签字符串需要去除sign参数
//                    String sign = payResp.remove("sign");
//                    
//                    String noSigna = getSignData(payResp);
//                    
//                    // 使用公钥进行验签
//                    // check the sign using RSA public key
//                    boolean s = RSAUtil.doCheck(noSigna, sign, PAY_RSA_PUBLIC);
//                    
//                    if (s)
//                    {
//                        pay = "支付成功！";
//						//这里处理支付成功下发道具
//                        onPurchaseSuccess();
//                    }
//                    else
//                    {
//                        pay = "支付成功，但验签失败！";
//                    }
//                }
//               
//            }
//            else if ("30002".equals(payResp.get("returnCode")))
//            {
//               pay = "支付结果查询超时！";
//            }
//            Toast.makeText(mContext, pay, Toast.LENGTH_SHORT).show();
//        }
//    };
//end}
