package com.east2west.game.util;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;

import com.east2west.game.E2WApp;
import com.east2west.game.inApp.InAppBase;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.bugly.BuglyListener;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.PersonInfo;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.WakeupRet;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/** 
 * TODO GAME 游戏需要根据自己的逻辑实现自己的YSDKCallback对象。 
 * YSDK通过UserListener抽象类中的方法将授权或查询结果回调给游戏。
 * 游戏根据回调结果调整UI等。只有设置回调，游戏才能收到YSDK的响应。
 * 这里是Java层回调(设置了Java层回调会优先调用Java层回调, 如果要使用C++层回调则不能设置Java层回调)
 */
public class YSDKCallback implements UserListener, BuglyListener,PayListener {
	public InAppBase mBaseInApp;
    public static InAppBase mainActivity;
    public static int platform = ePlatform.None.val();

    
    public YSDKCallback(InAppBase InApp) {
    	//mainActivity = (MainLoginActivity) activity;
    	mainActivity = InApp;
    	mainActivity=E2WApp.activityforappbase.getBaseInApp();
    	E2WApp.LogLocal("YSDKCallback->YSDKCallback");
    }
    
    public void OnLoginNotify(UserLoginRet ret) {
        Log.d("IAP","called");
        Log.d("IAP",ret.getAccessToken());
        Log.d("IAP",ret.getPayToken());
        Log.d("IAP","ret.flag" + ret.flag);
        Log.d("IAP",ret.toString());
        mainActivity=E2WApp.activityforappbase.getBaseInApp();
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
        Log.d("IAP","called");
        Log.d("IAP","flag:" + ret.flag);
        Log.d("IAP","msg:" + ret.msg);
        Log.d("IAP","platform:" + ret.platform);
        platform = ret.platform;
        // TODO GAME 游戏需要在这里增加处理异账号的逻辑
        if (eFlag.Wakeup_YSDKLogining == ret.flag) {
            // 用拉起的账号登录，登录结果在OnLoginNotify()中回调
        } else if (ret.flag == eFlag.Wakeup_NeedUserSelectAccount) {
            // 异账号时，游戏需要弹出提示框让用户选择需要登录的账号
            Log.d("IAP","diff account");
            mainActivity.showDiffLogin();
        } else if (ret.flag == eFlag.Wakeup_NeedUserLogin) {
            // 没有有效的票据，登出游戏让用户重新登录
            Log.d("IAP","need login");
            mainActivity.letUserLogout();
        } else {
            Log.d("IAP","logout");
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
}

