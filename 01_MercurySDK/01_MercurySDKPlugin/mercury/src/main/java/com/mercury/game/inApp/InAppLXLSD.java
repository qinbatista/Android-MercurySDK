package com.east2west.game.inApp;
//commentimport com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.iapppay.interfaces.callback.IPayResultCallback;
import com.iapppay.sdk.main.IAppPay;
import com.iapppay.sdk.main.IAppPayOrderUtils;
import com.lenovo.pop.api.OnAuthenListener;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
//endpublic class InAppLXLSD extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppLXLSD";
	public String publicStr ="";
	private String cpprivateinfo= "cpprivateinfo123456";
	public String privateStr="";
	public String appid="";

	private static final int waresid_with_times = 1;		//按次 
	private static final int waresid_auto_fee = 2;			//10元一周，到期自动续费 (包账期)
	private static final int waresid_wrap_times = 3;		//1元5次  (包次数) 
	private static final int waresid_wrap_timeLength = 4;	//5元1天   (包时长)
	private static final int waresid_first_times = 5;		//首次洗车，后续不收费（6元） (买断)
	private static final int waresid_open_price = 6;		//开放价格
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{
		super.init(appContext, context, strAppId, strAppSecret,appinterface);
		
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		appid=strAppId;
		IAppPay.init(mContext, IAppPay.LANDSCAPE, strAppId);
		
		String[] strArray=null;
		strArray = convertStrToArray(strAppSecret,",");
		if(strArray[0]!=null&&strAppSecret.length()>=1)
		{
			publicStr=strArray[0];
			E2WApp.LogLocal("["+Channelname+"] strAppSecret->publicStr="+publicStr);
		}
		if(strArray[1]!=null&&strAppSecret.length()>=2)
		{
			privateStr=strArray[1];
			E2WApp.LogLocal("["+Channelname+"] strAppSecret->privateStr="+privateStr);
		}

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
		//IAppPay.startPay(mContext, getTransdata(E2WApp.MyID, cpprivateinfo , Integer.parseInt(QinConst.ChannelPid) , mProductPrice , System.currentTimeMillis()+ ""), iPayResultCallback);
		
	}

	private String getTransdata( String appuserid, String cpprivateinfo, int waresid, float price, String cporderid) {
		//调用 IAppPayOrderUtils getTransdata() 获取支付参数
		E2WApp.LogLocal("["+Channelname+"] appid="+appid);
		E2WApp.LogLocal("["+Channelname+"] waresid="+waresid);
		E2WApp.LogLocal("["+Channelname+"] cporderid="+cporderid);
		E2WApp.LogLocal("["+Channelname+"] appuserid="+appuserid);
		E2WApp.LogLocal("["+Channelname+"] price="+price);
		E2WApp.LogLocal("["+Channelname+"] mProductDescription="+mProductDescription);
		E2WApp.LogLocal("["+Channelname+"] cpprivateinfo="+cpprivateinfo);
		E2WApp.LogLocal("["+Channelname+"] privateStr="+privateStr);
		IAppPayOrderUtils orderUtils = new IAppPayOrderUtils();
		orderUtils.setAppid(appid);
		orderUtils.setWaresid(waresid);
		orderUtils.setCporderid(cporderid);
		orderUtils.setAppuserid(appuserid);
		orderUtils.setPrice(price);//单位 元
		orderUtils.setWaresname(mProductDescription);//开放价格名称(用户可自定义，如果不传以后台配置为准)
		orderUtils.setCpprivateinfo(cpprivateinfo);
		orderUtils.setNotifyurl("https://bjdev.halodigit.com/ee/agent/cp/lenovo");		
		E2WApp.LogLocal("["+Channelname+"] orderUtils.getTransdata(privateStr)="+orderUtils.getTransdata(privateStr));
		return orderUtils.getTransdata(privateStr);
	}
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("联想支付", new OnClickListener() {
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
	IPayResultCallback iPayResultCallback = new IPayResultCallback() {
		
		@Override
		public void onPayResult(int resultCode, String signvalue, String resultInfo) {
			// TODO Auto-generated method stub
			switch (resultCode) {
			case IAppPay.PAY_SUCCESS:
				//调用 IAppPayOrderUtils 的验签方法进行支付结果验证
				boolean payState = IAppPayOrderUtils.checkPayResult(signvalue, publicStr);
				if(payState){
					Toast.makeText(mContext, "支付成功", Toast.LENGTH_LONG).show();
					onFunctionCallBack("ExitGame");
					mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
	  				mBaseInApp.ExitGame();
				}			
				break ;
			default:
				Toast.makeText(mContext, resultInfo, Toast.LENGTH_LONG).show();
				break;
			}
			E2WApp.LogLocal("["+Channelname+"] requestCode:"+resultCode + ",signvalue:" + signvalue + ",resultInfo:"+resultInfo);
		}
	};
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
//end	
	
}

