package com.east2west.game.inApp;
//commentimport java.security.SecureRandom;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.util.RSAUtil;
import com.huawei.android.hms.agent.HMSAgent;
import com.huawei.android.hms.agent.common.handler.ConnectHandler;
import com.huawei.android.hms.agent.game.GameLoginSignUtil;
import com.huawei.android.hms.agent.game.handler.ICheckLoginSignHandler;
import com.huawei.android.hms.agent.game.handler.LoginHandler;
import com.huawei.android.hms.agent.pay.PaySignUtil;
import com.huawei.android.hms.agent.pay.handler.PayHandler;
import com.huawei.hms.support.api.entity.game.GameUserData;
import com.huawei.hms.support.api.entity.pay.PayReq;
import com.huawei.hms.support.api.entity.pay.PayStatusCodes;
import com.huawei.hms.support.api.hwid.SignInHuaweiId;
import com.huawei.hms.support.api.hwid.SignOutResult;
import com.huawei.hms.support.api.pay.PayResultInfo;
import com.unity3d.player.UnityPlayer;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Configuration;
import android.util.Log;
import android.widget.Toast;
//endpublic class InAppHW extends InAppBase {
	
//comment	public static final int PAY_ORI = 1;//1表示竖屏，2表示横屏，默认竖屏
	private InAppBase mBaseInApp = null;
	private static String Channelname="InAppHW";
	// landscape view for pay UI
	public static final int PAY_ORI_LAND = 2;

	public static final String GET_PAY_PRIVATE_KEY = "https://ip:port/HuaweiServerDemo/getPayPrivate";

	public static final String GET_BUOY_PRIVATE_KEY = "https://ip:port/HuaweiServerDemo/getBuoyPrivate";
    
    public static final String USER_ID = "userID";
    
    public static final String APPLICATION_ID = "applicationID";
    
    public static final String AMOUNT = "amount";
    
    public static final String PRODUCT_NAME = "productName";
    
    public static final String PRODUCT_DESC = "productDesc";
    
    public static final String REQUEST_ID = "requestId";
    
    public static final String USER_NAME = "userName";
    
    public static final String SIGN = "sign";
    
    public static final String NOTIFY_URL = "notifyUrl";
    
    public static final String SERVICE_CATALOG = "serviceCatalog";
    
    public static final String SHOW_LOG = "showLog";
    
    public static final String SCREENT_ORIENT = "screentOrient";
    
    public static final String SDK_CHANNEL = "sdkChannel";
    public static final String URL_VER = "urlver";   
    public static final String EXT_RESERVED = "extReserved";
    private static boolean HWLoginSuccess=false;
    public static boolean islogin=false;
    public static String PAY_ID="900086000020107215";
    public static String BUO_SECRET = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCkTf5n+SZQVI2/4HGw9xewR7FeCjXMU76w3iYeZNrej18iCfc+qpgrVd4Ptx49utqNML6lfGcTePkry7oXtQi0oUIb1A2pXikXVrWC7qL0UekzC868Gmi1DXiGxWyGK6Z1X7yZN3YoWN4pSaLJDhumDen6Oronzmre8sZ+WHDYssSQqXPiM32KnGlXR/hrh68F1Jx8raHS4C5q98LaqzGPWHjedzwFYhCN3KRk2Akj3gB6/SEAvkeK1qdB60rYblRNeeJg03YXGdLz/DgozEFzI06uEwLXfcmToJoSrCjQyIZiSDdQhPfrbZGl/pr3jinTlod7LFAMMJcfsz0nf0lvAgMBAAECggEAYpZZ/NFG6BSUKXnnPiRFloSuLJs7xKrLVR03Ci3CFqE4mBgavwNl4zrWz980yh2AXg/NlUacItcHy/umYetCmf/YxxHqUKIrTdG9gB7osGkl4HdJSR0fjuPSWivD/o3ah7s2U0kwIO2SAHwqrTFF7dGTf44VfSUigzxxVgaDT8KehEpUV752IKitVhctwHVIL+CQEz/HXrXQmjpnjLrnjdVwyZt+HtHtZL628kizl1PJgFjCCbMm5Lh7y/rZx1S86I5tG+j6HpXpOXHKhwi5PyTTGT4F+6ks3xCTmeSoNi+UsuUsBG5Em/+6846Zb2R0lKQx19i7i+y/dEp4SM32gQKBgQDPWM4l3NtkWfz9p6vDHbno1wD5S+umLoWDBmgAA1JquWuWUwNNgkOB0mYKyxKweWozZtpZ4zxDpipfevjyUCO2qegrF9g/r2aCoA1z482sRwSt1/Jech7JfW4uF5yM1VCeUBMmuExPu6XcHrqmSJvrQK2t1Ocit/q3Kyb5h/EFUQKBgQDK26tVtxn7Co9XR1D6vf2hsXcDYjwes6h0qAMHaQ0Ti38OjwS+CVsMGQz1GVfwlV0qt8h0jV5Iy88KXyI42nvNzf4pe02dvCXxhSejbXcy0eCWEYSCyxbQU+Bg0ckoPd82+4Oig0Us7JgxWoS8rysXEF2ZBItpPi26c2cTPtqyvwKBgQCQ0gf6Lg4WQzwOtqOjPgnxdOo7NSm8AlZCM6FEEQ3peOSKNCTkaA1aiWe4NioxlDv29umfSrV20oJZ+fwS0qJ/HKEKKDdkE9BXgA6lWQD4SQodmeywxqh2NuNT0i4Ht539VRRrQOIb9oZb/iKDrccpQx2Lgl6Fw1abxMoOE0LmYQKBgQCm01BsBVCQa3bGSBgInQZgWxmM5tSaSxVWGnWjOnlOgYHT7znvLrJ5mIBXcKgpaixcXRe1Ai1voGx8ExCJwOPftHA4nPaPqZNqtB6NABDu8jrIL0/SYEI6wT/dX6kWNwvCo8T1eQ8Ciu/+ZnqS0VuWdBcFJ/+eZUwl8ZHq+d3Q8QKBgQDAVVWr2IH4aRtHyQigeexVg650RbcmhkjsSefRhT3tczFa85OCFL1DebmIFUNwUSeQQx/r2ArFH/jrs+EB+1i97nBzhTuCivE9uH0SOJKpBhUZzjpYsxEFq35KJEGXoZ4g0jZW/yuNfHB9XFfH2bwQxjK+4lUKuaJK8HgP/QcmdQ==";
    public static String PAY_RSA_PRIVATE = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCkqFML+cLnLbvrnNZ0pKkjRahOUoJJ6AjQkNhaKvvTjy/fxLiAeNxn/2IdgKHR8mpU0yYYPcsRZyDdn80CtAkP+mAw3778pf7dQxFmGA8iOUBw8vkezSzzeXgR7gnji8iqgiRoHYg7zMkgJD+Ru4qzk0ClMdYU2xbRloV+NzHYeUJNmJekLOhTBekt6/L2MZdoQ3AahXrvtJf2Dz9qq3Aj29eFaeDpRscJ37kkhTRJvmMg1HdLvr6P+QUNdb4pEJA8hwLWQhYbGkyKW0ZEXyRMzeaKF1mC23geewNhYOZg+KnMZhuuo53TsFNu0+C6zsAO+nYC3bXm2srrdkHpvFupAgMBAAECggEAG1H6hZApcKY7+foJ80ym671REb3K9GxVmhWOcFeVdSLa9Kv1WQu0tmS/aNnA/87TKcPnHDqUiQytfVhYccxhfI80iqd1TwJT6W6JYoE3cZxCPvtxrlSo0rUi4Qa4CVNWNkRlugi8Y/+0l2qsSYfumaEjJsXAGbHIdXoeKDUMRjiDsBvCZmqN9SQe6ivPp8uySV5soctQSrd9WU+kOPmJFGxgb15pfSbYgiX6tQeHBc2QT3m0CnZ0S+C1fNonfUUVu9DiuQyDH5TtkOOsvhavNYxFDWtPWwGv3tpL4ELlH6emvn/TvR+EQz3x5A+jCRYVRIv6HeaNJQpkNiKchgWqoQKBgQDrD+KqXfvOjZ617MCIh/fmkVU5LseC5QU130SdoK0ZFLQnDKgLsYxxYJI3i46/GL+WU8s/uRbNuYZDmyKimpzbTu5cfbfHWCm71tyB4gnZ/NqWISAJIiyW43v0xnUTFcIZQ6fRZ5vKmbb41o0NGse9p+lNCO/GcKWHpfXV2mMJnQKBgQCzUwGIdiYS83NAqrdzMpWNH80RG0yKJSbh/+KP4d8HBBpYGXwUgomoLXVR4HqfoWuEH+eoMh7b7Jn+AgktLgJBgIiIuydg4wziHXQuhNAOjmWrPnCiHAJLHIdNo3jz9SvF1KFr67QfcFoiL+abS2/P0Zcx4NFIgjnA4Z2NVYAyfQKBgQDRY24rCttC7L6DGimLtWrrlWyQKo6ImA/jJEaQD1ACdoHgAxMyj28mk7rMBeIbciU/+Nalpe+dRHVIhcn9hLLTXOVRuJ9b0LokXEpC3KKf7vCcKVfLKwkDRBLoQVyKqqgjLzQvghayC+mEkkJFeSSSWh+lgp9sam3ZfsmVPRtZtQKBgARDVuf9lw4gR38kD9RnQXLnbKKZeYpXM8Nvp90vy3OJP28UvARozgj3e7CEm6Wr2rh7YbB38I/d4hNNzRYL3/XarmRBvr/o5eeCN77bXW7bJ8OYamkQLWXHude4qSlzjKTZVzUPl2qf6ySg6uSKOJBCNUv0QkVtAx54vpwbij6pAoGAaHtiED7pDqQubIr+MVovNJXqmYryokEfTd3CbLek0Rc2XnWWzPYvALBNkrO/0pCJprFP4u/B7pjt0eUqjwHd1m4Oap4vVROF+BGUAFlwLaz3iQPKAdWxy+ZduwoGZUjVoTNS2D8bQVH+yDtCoeYymW/2yF+S6c+++dNtr/3CcLM=";
    public static String PAY_RSA_PUBLIC =  "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApKhTC/nC5y2765zWdKSpI0WoTlKCSegI0JDYWir7048v38S4gHjcZ/9iHYCh0fJqVNMmGD3LEWcg3Z/NArQJD/pgMN++/KX+3UMRZhgPIjlAcPL5Hs0s83l4Ee4J44vIqoIkaB2IO8zJICQ/kbuKs5NApTHWFNsW0ZaFfjcx2HlCTZiXpCzoUwXpLevy9jGXaENwGoV677SX9g8/aqtwI9vXhWng6UbHCd+5JIU0Sb5jINR3S76+j/kFDXW+KRCQPIcC1kIWGxpMiltGRF8kTM3mihdZgtt4HnsDYWDmYPipzGYbrqOd07BTbtPgus7ADvp2At215trK63ZB6bxbqQIDAQAB";
    public static String LOGIN_RSA_PUBLIC ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApE3+Z/kmUFSNv+BxsPcXsEexXgo1zFO+sN4mHmTa3o9fIgn3PqqYK1XeD7cePbrajTC+pXxnE3j5K8u6F7UItKFCG9QNqV4pF1a1gu6i9FHpMwvOvBpotQ14hsVshiumdV+8mTd2KFjeKUmiyQ4bpg3p+jq6J85q3vLGflhw2LLEkKlz4jN9ipxpV0f4a4evBdScfK2h0uAuavfC2qsxj1h43nc8BWIQjdykZNgJI94Aev0hAL5HitanQetK2G5UTXniYNN2FxnS8/w4KMxBcyNOrhMC133Jk6CaEqwo0MiGYkg3UIT3622Rpf6a944p05aHeyxQDDCXH7M9J39JbwIDAQAB";
    public static String APP_ID = "100090525";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		convertStrToArray(strAppSecret,",");
		HMSConnect();
		checkUpdate();
		Hwlogin(1);
		E2WApp.LogLocal("HMSConnect checkUpdate");
		PAY_ID=strAppId;
		AnalysisID(strAppSecret);
	}
    public static String[] convertStrToArray(String str,String symbol){   
        String[] strArray = null;   
        strArray = str.split(symbol); //拆分字符为symbol 可以是 "," ,然后把结果交给数组strArray 
        return strArray;
    }

    public void AnalysisID(String IDString)
    {
    	try
    	{
    	String[] strArray=null;    	 
    	strArray = convertStrToArray(IDString,",");
   	
    	BUO_SECRET=strArray[0].toString();
    	PAY_RSA_PRIVATE=strArray[1].toString();
    	PAY_RSA_PUBLIC=strArray[2].toString();
    	LOGIN_RSA_PUBLIC=strArray[3].toString();
    	APP_ID=strArray[5].toString();	 	
    	}
    	catch(Exception E)
    	{
    		E2WApp.LogLocal("[AnalysisID]Error="+E);
    	}
    }
	@Override
	public void ApplicationInit(Application app)
	{
		HMSAgent.init(SdkApplication.Acontext);	
		E2WApp.LogLocal("[InAppHW]->ApplicationInit="+app);
	}
	private void HMSConnect()
	{
    	HMSAgent.connect(mContext, new ConnectHandler() {
    	    @Override
    	    public void onConnect(int rst) {
    	        Log.i("zyq", "HMS connect end:" + rst);
    	    }
    	});  
	}
		/**
	 * 检测游戏更新 
	 */
	private void checkUpdate() 
	{
		HMSAgent.checkUpdate(mContext);
	}
	
	
	//账号登陆根据具体情况在调用完 HMSConnect 和checkUpdate 后调用。
	
	/**
	 * 帐号登录 Login  参数 forceLogin 1是强制登陆，0是非强制登陆
	 */
	public static void Hwlogin(int forceLogin) {

	    HMSAgent.Game.login(new LoginHandler(){
	        @Override
	        public void onResult(int retCode, GameUserData userData) {
	            if (retCode == HMSAgent.AgentResultCode.HMSAGENT_SUCCESS && userData != null) {
	            	Log.i("zyq", "game login: onResult: retCode=" + retCode + "  user=" + userData.getDisplayName() + "|" + userData.getPlayerId() 
	            + "|" + userData.getIsAuth() + "|" + userData.getPlayerLevel());
	                // 当登录成功时，此方法会回调2次，
	                // 第1次：只回调了playerid；特点：速度快；在要求快速登录，并且对安全要求不高时可以用此playerid登录
	                // 第2次：回调了所有信息，userData.getIsAuth()为1；此时需要对登录结果进行验签
	                if (userData.getIsAuth() == 1) {
	                    // 如果需要对登录结果进行验签，请发送请求到开发者服务器进行（安全起见，私钥要放在服务端保存）。
	                    // 下面工具方法仅为了展示验签请求的逻辑，实际实现应该放在开发者服务端。
	                    GameLoginSignUtil.checkLoginSign(APP_ID, PAY_ID, BUO_SECRET, LOGIN_RSA_PUBLIC, userData, new ICheckLoginSignHandler() 
	                    {
	                        @Override
	                        public void onCheckResult(String code, String resultDesc, boolean isCheckSuccess) 
	                        {
	                        	Log.i("zyq", "game login check sign: onResult: retCode=" + code + "  resultDesc=" + resultDesc + "  isCheckSuccess=" + isCheckSuccess);
									//登陆成功
	                        	islogin=true;
	                        }
	                    });
	                }
	            } else {
	            	Log.i("zyq", "zyq-----------errorCode=" + retCode);
	            }
	        }
	        
	        @Override
	        public void onChange() {
	            // 此处帐号登录发生变化，需要重新登录
	        	Log.i("zyq", "game login: login changed!");
	        	Hwlogin(1);
	        }
	    }, forceLogin);
	}
	private String createGameSign(String data) {

		String str = data;
		try {
			String result = RSAUtil.sha256WithRsa(str.getBytes("UTF-8"), BUO_SECRET);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		
		UnityPlayer.currentActivity.runOnUiThread(new Runnable()
        {
            public void run()
            {
            	E2WApp.LogLocal("["+Channelname+"] Unity Pay");
            	purchaseProduct();
        }
        });
		
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
		HuaWeipay("");
	}
	public void HuaWeipay(final String identifier)
	{
	        
			if(islogin==false)//支付前如果没有登陆先调登陆
			{
				Hwlogin(1);
			}
			else
			{				
				PayReq payReq = createPayReq(identifier);				
				HMSAgent.Pay.pay(payReq, new PayHandler() {
				    @Override
				    public void onResult(int retCode, PayResultInfo payInfo) 
				    {
				        if (retCode == HMSAgent.AgentResultCode.HMSAGENT_SUCCESS && payInfo != null) 
				        {
				            boolean checkRst = PaySignUtil.checkSign(payInfo, PAY_RSA_PUBLIC);
				            Log.i("zyq","game pay: onResult: pay success and checksign=" + checkRst);
				            if (checkRst) 
				            {
				                // 支付成功并且验签成功，发放商品
				            	onPurchaseSuccess(Channelname);
				            } else 
				            {
				                // 签名失败，需要查询订单状态：对于没有服务器的单机应用，调用查询订单接口查询；其他应用到开发者服务器查询订单状态。
				            	onPurchaseFailed(retCode+"");
				            }
				        } 
				        else if (retCode == HMSAgent.AgentResultCode.ON_ACTIVITY_RESULT_ERROR
				                || retCode == PayStatusCodes.PAY_STATE_TIME_OUT
				                || retCode == PayStatusCodes.PAY_STATE_NET_ERROR) {
				            // 需要查询订单状态：对于没有服务器的单机应用，调用查询订单接口查询；其他应用到开发者服务器查询订单状态。
				        	onPurchaseFailed(retCode+"");
				        }
				        else 
				        {
				        	Log.i("zyq","game pay: onResult: pay fail=" + retCode);
				            // 其他错误码意义参照支付api参考	
				        	//支付失败
				        	onPurchaseFailed(retCode+"");
				        }
				    }
				});  				
			}
	}
	
	//
	private PayReq createPayReq(String identifier) 
	{
	    PayReq payReq = new PayReq();

	    /**
	     * 生成requestId
	     */
	    DateFormat format = new java.text.SimpleDateFormat("yyyyMMddhhmmssSSS");
	    int random= new SecureRandom().nextInt() % 100000;
	    random = random < 0 ? -random : random;
	    String requestId = format.format(new Date());
	    requestId = String.format("%s%05d", requestId, random);

	    /**
	     * 生成总金额
	     */
	    String price = String.valueOf((int) mProductPrice);
	    String amount = price+".00";

	    //商品名称
	    payReq.productName = mProductDescription;
	    //商品描述
	    payReq.productDesc = mProductDescription;
	    // 商户ID，来源于开发者联盟的“支付ID”
	    payReq.merchantId = PAY_ID;
	    // 应用ID，来源于开发者联盟
	    payReq.applicationID = APP_ID;
	    // 支付金额
	    payReq.amount = amount;
	    // 商户订单号：开发者在支付前生成，用来唯一标识一次支付请求
	    payReq.requestId = requestId;
	    // 国家码
	    payReq.country = "CN";
	    //币种
	    payReq.currency = "CNY";
	    // 渠道号
	    payReq.sdkChannel = 1;
	    // 回调接口版本号
	    payReq.urlVer = "2";
	    // 商户名称，必填，不参与签名。开发者注册的公司名称
	    payReq.merchantName = "东品西尚网络科技(北京)有限公司";
	    //分类，必填，不参与签名。该字段会影响风控策略
	    // X4：主题,X5：应用商店,  X6：游戏,X7：天际通,X8：云空间,X9：电子书,X10：华为学习,X11：音乐,X12 视频,
	    // X31 话费充值,X32 机票/酒店,X33 电影票,X34 团购,X35 手机预购,X36 公共缴费,X39 流量充值
	    payReq.serviceCatalog = "X6";
	    //商户保留信息，选填不参与签名，支付成功后会华为支付平台会原样 回调CP服务端
	    payReq.extReserved = E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID;

	    //对单机应用可以直接调用此方法对请求信息签名，非单机应用一定要在服务器端储存签名私钥，并在服务器端进行签名操作。
	    //下面调用的工具方法，供实现参考
	    payReq.sign = PaySignUtil.calculateSignString(payReq, PAY_RSA_PRIVATE);

	    return payReq;
	}  
	protected boolean checkSign(String data, String gameAuthSign) {

		try {
			return RSAUtil.verify(data.getBytes("UTF-8"),LOGIN_RSA_PUBLIC, gameAuthSign);
		} catch (Exception e) {
			return false;
		}
	}
	public static String getSignData(Map<String, String> params)
    {
      StringBuffer content = new StringBuffer();
      
      List keys = new ArrayList(params.keySet());
      Collections.sort(keys);
      for (int i = 0; i < keys.size(); i++)
      {
        String key = (String)keys.get(i);
        if (!"sign".equals(key))
        {
          String value = (String)params.get(key);
          if (value != null) {
            content.append((i == 0 ? "" : "&") + key + "=" + value);
          }
        }
      }
      return content.toString();
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
					onPurchaseFailed(Channelname);
					dialog.dismiss();
					
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public void ExitGame()
	{
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		mBaseInApp.ExitGame();
	}
	
	
//end	
	
}

