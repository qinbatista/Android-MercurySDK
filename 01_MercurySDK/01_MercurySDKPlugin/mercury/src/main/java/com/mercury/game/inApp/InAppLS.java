package com.east2west.game.inApp;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.LetvUser;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.le.accountoauth.utils.LeUserInfo;
import com.le.legamesdk.LeGameSDK;
import com.le.legamesdk.LeGameSDK.ExitCallback;
import com.le.legamesdk.LeGameSDK.LoginCallback;
import com.le.legamesdk.LeGameSDK.PayCallback;
import com.le.legamesdk.utils.RandomUtil;
import com.letv.lepaysdk.smart.LePayInfo;
//endpublic class InAppLS extends InAppBase {
//comment	private boolean isPay = false;
	private static String letv_uid = null;
	private String access_token = null;
	private InAppBase mBaseInApp = null;
	private LeGameSDK letvGameSDK;
	private LetvUser letvUser = null;
	private String Channelname="InAppLS";
	
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		LeGameSDK.init(context); 
		letvGameSDK = LeGameSDK.getInstance();	
		letvGameSDK.doLogin(context , loginCallback , false);
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		letvGameSDK.onCreate(context, new LeGameSDK.ActionCallBack() { 
			@Override 
			public void onExitApplication() { 
			// 在此回调中，暂时不需要处理逻辑 
			} 
			}); 
	}
	private LoginCallback loginCallback = new LoginCallback() {
		@Override
		public void onLoginSuccess(LeUserInfo userInfo) {
			E2WApp.LogLocal("["+Channelname+"]===onLoginSuccess is called===");
			if (userInfo != null) {

				letvUser = new LetvUser();

				// 账号授权凭证access_token,
				// 游戏需使用此凭证前往https://sso.le.com/oauthopen/userbasic进行登录状态校验，并且获取letvid,nickname,avatar等用户信息
				letvUser.setAccess_token(userInfo.getAccessToken());
				access_token=userInfo.getAccessToken();
				// 乐视用户的平台唯一标识,不建议使用此信息，请使用access_token前往乐视账号服务端获取letvId等；
				letvUser.setLetvId(userInfo.getUserId());
				letv_uid=userInfo.getUserId();

				// 乐视用户昵称，不建议使用此信息，请使用access_token前往乐视账号服务端获取letvId等；
				letvUser.setNick_name(userInfo.getUserName());

				E2WApp.LogLocal("["+Channelname+"]登录成功\n access_token:" + letvUser.getAccess_token());

				// 此处仅为方便展示，所以使用客户端数据，请实际使用时，使用通过服务端获取的用户信息；
				E2WApp.LogLocal("["+Channelname+"]登录成功\n" + "AccessToken：" + letvUser.getAccess_token()
								+ "\nletvId:" + letvUser.getLetvId()
								+ "\nNickName:" + letvUser.getNick_name());
			} else {
				E2WApp.LogLocal("["+Channelname+"]===登录失败，UserInfo为null===");
				E2WApp.LogLocal("登录失败，UserInfo为null，请尝试重新登录。");
			}
		}

		@Override
		public void onLoginFailure(int errorCode, String errorMsg) {
			E2WApp.LogLocal("["+Channelname+"]===onLoginFailure is called, error_code:" + errorCode
					+ ", error_message:" + errorMsg);
			E2WApp.LogLocal("["+Channelname+"]登录失败! \n异常状态码:" + errorCode
					+ "\n异常状态信息:" + errorMsg);
		}

		@Override
		public void onLoginCancel() {
			E2WApp.LogLocal("["+Channelname+"]===onLoginCancel is called===");
			E2WApp.LogLocal("["+Channelname+"]登录取消");
		}
	};
		
	public void displayToast(Context context, String msg) {
		if (msg != null && msg.length() > 0) {
			Toast.makeText(context, msg, Toast.LENGTH_SHORT).show();
		}
	}
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
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
		doPay();
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("乐视支付", new OnClickListener() {
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
	
	@Override
	public void onPause()
	{	
		letvGameSDK.onPause(mContext); 
	}
	
	@Override
	public void onResume()
	{
		letvGameSDK.onResume(mContext); 
	}
	
	@Override
	public void onDestroy()
	{
		letvGameSDK.onDestory(mContext); 
	}



	@Override
	public void ExitGame()
	{

		LeGameSDK.init((Activity) E2WApp.mContext); 
		letvGameSDK = LeGameSDK.getInstance();	
		AlertDialog.Builder builder = new Builder((Activity) E2WApp.mContext);
		builder.setMessage("确认退出吗?");
		builder.setTitle("提示");
		builder.setPositiveButton("确认", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				
				letvGameSDK.onExit((Activity) E2WApp.mContext, exitCallback);
				
				
			}
		});
		builder.setNegativeButton("切换账号", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				letvGameSDK.doLogin((Activity) E2WApp.mContext, loginCallback , true); 
			}
		});
		builder.create().show();
		
		
	}
	private ExitCallback exitCallback = new ExitCallback() { 
		 
		  @Override 
		  public void onSdkExitConfirmed() { 
			  E2WApp.LogLocal("===onSdkExitConfirmed is called==="); 
		 
		 
		   // 玩家确认退出游戏;、 
		   // 在此处，游戏需处理游戏退出的逻辑，比如玩家游戏进度的处理，游戏资源的回收等操作； 
			  E2WApp.LogLocal("确认退出游戏"); 
		   letvUser = null; 
		   
		   mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		   mBaseInApp.ExitGame();
				
		  } 
		 
		  @Override 
		  public void onSdkExitCanceled() { 
			  E2WApp.LogLocal("===onSdkExitCanceled is called==="); 
		   // 玩家取消退出游戏; 
		   E2WApp.LogLocal("取消退出游戏"); 
		  } 
		 };
	private void doPay() {
		E2WApp.LogLocal("==doPay is called==letv_uid="+letv_uid);
		displayToast(E2WApp.mContext, "发起支付");

		LePayInfo payInfo = new LePayInfo();
		payInfo.setLetv_user_access_token(access_token);
		payInfo.setLetv_user_id(letv_uid);// 乐视集团用户id
		payInfo.setNotify_url("http://101.200.214.15/pay/ls/Machinarium/main.php");// 支付结果回调地址
		payInfo.setCooperator_order_no(RandomUtil.getRandom());// CP自定义订单号
		payInfo.setPrice(mProductPrice+"");// 产品价格
		payInfo.setProduct_name(mProductDescription);// 商品名称
		payInfo.setProduct_desc(mProductDescription);// 商品描述
		payInfo.setPay_expire("21600");// 支付结束期限
		payInfo.setProduct_id(mProductId);// 商品id
		payInfo.setCurrency("RMB");// 货币种类
		payInfo.setExtro_info(E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID);// cp自定义参数

		letvGameSDK.doPay(mContext, payInfo, payCallback);
		;
	}
	private PayCallback payCallback = new PayCallback() {

		@Override
		public void onPayResult(String status, String errorMessage) {
			E2WApp.LogLocal("==onPayResult is called==");

			Toast.makeText(E2WApp.mContext, "Status:" + status + ", message" + errorMessage, Toast.LENGTH_LONG)
					.show();

			if (status.equals("SUCCESS")) {
				displayToast(E2WApp.mContext, "支付成功，订单信息如下：\n" + errorMessage);
				onPurchaseSuccess(Channelname);
			} else if (status.equals("FAILT")) {
				displayToast(E2WApp.mContext, "支付失败，失败原因>>>" + errorMessage);
				onPurchaseFailed(Channelname);
			} else if (status.equals("PAYED")) {
				displayToast(E2WApp.mContext, "已经支付，订单信息如下：\n" + errorMessage);
			} else if (status.equals("WAITTING")) {
				displayToast(E2WApp.mContext, "支付等待中，具体信息如下>>>" + errorMessage);
			} else if (status.equals("NONETWORK")) {
				displayToast(E2WApp.mContext, "无法支付，请检查网络>>>" + errorMessage);
				onPurchaseFailed(Channelname);
			} else if (status.equals("NONE")) {
				displayToast(E2WApp.mContext, "支付失败，原因未知：\n" + errorMessage);
				onPurchaseFailed(Channelname);
			} else if (status.equals("CANCEL")) {
				displayToast(E2WApp.mContext, "取消支付，具体信息>>>" + errorMessage);
				onPurchaseFailed(Channelname);
			} else if (status.equals("COINLOCKUSER")) {
				displayToast(E2WApp.mContext, "用户游戏币支付受限>>>" + errorMessage);
				onPurchaseFailed(Channelname);
			} else {
				displayToast(E2WApp.mContext, "出现未知情况");
				onPurchaseFailed(Channelname);
			}
		}
	};
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
	
	public void swtichuser() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("ls_swtichuser");
		letvGameSDK.doLogin(mContext , loginCallback , true); 
	}
//end}
