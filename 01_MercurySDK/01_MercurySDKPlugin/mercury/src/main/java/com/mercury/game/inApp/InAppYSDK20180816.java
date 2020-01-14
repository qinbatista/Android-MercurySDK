package com.east2west.game.inApp;
//commentimport com.east2west.game.inApp.InAppBase;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.BaseRet;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.bugly.BuglyListener;
import com.tencent.ysdk.module.pay.PayItem;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.PersonInfo;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.Toast;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.WakeupRet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
//endpublic  class InAppYSDK20180816 extends InAppBase implements UserListener, BuglyListener,PayListener {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppYSDK20180816";
	public BroadcastReceiver mReceiver;  
	public static ProgressDialog mAutoLoginWaitingDlg;
	public static ProgressDialog mProgressDialog;
	protected static int platform = ePlatform.None.val(); 
	public static InAppBase mainActivity;
	
	private String YybAppKey;
	
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		YybAppKey = strAppId;
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();

	
        YSDKApi.onCreate(context);
        YSDKApi.setUserListener(this);
        YSDKApi.setBuglyListener(this);
        //E2WApp.LogLocal("["+Channelname+"] onResume mContext="+context);
		//YSDKApi.onResume(context);

	}
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
	}

	public void letUserLogout() {
		onLoginFailed("failed");
		YSDKApi.logout();
	}

    public void showToastTips(final String tips) {

			E2WApp.LogLocal("["+Channelname+"]->showToastTips="+tips);
			Toast.makeText(E2WApp.mContext,tips,Toast.LENGTH_LONG).show();
    }

    // TODO GAME 在异账号时，模拟游戏弹框提示用户选择登陆账号
    public void showDiffLogin() {

    }
    @Override
    public void TencentLogin(int kind)
    {
    	super.TencentLogin(kind);
    	E2WApp.LogLocal("["+Channelname+"]->TencentLogin 0:ePlatform.Guest, 1:ePlatform.QQ, 2:ePlatform.WX, your kind = "+kind);
    	if(kind == 0)
    		YSDKApi.login(ePlatform.Guest);
    	else if (kind == 1)
    		YSDKApi.login(ePlatform.QQ);
    	else if (kind == 2)
    		YSDKApi.login(ePlatform.WX);
    }
    public void letUserLogin() {
		stopWaiting();
        UserLoginRet ret = new UserLoginRet();
        YSDKApi.getLoginRecord(ret);
        if (ret.ret != BaseRet.RET_SUCC) {
            showToastTips( "登陆失败!");
            letUserLogout();
            return;
        }
        if (ret.platform == ePlatform.PLATFORM_ID_QQ) {
			showToastTips( "QQ登陆成功！");
			onLoginSuccess("QQ");

        } else if (ret.platform == ePlatform.PLATFORM_ID_WX) {
			showToastTips( "微信登陆成功！");
			onLoginSuccess("WECHAT");

        }else if (ret.platform == ePlatform.PLATFORM_ID_GUEST) {
			showToastTips( "游客登陆成功！");
			onLoginSuccess("GUEST");
        }

	}

    // 获取当前登录平台
    public ePlatform getPlatform() {
        UserLoginRet ret = new UserLoginRet();
        YSDKApi.getLoginRecord(ret);
        if (ret.flag == eFlag.Succ) {
            return ePlatform.getEnum(ret.platform);
        }
        return ePlatform.None;
    }


   void startWaiting() {

        mAutoLoginWaitingDlg = new ProgressDialog(mContext);
        stopWaiting();
        mAutoLoginWaitingDlg.setTitle("自动登录中...");
        mAutoLoginWaitingDlg.show();
    }


    @Override
    public void stopWaiting() {

        if (mAutoLoginWaitingDlg != null && mAutoLoginWaitingDlg.isShowing()) {
            mAutoLoginWaitingDlg.dismiss();
        }
    }


    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        if (keyCode == KeyEvent.KEYCODE_BACK )
        {
            // 创建退出对话框
            AlertDialog isExit = new AlertDialog.Builder(mContext).create();
            // 设置对话框标题
            isExit.setTitle("系统提示");
            // 设置对话框消息
            isExit.setMessage("确定要退出吗");
            // 添加选择按钮并注册监听
            isExit.setButton("确定", listener);
            isExit.setButton2("取消", listener);
            // 显示对话框
            isExit.show();

        }

        return false;

    }
    /**监听对话框里面的button点击事件*/
    DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener()
    {
        public void onClick(DialogInterface dialog, int which)
        {
            switch (which)
            {
            case AlertDialog.BUTTON_POSITIVE:// "确认"按钮退出程序
            	letUserLogout();
            	mContext.finish();
                break;
            case AlertDialog.BUTTON_NEGATIVE:// "取消"第二个按钮取消对话框
                break;
            default:
                break;
            }
        }
    };


	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
		E2WApp.LogLocal("["+Channelname+"] purchase");
	}
	@Override
	public void onPause()
	{
		E2WApp.LogLocal("["+Channelname+"] onPause");
		YSDKApi.onPause(mContext);

	}

	@Override
	public void onResume()
	{
		E2WApp.LogLocal("["+Channelname+"] onResume");
		YSDKApi.onResume(mContext);
	}
	@Override
	public void onDestroy()
	{
		E2WApp.LogLocal("["+Channelname+"] onDestroy");
		YSDKApi.onDestroy(mContext);
	}
	@Override
	public void onStop()
	{
		E2WApp.LogLocal("["+Channelname+"] onStop");
		YSDKApi.onStop(mContext);
	}
	@Override
	public void onStart()
	{
		E2WApp.LogLocal("["+Channelname+"] onStart");
		YSDKApi.onRestart(mContext);
	}
	@Override
	public void onRestart()
	{
		E2WApp.LogLocal("["+Channelname+"] onRestart");
		YSDKApi.onRestart(mContext);

	}
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data)
	{
		E2WApp.LogLocal("["+Channelname+"] onActivityResult(int requestCode, int resultCode, Intent data)");
		YSDKApi.onActivityResult(requestCode, resultCode, data);
	}
	@Override
	public void onNewIntent(Intent intent)
	{
		YSDKApi.handleIntent(intent);
		E2WApp.LogLocal("["+Channelname+"] onNewIntent(Intent intent) ");
	}



	@Override
	public void ExitGame()
	{
		//-----测试登陆

//        E2WApp.LogLocal("["+Channelname+"]->init:login(ePlatform.QQ)");
//        YSDKApi.login(ePlatform.QQ);
        //YSDKApi.login(ePlatform.WX);
        //YSDKApi.login(ePlatform.Guest);
        //startWaiting();
        //-----测试结束

		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		mBaseInApp.ExitGame();

	}

	public void pay() {
		E2WApp.LogLocal("["+Channelname+"]->pay:YybAppKey="+YybAppKey);
        PayItem item = new PayItem();
//        item.id = QinConst.QinPid;
//        item.name = QinConst.Qindesc;
//        item.desc =  QinConst.Qindesc;
//        item.price = (int)QinConst.Qinpricefloat*100;  // 支付金额，单位分;
//        item.num = 1;
        item.id = "007";
        item.name = mProductDescription;
        item.desc = mProductDescription;
        item.price = (int)mProductPrice*10;
        item.num = 1;
        YSDKApi.buyGoods(false, "1",item,YybAppKey,null,"","",new PayListener(){
			@Override
			public void OnPayNotify(PayRet ret) {
				// TODO Auto-generated method stub
		        if(PayRet.RET_SUCC == ret.ret){
		            //支付流程成功
		            switch (ret.payState){
		                //支付成功
		                case PayRet.PAYSTATE_PAYSUCC:
		                	showToastTips("支付成功");
		                	onPurchaseSuccess(ret.payState+"");
		                    break;
		                //取消支付
		                case PayRet.PAYSTATE_PAYCANCEL:
		                	showToastTips("用户取消支付");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                //支付结果未知
		                case PayRet.PAYSTATE_PAYUNKOWN:
		                	showToastTips("用户支付结果未知，建议查询余额");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                //支付失败
		                case PayRet.PAYSTATE_PAYERROR:
		                	showToastTips("支付异常");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		            }
		        }else{
		            switch (ret.flag){
		                case eFlag.Login_TokenInvalid:
		                	showToastTips("登录态过期，请重新登录");
		                    letUserLogout();
		                    onPurchaseFailed(ret.payState+"");
		                    break;
		                case eFlag.Pay_User_Cancle:
		                    //用户取消支付
		                	showToastTips("用户取消支付");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                case eFlag.Pay_Param_Error:
		                	showToastTips("支付失败，参数错误");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                case eFlag.Error:
		                default:
		                	showToastTips("支付异常");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		            }
		        }
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

	public void OnLoginNotify(UserLoginRet ret) {
		Log.d("IAP","[OnLoginNotify]called");
		Log.d("IAP","[OnLoginNotify]ret.getAccessToken()="+ret.getAccessToken());
		Log.d("IAP","[OnLoginNotify]ret.getPayToken()"+ret.getPayToken());
		Log.d("IAP","[OnLoginNotify]ret.flag="+ret.flag);
		Log.d("IAP","[OnLoginNotify]ret.flag="+ret.toString());
		mainActivity=E2WApp.mInAppExt;
		Log.d("IAP","[OnLoginNotify]mainActivity="+mainActivity);
		mainActivity.stopWaiting();
		switch (ret.flag) {
			case eFlag.Succ:
				mainActivity.letUserLogin();
				break;
			// 游戏逻辑，对登录失败情况分别进行处理
			case eFlag.QQ_UserCancel:
				//mainActivity.showToastTips("用户取消授权，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"用户取消授权，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.QQ_LoginFail:
				//mainActivity.showToastTips("QQ登录失败，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"QQ登录失败，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.QQ_NetworkErr:
				//mainActivity.showToastTips("QQ登录异常，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"QQ登录失败，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.QQ_NotInstall:
				//mainActivity.showToastTips("手机未安装手Q，请安装后重试");
				Toast.makeText((Activity) E2WApp.mContext,"手机未安装手Q，请安装后重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.QQ_NotSupportApi:
				//mainActivity.showToastTips("手机手Q版本太低，请升级后重试");
				Toast.makeText((Activity) E2WApp.mContext,"手机手Q版本太低，请升级后重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.WX_NotInstall:
				//mainActivity.showToastTips("手机未安装微信，请安装后重试");
				Toast.makeText((Activity) E2WApp.mContext,"手机未安装微信，请安装后重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.WX_NotSupportApi:
				//mainActivity.showToastTips("手机微信版本太低，请升级后重试");
				Toast.makeText((Activity) E2WApp.mContext,"手机微信版本太低，请升级后重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.WX_UserCancel:
				//mainActivity.showToastTips("用户取消授权，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"用户取消授权，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.WX_UserDeny:
				//mainActivity.showToastTips("用户拒绝了授权，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"用户拒绝了授权，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.WX_LoginFail:
				//mainActivity.showToastTips("微信登录失败，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"微信登录失败，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.Login_TokenInvalid:
				//mainActivity.showToastTips("您尚未登录或者之前的登录已过期，请重试");
				Toast.makeText((Activity) E2WApp.mContext,"您尚未登录或者之前的登录已过期，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			case eFlag.Login_NotRegisterRealName:
				// 显示登录界面
				//mainActivity.showToastTips("您的账号没有进行实名认证，请实名认证后重试");
				Toast.makeText((Activity) E2WApp.mContext,"QQ登录失败，请重试",Toast.LENGTH_LONG).show();
				mainActivity.letUserLogout();
				break;
			default:
				// 显示登录界面
				mainActivity.letUserLogout();
				break;
		}
	}

	public void OnWakeupNotify(WakeupRet ret) {
		Log.d("IAP","[OnWakeupNotify]called");
		Log.d("IAP","[OnWakeupNotify]cflag:" + ret.flag);
		Log.d("IAP","[OnWakeupNotify]cmsg:" + ret.msg);
		Log.d("IAP","[OnWakeupNotify]cplatform:" + ret.platform);
		platform = ret.platform;
		// TODO GAME 游戏需要在这里增加处理异账号的逻辑
		if (eFlag.Wakeup_YSDKLogining == ret.flag) {
			// 用拉起的账号登录，登录结果在OnLoginNotify()中回调
		} else if (ret.flag == eFlag.Wakeup_NeedUserSelectAccount) {
			// 异账号时，游戏需要弹出提示框让用户选择需要登录的账号
			Log.d("IAP","[OnWakeupNotify]cdiff account");
			mainActivity.showDiffLogin();
		} else if (ret.flag == eFlag.Wakeup_NeedUserLogin) {
			// 没有有效的票据，登出游戏让用户重新登录
			Log.d("IAP","[OnWakeupNotify]cneed login");
			mainActivity.letUserLogout();
		} else {
			Log.d("IAP","[OnWakeupNotify]clogout");
			mainActivity.letUserLogout();
		}
	}

	@Override
	public void OnRelationNotify(UserRelationRet relationRet) {
		String result = "";
		result = result +"flag:" + relationRet.flag + "\n";
		result = result +"msg:" + relationRet.msg + "\n";
		result = result +"platform:" + relationRet.platform + "\n";
		if (relationRet.persons != null && relationRet.persons.size()>0) {
			PersonInfo personInfo = (PersonInfo)relationRet.persons.firstElement();
			StringBuilder builder = new StringBuilder();
			builder.append("UserInfoResponse json: \n");
			builder.append("nick_name: " + personInfo.nickName + "\n");
			builder.append("open_id: " + personInfo.openId + "\n");
			builder.append("userId: " + personInfo.userId + "\n");
			builder.append("gender: " + personInfo.gender + "\n");
			builder.append("picture_small: " + personInfo.pictureSmall + "\n");
			builder.append("picture_middle: " + personInfo.pictureMiddle + "\n");
			builder.append("picture_large: " + personInfo.pictureLarge + "\n");
			builder.append("provice: " + personInfo.province + "\n");
			builder.append("city: " + personInfo.city + "\n");
			builder.append("country: " + personInfo.country + "\n");
			result = result + builder.toString();
		} else {
			result = result + "relationRet.persons is bad";
		}
		Log.d("IAP","OnRelationNotify" + result);

		// 发送结果到结果展示界面
		//mainActivity.showToastTips(result);
		Toast.makeText((Activity) E2WApp.mContext,"微信登录失败，请重试",Toast.LENGTH_LONG).show();
	}

	@Override
	public String OnCrashExtMessageNotify() {
		// 此处游戏补充crash时上报的额外信息
		Log.d("IAP",String.format(Locale.CHINA, "OnCrashExtMessageNotify called"));
		Date nowTime = new Date();
		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return "new Upload extra crashing message for bugly on " + time.format(nowTime);
	}

	@Override
	public byte[] OnCrashExtDataNotify() {
		return null;
	}

	@Override
	public void OnPayNotify(PayRet ret) {
		Log.d("IAP",ret.toString());
		Log.d("IAP","OnPayNotify");
		//E2WApp.LogLocal("[zyq]->YSDKCallback->OnPayNotify");
		if(PayRet.RET_SUCC == ret.ret){
			//支付流程成功
			switch (ret.payState){
				//支付成功
				case PayRet.PAYSTATE_PAYSUCC:
					Toast.makeText((Activity) E2WApp.mContext,
							"用户支付成功，支付金额"+ret.realSaveNum+";" +
									"使用渠道："+ret.payChannel+";" +
									"发货状态："+ret.provideState+";" +
									"业务类型："+ret.extendInfo+";建议查询余额："+ret.toString(),Toast.LENGTH_LONG).show();
					break;
				//取消支付
				case PayRet.PAYSTATE_PAYCANCEL:
					Toast.makeText((Activity) E2WApp.mContext,"用户取消支付："+ret.toString(),Toast.LENGTH_LONG).show();
					break;
				//支付结果未知
				case PayRet.PAYSTATE_PAYUNKOWN:
					Toast.makeText((Activity) E2WApp.mContext,"用户支付结果未知，建议查询余额："+ret.toString(),Toast.LENGTH_LONG).show();
					break;
				//支付失败
				case PayRet.PAYSTATE_PAYERROR:
					Toast.makeText((Activity) E2WApp.mContext,"支付异常"+ret.toString(),Toast.LENGTH_LONG).show();
					break;
			}
		}else{
			switch (ret.flag){
				case eFlag.Login_TokenInvalid:
					Toast.makeText((Activity) E2WApp.mContext,"登录态过期，请重新登录："+ret.toString(),Toast.LENGTH_LONG).show();
					mainActivity.letUserLogout();
					break;
				case eFlag.Pay_User_Cancle:
					//用户取消支付
					Toast.makeText((Activity) E2WApp.mContext,"用户取消支付："+ret.toString(),Toast.LENGTH_LONG).show();
					break;
				case eFlag.Pay_Param_Error:
					Toast.makeText((Activity) E2WApp.mContext,"支付失败，参数错误"+ret.toString(),Toast.LENGTH_LONG).show();
					break;
				case eFlag.Error:
				default:
					//mainActivity.showToastTips("支付异常"+ret.toString());
					Toast.makeText((Activity) E2WApp.mContext,"支付异常"+ret.toString(),Toast.LENGTH_LONG).show();
					break;
			}
		}
	}

//end}
