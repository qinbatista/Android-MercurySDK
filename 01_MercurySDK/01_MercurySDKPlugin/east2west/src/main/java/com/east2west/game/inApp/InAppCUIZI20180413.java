package com.east2west.game.inApp;


//commentimport com.east2west.game.inApp.InAppBase;
import com.smartisan.gamesdk.SmartisanApi;
import com.smartisan.gamesdk.bean.SmartisanPlayerData;
import com.smartisan.gamesdk.login.listener.SmartisanLoginListener;
import com.smartisan.gamesdk.pay.listener.SmartisanPayListener;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
//endimport org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;


public class InAppCUIZI20180413 extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppCUIZI20180413";
	private String appid="";
	private String appsecret="";
	private String access_token="";
	private String feedback="";
	private String _code="";
	private static String openID="";
	private Handler handler = new Handler()
    {
		  @Override
		  public void handleMessage(Message msg)
		  {
			  Bundle data = msg.getData();
	          feedback = data.getString("feedback");
	          E2WApp.LogLocal("[InAppBase]->feedback"+feedback);
			  JSONTokener jsonParser = new JSONTokener(feedback);
				JSONObject Parameter;
				try 
				{
					Parameter = (JSONObject) jsonParser.nextValue();
					access_token = Parameter.getString("access_token");					
					String token_type = Parameter.getString("token_type");
					String expires_in = Parameter.getString("expires_in");
					String scope = Parameter.getString("scope");
					openID = Parameter.getString("openid");				
					E2WApp.LogLocal("[InAppBase]->openid"+"----1");					
					E2WApp.LogLocal("[InAppBase]->access_token"+"----2");
					doSetPlayerData(openID);					
					E2WApp.LogLocal("[InAppBase]->doSetPlayerData"+openID);
								
				} 
				catch (JSONException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
					E2WApp.LogLocal("[InAppBase]->respondCPserver: code=0");
				}
		  }
    };
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();	
		E2WApp.LogLocal("[InAppBase]->getBaseInApp2");
		SmartisanApi.getInstance().init(mContext); 		
		E2WApp.LogLocal("[InAppBase]->init2");
		doLogin();
		E2WApp.LogLocal("[InAppBase]->doLogin2");
		//Log.d("QYJ", "--------doSetPlayerData"+openID);
		appid=strAppId;
		appsecret=strAppSecret;
	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);

	}
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
	}

	
    private void doLogin() {
    	E2WApp.LogLocal("[InAppBase]->doLogin����");	  	
        SmartisanApi.getInstance().login(mContext, new SmartisanLoginListener() {
            @Override
            public void onSuccess(String code) {
            	E2WApp.LogLocal("[InAppBase]->code"+code);	
                _code = code;
                if(!TextUtils.isEmpty(code)) {
					// 需要游戏方使用 code 换取token，并通过token来获取用户信息
					//demo直接调用的Smartisan服务器接口换取accessToken，不建议CP在客户端直接调用这个接口
					//start线程保护
					mContext.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							new Thread(new Runnable() {
								@Override
								public void run() {
									feedback = sendPost("http://101.200.214.15/cdkey/index.php/smartisan/Smartisan/gettoken",
											"client_id=" + appid +
													"&client_secret=" + appsecret +
													"&grant_type=authorization_code" +
													"&code=" + _code
									);
									Message msg = new Message();
									Bundle data = new Bundle();
									data.putString("feedback", feedback);
									msg.setData(data);
									handler.sendMessage(msg);
								}
							}).start();
						}
					});
					E2WApp.LogLocal("[InAppBase]->feedback" + feedback + "1111111111");

				}
            }
            @Override
            public void onFail(String reason) {
                Log.d("IAP", "login fail: " + reason);
            }
        });
    }

	/**
	 * 向指定 URL 发送POST方法的请求
	 * @param url 发送请求的 URL
	 * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
	 * @return 所代表远程资源的响应结果
	 */
	public static String sendPost(String url, String param){
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		try {
			URL realUrl = new URL(url);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
//	            conn.setRequestProperty("accept", "*/*");
//	            conn.setRequestProperty("connection", "Keep-Alive");
//	            conn.setRequestProperty("user-agent","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			//1.获取URLConnection对象对应的输出流
			out = new PrintWriter(conn.getOutputStream());
			//2.中文有乱码的需要将PrintWriter改为如下
			//out=new OutputStreamWriter(conn.getOutputStream(),"UTF-8")
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			Log.d("IAP", "发送 POST 请求出现异常！"+e);
			e.printStackTrace();
		}
		//使用finally块来关闭输出流、输入流
		finally{
			try{
				if(out!=null){
					out.close();
				}
				if(in!=null){
					in.close();
				}
			}
			catch(IOException ex){
				ex.printStackTrace();
			}
		}
		Log.d("IAP", "post推送结果："+result);
		return result;


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

	/**
	 * 设置玩家数据
	 * @param openId
	 */
	private void doSetPlayerData(String openId) {
		SmartisanPlayerData playerData = new SmartisanPlayerData();

		// 玩家角色ID，必填
		playerData.setRoleId("10001");
		// 玩家角色名称，必填
		playerData.setRoleName("陈近南");
		// 角色等级，必填
		playerData.setRoleLevel(999);
		// 服务器id，必填
		playerData.setZoneId("51323");
		// 服务器名称，必填
		playerData.setZoneName("荆楚大地");
		// 剩余金币数量，必填，可以为0，
		playerData.setCoinNumber(0);
		// 任务/关卡ID，必填，创建角色时，可以为0
		playerData.setTaskId(101);
		// 任务/关卡 必填，创建角色时，可以写"无"
		playerData.setTaskName("红花亭");
		// vip 等级，选填
		playerData.setVipLevel(99999);
		// 工会名称，选填
		playerData.setPartyName("天地会");

		SmartisanApi.getInstance().setPlayerData(mContext, SmartisanPlayerData.PLAYER_CREATE_ROLE, openId, playerData);
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

	private void doPay() {
		int price = (int)mProductPrice*100;
		SmartisanApi.getInstance().pay(mContext,
				openID,  // openId登录后获取
				access_token,   // token登录后获取
				QinConst.CarriersID,  // 商品编号
				mProductDescription,  // 商品名称
				price,  // 商品金额，单位：分
				"http://101.200.214.15/cdkey/index.php/Callbacktest/smartisan",   // 游戏自定义数据，支付成功后会通知给游戏服务端
				new SmartisanPayListener() {
					@Override
					public void onSuccess(String order) {
						Log.d("IAP", "pay success: " + order);
						onPurchaseSuccess(Channelname);
					}

					@Override
					public void onPending(String order) {
						Log.d("IAP", "pay pending: " + order);
					}

					@Override
					public void onFail(String reason) {
						Log.d("IAP", "pay fail: " + reason);
						onPurchaseFailed(Channelname);
					}
				});
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
		doPay();
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("安智支付", new OnClickListener() {
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
	
//end}
