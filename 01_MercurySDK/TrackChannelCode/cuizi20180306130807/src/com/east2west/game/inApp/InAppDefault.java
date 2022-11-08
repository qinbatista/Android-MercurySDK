package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import com.smartisan.gamesdk.SmartisanApi;
import com.smartisan.gamesdk.bean.SmartisanPlayerData;
import com.smartisan.gamesdk.login.listener.SmartisanLoginListener;
import com.smartisan.gamesdk.pay.listener.SmartisanPayListener;

//end


public class InAppDefault extends InAppBase {
	
	//comment
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
	private String appid="";
	private String  appsecret="";
	private static String openID="";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		SmartisanApi.getInstance().init(mContext);
		appid=strAppId;
		appsecret=strAppSecret;
		doLogin();
		doSetPlayerData(openID);
		
	}
    private void doLogin() {
        SmartisanApi.getInstance().login(mContext, new SmartisanLoginListener() {
            @Override
            public void onSuccess(String code) {
                Log.d("IAP", "login success: " + code);
                List<NameValuePair> list = new ArrayList<NameValuePair>();
			    list.add(new BasicNameValuePair("client_id",appid));	
			    list.add(new BasicNameValuePair("client_secret",appsecret));
			    list.add(new BasicNameValuePair("grant_type","authorization_code"));
			    list.add(new BasicNameValuePair("code",code));
                String feedback =HttpUrlpost("https://api.smartisan.com/oauth/token",list);			
				JSONTokener jsonParser = new JSONTokener(feedback);
				JSONObject Parameter;
				try 
				{
					Parameter = (JSONObject) jsonParser.nextValue();
					String access_token = Parameter.getString("access_token");					
					String token_type = Parameter.getString("token_type");
					String expires_in = Parameter.getString("expires_in");
					String scope = Parameter.getString("scope");
					openID = Parameter.getString("openid");
								
				} 
				catch (JSONException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
					E2WApp.LogLocal("[InAppBase]->respondCPserver: code=0");
				}
            }

            @Override
            public void onFail(String reason) {
                Log.d("IAP", "login fail: " + reason);
            }
        });
    }
	public  static String HttpUrlpost(String URL,List<NameValuePair> params)
	{		
		
		E2WApp.LogLocal("[InAppBase]-HttpUrlpost url:"+URL);
		E2WApp.LogLocal("[InAppBase]-HttpUrlpost params:"+params);
        // 第一步，创建HttpPost对象 
        HttpPost httpPost = new HttpPost(URL); 

        String result = "";
        HttpResponse httpResponse = null;     
        try { 
            HttpEntity entity = new UrlEncodedFormEntity(params);
            httpPost.setEntity(entity);
            HttpClient client = new DefaultHttpClient();
            // 请求超时
            client.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 5000);
            // 读取超时
            client.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 5000);
            // 设置httpPost请求参数 
            httpPost.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8)); 
            httpResponse = client.execute(httpPost); 

            if (httpResponse.getStatusLine().getStatusCode() == 200) { 
                // 第三步，使用getEntity方法活得返回结果 
                result = EntityUtils.toString(httpResponse.getEntity());
            } 
        } catch (ClientProtocolException e) { 

            e.printStackTrace(); 
        } catch (IOException e) { 

            e.printStackTrace(); 
        } 

		return result;
	}
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
        playerData.setTaskId(0);
        // 任务/关卡 必填，创建角色时，可以写"无"
        playerData.setTaskName("");

        // vip 等级，选填
        playerData.setVipLevel(99999);
        // 工会名称，选填
        playerData.setPartyName("天地会");

        SmartisanApi.getInstance().setPlayerData(mContext, SmartisanPlayerData.PLAYER_CREATE_ROLE, openId, playerData);
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
        SmartisanApi.getInstance().pay(mContext,
                "openId",  //openId登录后获取
                "token",   //token登录后获取
                mProductId,  //商品编号
                mProductDescription,  //商品名称
                (int)mProductPrice*100,  // 商品金额，单位：分
                E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID,  // 游戏自定义数据，支付成功后会通知给游戏服务端
                new SmartisanPayListener() {
                    @Override
                    public void onSuccess(String order) {
                    	E2WApp.LogLocal("pay success: " + order);
                        onPurchaseSuccess(Channelname+":"+order);
                    }

                    @Override
                    public void onPending(String order) {
                    	E2WApp.LogLocal("onPending");
                    	//onPurchaseFailed(Channelname+":"+order);
                    }

                    @Override
                    public void onFail(String reason) {
                    	E2WApp.LogLocal("onFail");
                    	onPurchaseFailed(Channelname+":"+reason);
                    }
                });
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
	
	//end
}
