package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.YSDKCallback;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.BaseRet;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.pay.PayItem;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.UserLoginRet;

//comment
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

//end


public class InAppDefault extends InAppBase {
	
	//comment
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
	//yyb
	public BroadcastReceiver mReceiver;  
	public static ProgressDialog mAutoLoginWaitingDlg;
	public static ProgressDialog mProgressDialog;
	protected static int platform = ePlatform.None.val();
	//endyyb
	
	private String YybAppKey;
	
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		YybAppKey = strAppId;
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();

		//yyb
        YSDKApi.onCreate(context);
        YSDKApi.setUserListener(new YSDKCallback(this));
        YSDKApi.setBuglyListener(new YSDKCallback(this));
		//endyyb

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

    // TODO GAME ??????????????????????????????????????????????????????????????????
    public void showDiffLogin() {

    }
    
    public void letUserLogin() {
		stopWaiting();
        UserLoginRet ret = new UserLoginRet();
        YSDKApi.getLoginRecord(ret);
        if (ret.ret != BaseRet.RET_SUCC) {
            showToastTips( "????????????!");
            letUserLogout();
            return;
        }
        if (ret.platform == ePlatform.PLATFORM_ID_QQ) { 
			showToastTips( "QQ???????????????");
			onLoginSuccess("QQ");

        } else if (ret.platform == ePlatform.PLATFORM_ID_WX) {
			showToastTips( "?????????????????????");
			onLoginSuccess("WECHAT");

        }else if (ret.platform == ePlatform.PLATFORM_ID_GUEST) {
			showToastTips( "?????????????????????");
			onLoginSuccess("GUEST");
        }

	}
    
    // ????????????????????????
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
        mAutoLoginWaitingDlg.setTitle("???????????????...");
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
            // ?????????????????????  
            AlertDialog isExit = new AlertDialog.Builder(mContext).create();  
            // ?????????????????????  
            isExit.setTitle("????????????");  
            // ?????????????????????  
            isExit.setMessage("??????????????????");  
            // ?????????????????????????????????  
            isExit.setButton("??????", listener);  
            isExit.setButton2("??????", listener);  
            // ???????????????  
            isExit.show();  
  
        }  
          
        return false;  
          
    }  
    /**????????????????????????button????????????*/  
    DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener()  
    {  
        public void onClick(DialogInterface dialog, int which)  
        {  
            switch (which)  
            {  
            case AlertDialog.BUTTON_POSITIVE:// "??????"??????????????????  
            	letUserLogout();
            	mContext.finish();  
                break;  
            case AlertDialog.BUTTON_NEGATIVE:// "??????"??????????????????????????????  
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
		//-----????????????
		
        E2WApp.LogLocal("["+Channelname+"]->init:login(ePlatform.QQ)");
        YSDKApi.login(ePlatform.QQ);
        //YSDKApi.login(ePlatform.WX);
        //YSDKApi.login(ePlatform.Guest);
        startWaiting();
        //-----????????????
        
		/*mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		mBaseInApp.ExitGame();*/
		
	}

	public void pay() {
		E2WApp.LogLocal("["+Channelname+"]->pay:YybAppKey="+YybAppKey);
        PayItem item = new PayItem();
//        item.id = QinConst.QinPid;
//        item.name = QinConst.Qindesc;
//        item.desc =  QinConst.Qindesc;
//        item.price = (int)QinConst.Qinpricefloat*100;  // ????????????????????????;
//        item.num = 1;
        item.id = "007";
        item.name = mProductDescription;
        item.desc = mProductDescription;
        item.price = (int)mProductPrice*10;
        item.num = 1;
        YSDKApi.buyGoods("1",item,YybAppKey,null,"","",new PayListener(){

			@Override
			public void OnPayNotify(PayRet ret) {
				// TODO Auto-generated method stub
		        if(PayRet.RET_SUCC == ret.ret){
		            //??????????????????
		            switch (ret.payState){
		                //????????????
		                case PayRet.PAYSTATE_PAYSUCC:
		                	showToastTips("????????????");
		                	onPurchaseSuccess(ret.payState+"");
		                    break;
		                //????????????
		                case PayRet.PAYSTATE_PAYCANCEL:
		                	showToastTips("??????????????????");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                //??????????????????
		                case PayRet.PAYSTATE_PAYUNKOWN:
		                	showToastTips("?????????????????????????????????????????????");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                //????????????
		                case PayRet.PAYSTATE_PAYERROR:
		                	showToastTips("????????????");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		            }
		        }else{
		            switch (ret.flag){
		                case eFlag.Login_TokenInvalid:
		                	showToastTips("?????????????????????????????????");
		                    letUserLogout();
		                    onPurchaseFailed(ret.payState+"");
		                    break;
		                case eFlag.Pay_User_Cancle:
		                    //??????????????????
		                	showToastTips("??????????????????");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                case eFlag.Pay_Param_Error:
		                	showToastTips("???????????????????????????");
		                	onPurchaseFailed(ret.payState+"");
		                    break;
		                case eFlag.Error:
		                default:
		                	showToastTips("????????????");
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
			pay();
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
