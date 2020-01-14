package com.east2west.game.inApp;
import java.util.HashMap;
//commentimport com.downjoy.Downjoy;
import com.downjoy.OnPayResultListener;
import com.downjoy.data.to.PayTo;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.InAppBase;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.widget.Toast;

//endpublic class InAppDL extends InAppBase {
//comment	private InAppBase mBaseInApp = null;
	private String cpid;
	private String cpkey;
	private String Channelname="InAppDL";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,APPBaseInterface app)
	{		
		super.init(appContext, context, strAppId, strAppKey,app);	
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		String[] strArray=null;
		strArray = convertStrToArray(strAppKey,",");
		if(strArray[0]!=null&&strAppKey.length()>=1)
		{
			cpid=strArray[0];
			E2WApp.LogLocal("["+Channelname+"] strAppSecret->cpid="+cpid);
		}
		if(strArray[1]!=null&&strAppKey.length()>=2)
		{
			cpkey=strArray[1];
			E2WApp.LogLocal("["+Channelname+"] strAppSecret->cpkey="+cpkey);
		}
		Downjoy.init((Application) appContext, strAppId, cpid, cpkey);
	}
    public static String[] convertStrToArray(String str,String symbol){   
        String[] strArray = null;   
        strArray = str.split(symbol); //拆分字符为symbol 可以是 "," ,然后把结果交给数组strArray 
        return strArray;
    }
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
	
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
		if (mBaseInApp != null) {
			mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
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
			builder.setPositiveButton("当乐支付", new OnClickListener() {
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

	private void doPay() {
		PayTo payTo = new PayTo();
		// 自己的订单号,可以不传
		payTo.setTransNo(System.currentTimeMillis() + "");
		// 当乐计费点
		Log.e("IAP","Const.CarriersID="+QinConst.ChannelPid);
		payTo.setDcnPayCode(QinConst.ChannelPid);
		Downjoy.getInstance().pay(mContext, payTo, resultListener);
	}
	OnPayResultListener resultListener = new OnPayResultListener() {

		@Override
		public void paySuccess(PayTo payTo) {
			Toast.makeText(mContext, "购买成功", Toast.LENGTH_SHORT).show();
			onPurchaseSuccess(Channelname);
		}

		@Override
		public void payFailed(PayTo payTo, String errorHint) {
			if (errorHint == null) {
				errorHint = "购买失败";
				onPurchaseFailed(Channelname+errorHint);
			}
			Toast.makeText(mContext, errorHint, Toast.LENGTH_SHORT).show();
			onPurchaseFailed(Channelname+errorHint);
		}

		@Override
		public void onPaySms(Activity activity, PayTo payTo, String smsPayCode, int operatorCode) {
			// 短信支付预留接口
			CarriersPay();
		}

	};
	public void swtichuser() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("ls_swtichuser");
	}
//end}
