package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;


//commentimport com.yulong.paysdk.beens.CoolPayResult;
import com.yulong.paysdk.beens.CoolYunAccessInfo;
import com.yulong.paysdk.coolpayapi.CoolpayApi;
import com.yulong.paysdk.payinterface.IPayResult;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ActivityInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;

import com.coolcloud.uac.android.api.Coolcloud;
import com.coolcloud.uac.android.api.ErrInfo;
import com.coolcloud.uac.android.api.OnResultListener;
import com.coolcloud.uac.android.common.Constants;
import com.coolcloud.uac.android.common.Params;
import com.coolcloud.uac.android.gameassistplug.GameAssistApi;
import com.coolcloud.uac.android.gameassistplug.GameAssistConfig;
import com.yulong.paysdk.beens.CoolPayResult;
import com.yulong.paysdk.beens.CoolYunAccessInfo;
import com.yulong.paysdk.beens.PayInfo;
import com.yulong.paysdk.coolpayapi.CoolpayApi;
import com.yulong.paysdk.payinterface.IPayResult;
import com.yulong.paysdk.proxy.AccountProxy;
import com.coolcloud.uac.android.api.Coolcloud;
import com.coolcloud.uac.android.gameassistplug.GameAssistApi;
import com.coolcloud.uac.android.gameassistplug.GameAssistConfig;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import java.util.UUID;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
//endpublic class InAppKP extends InAppBase {
	
//comment	private AlertDialog.Builder builder;
	private AlertDialog alertDialog;
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppKP";
	public static String appid = "";	
	public static String payKey = "";
	private CoolpayApi api;
	private CoolYunAccessInfo accessInfo;
	private int pay_style = CoolpayApi.PAY_STYLE_ACTIVITY;
	private int pay_orientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
	

	// 酷云账号信息
	private String accessToken;
	private String expiresIn;
	private String openId;
	private String refrestoken;
	private int price;
	// 酷云账号
	private Coolcloud mCoolcloud = null;
	private GameAssistApi mGameAssistApi;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		appid=strAppId;
		payKey=strAppSecret;
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		mCoolcloud = Coolcloud.get(mContext, appid);
		GameAssistConfig mGameAssistConfig = new GameAssistConfig();
		mGameAssistConfig.setHideGift(true);
		if (mCoolcloud != null) {
			mGameAssistApi = (GameAssistApi) mCoolcloud.getGameAssistApi(mContext,
					mGameAssistConfig);
			mGameAssistApi
					.addOnSwitchingAccountListen(new GameAssistApi.SwitchingAccount() {

						@Override
						public void onSwitchingAccounts() {
							// 重要 切换账号在下边实现了
							doSwitchAccount();
						}
					});

		}
		api = CoolpayApi.createCoolpayApi(mContext, appid);
		if (null != mCoolcloud) {
			// showProcessDialog();
			final Bundle input = new Bundle();
			// 设置横屏显示
			input.putInt(Constants.KEY_SCREEN_ORIENTATION,
					pay_orientation);
			input.putString(Constants.KEY_SCOPE, "get_basic_userinfo");
			// 设置登录方式，这里采用新建账户登录
			input.putString(Constants.KEY_RESPONSE_TYPE,
					Constants.RESPONSE_TYPE_CODE);
			mCoolcloud.login(mContext, input, new Handler(),
					coolyunListenser);

		} else {
			E2WApp.LogLocal("["+Channelname+"] coolcloudApi is null");
		}
	}
	private IPayResult payResult = new IPayResult() {
		@Override
		public void onResult(CoolPayResult result) {
			if (null != result) {
				String resultStr = result.getResult();
				E2WApp.LogLocal("["+Channelname+"] resultStr:" + resultStr);
				E2WApp.LogLocal("["+Channelname+"] ResultStatus:" + result.getResultStatus());
				
				if(result.getResultStatus()==0)
				{
					onPurchaseSuccess(resultStr);	
				}
				if(result.getResultStatus()==-1)
				{
					onPurchaseFailed(resultStr);
				}
				if(result.getResultStatus()==-2)
				{
					onPurchaseFailed(resultStr);
				}
				
				try {

					if (null == alertDialog) {

						builder = new AlertDialog.Builder(mContext);
						builder.setTitle("支付结果:");
						builder.setInverseBackgroundForced(true);
						builder.setNegativeButton("确定",
								new DialogInterface.OnClickListener() {
									@Override
									public void onClick(DialogInterface dialog,
											int which) {
										dialog.dismiss();
									}
								});
						alertDialog = builder.create();
					}

					alertDialog.setMessage(resultStr);
					alertDialog.show();
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
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
		if (mGameAssistApi != null) {
			mGameAssistApi.onPause();
		}
	}
	private void doSwitchAccount() {
		Bundle mInput = new Bundle();
		// 设置屏幕横竖屏默认为竖屏
		mInput.putInt(Constants.KEY_SCREEN_ORIENTATION, pay_orientation);
		// 设置获取类型
		mInput.putString(Constants.KEY_RESPONSE_TYPE,
				Constants.RESPONSE_TYPE_CODE);
		// 设置需要权限 一般都为get_basic_userinfo这个常量
		mInput.putString(Constants.KEY_SCOPE, "get_basic_userinfo");
		mCoolcloud.loginNew(mContext, mInput, new Handler(),
				coolyunListenser);
	}
	private OnResultListener coolyunListenser = new OnResultListener() {

		@Override
		public void onResult(Bundle paramBundle) {
			// TODO Auto-generated method stub
			String code = paramBundle.getString(Params.KEY_AUTHCODE);
			E2WApp.LogLocal("["+Channelname+"] code[Login]:" + code);
			// 这里模拟CP登陆过程，仅供参考
			new LoginTask().execute(code);
		}

		@Override
		public void onError(ErrInfo arg0) {
			// TODO Auto-generated method stub
			//closeProcessDialog();
		}

		@Override
		public void onCancel() {
			// TODO Auto-generated method stub
			//closeProcessDialog();
		}
	};
	private String LoginToCPServer(final String authCode, final String appId) {
		// TODO Auto-generated method stub

		String URL_ACCESS = "http://pay-t.helongs.cn/cptestapi/login";
		String url = URL_ACCESS + "?appId=" + appId + "&authCode=" + authCode;
		E2WApp.LogLocal("["+Channelname+"] url[Login]:" + url);
		try {
			HttpGet httpget = new HttpGet(url);
			HttpClient httpclient = new DefaultHttpClient();
			HttpResponse httpresponse = httpclient.execute(httpget);
			int statuCode = httpresponse.getStatusLine().getStatusCode();
			E2WApp.LogLocal("["+Channelname+"] statuCode[Login]:" + statuCode);

			if (statuCode == HttpStatus.SC_OK) {
				String response = EntityUtils
						.toString(httpresponse.getEntity());
				E2WApp.LogLocal("["+Channelname+"] response[Login]:" + response);
				return response;
			} else {
				return null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			E2WApp.LogLocal("["+Channelname+"] e[Login]:" + e.toString());
		}
		return null;
	}

	class LoginTask extends AsyncTask<String, Integer, String> {

		@Override
		protected String doInBackground(String... params) {
			// TODO Auto-generated method stub
			return LoginToCPServer(params[0], appid);
		}

		@Override
		protected void onPostExecute(String response) {
			// TODO Auto-generated method stub

			// 将从酷云服务器获取的参数传递给支付SDK
			if (null == response) {
				//Toast.makeText(mContext, "登陆失败", Toast.LENGTH_SHORT).show();
			} else {
				// 解析JSON的方法，CP可以按照自己的登录方法自行定义解析方法
				AccountProxy ap = new AccountProxy();
				ap.parseResponse(response);

				int rtnCode = ap.getRtnCode();
				if (0 == rtnCode) {
					// 登录成功CP要保存酷云信息，之后传给支付SDK
					accessToken = ap.getAccessToken();
					expiresIn = ap.getExpiresIn();
					openId = ap.getOpenId();
					refrestoken = ap.getRefreshToken();

					Toast.makeText(mContext, "登陆成功",
							Toast.LENGTH_SHORT).show();
				} else {
					//Toast.makeText(mContext, "登陆失败",Toast.LENGTH_SHORT).show();
				}
			}

			super.onPostExecute(response);
		}

		@Override
		protected void onPreExecute() {
			// TODO Auto-generated method stub
			// showProcessDialog();
			super.onPreExecute();
		}

		@Override
		protected void onProgressUpdate(Integer... values) {
			// TODO Auto-generated method stub
			super.onProgressUpdate(values);
		}

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

		AlertDialog.Builder builder = new Builder((Activity) E2WApp.mContext);
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
		// 将获取的酷云账号信息传递给支付SDK
		accessInfo = new CoolYunAccessInfo();
		accessInfo.setAccessToken(accessToken);
		accessInfo.setExpiresIn(expiresIn);
		accessInfo.setOpenId(openId);
		accessInfo.setRefreshToken(refrestoken);
		PayInfo payInfo = new PayInfo();
		payInfo.setAppId(appid);
		payInfo.setPayKey(payKey);
		// 设置CP透传信息，如果没有可以不设置
		payInfo.setCpPrivate("This is a test private. NEW 1112");
		// 商品名称
		payInfo.setName(mProductDescription);
		// 支付价格,单位为分
		payInfo.setPrice((int)(mProductPrice*100));
		// 设置商品编号
		payInfo.setPoint(1);
		// 商品数量，目前不支持多数量支付，设置为定值1
		payInfo.setQuantity(1);
		// 如果没有订单号（不可重复），可不设置
		// payInfo.setCpOrder("8888");
		/*
		 * 如果不使用酷云账号，accessInfo 设置为null即可
		 */
		api.startPay(mContext, payInfo, accessInfo, payResult,
				pay_style, pay_orientation);
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("酷派支付", new OnClickListener() {
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
