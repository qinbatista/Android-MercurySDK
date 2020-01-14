package com.east2west.game.inApp;


//commentimport com.east2west.game.inApp.InAppBase;
import com.samsung.interfaces.callback.ILoginResultCallback;
import com.samsung.interfaces.callback.IPayResultCallback;
import com.samsung.sdk.main.IAppPay;
import com.samsung.sdk.main.IAppPayOrderUtils;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.widget.Toast;

import java.util.Map;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
//endpublic class InAppSAMSUNG extends InAppBase {
	
//comment	private InAppBase mBaseInApp = null;
	private String Channelname="InAppSAMSUNG";
	public static  String appid = "";
	public static  String privateKey = "";
	public static  String publicKey="";
	private static final int waresid_with_times = 1;		//按次
    private static final int waresid_open_price = 2;		//开放价格
    //samsung
	public static  String samsungappid = "";
	public static  String samsungprivateKey = "";
	public static  String samsungpublicKey="";
	public static  String samsungCLIENT_ID="";
	public static  String samsungCLIENT_SECRETE="";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		
		E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
		E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
		
		
		samsungappid=strAppId;
		AnalysisID(strAppSecret);
		appid = samsungappid;
		privateKey = samsungprivateKey;
		publicKey = samsungpublicKey;
		E2WApp.LogLocal("["+Channelname+"] appid="+appid);
		E2WApp.LogLocal("["+Channelname+"] privateKey="+privateKey);
		E2WApp.LogLocal("["+Channelname+"] publicKey="+publicKey);
		mBaseInApp = E2WApp.activityforappbase.getBaseInApp();

		IAppPay.init(mContext, IAppPay.PORTRAIT, appid, "999", samsungCLIENT_ID, samsungCLIENT_SECRETE);//接入时！不要使用Demo中的appid
		
        String loginParams = IAppPayOrderUtils.getLoginParams(appid,E2WApp.packagenameforuse, privateKey);

        IAppPay.startLogin(mContext, loginParams, new ILoginResultCallback() {
            @Override
            public void onSuccess(String signValue, Map<String, String> resultMapStr) {
             //   Toast.makeText(mContext, "获取到的signValue：" + signValue, Toast.LENGTH_SHORT).show();
                Log.d("GoodsListActivity","获取到的signValue:" + signValue);
                //接入方app ---signValue--> 接入方服务器 ---signValue--> 爱贝服务器
                //接入方app <---用户信息--  接入方服务器  <---用户信息-- 爱贝服务器
            }

            @Override
            public void onFaild(String errorCode, String errorMessage) {
                Toast.makeText(mContext, "登录失败，错误信息:" + errorMessage + ",错误代码:" + errorCode, Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onCanceled() {
                Toast.makeText(mContext, "您已取消登录", Toast.LENGTH_SHORT).show();
            }
        });
       
	}
	
	public void AnalysisID(String IDString)
    {
    	try
    	{
    	String[] strArray=null;    	 
    	strArray = convertStrToArray(IDString,",");
    	samsungprivateKey=strArray[0].toString();
    	samsungpublicKey=strArray[1].toString();
    	samsungCLIENT_ID=strArray[2].toString();
    	samsungCLIENT_SECRETE=strArray[3].toString();
    	E2WApp.LogLocal("["+Channelname+"] samsungprivateKey="+samsungprivateKey);
    	E2WApp.LogLocal("["+Channelname+"] samsungpublicKey="+samsungpublicKey);
    	E2WApp.LogLocal("["+Channelname+"] samsungCLIENT_ID="+samsungCLIENT_ID);
    	E2WApp.LogLocal("["+Channelname+"] samsungCLIENT_SECRETE="+samsungCLIENT_SECRETE);
    	}
    	catch(Exception E)
    	{
    		E2WApp.LogLocal("[AnalysisID]Error="+E);
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



	@Override
	public void ExitGame()
	{

		E2WApp.LogLocal("["+Channelname+"] E2WApp.mContext="+E2WApp.mContext);
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
		IAppPay.startPay(mContext, getTransdata(E2WApp.DeviceId, E2WApp.DeviceId+","+E2WApp.SavePidName, waresid_open_price , mProductPrice , InAppBase.OrderID), iPayResultCallback);

	}
	private String getTransdata( String appuserid, String cpprivateinfo, int waresid, double price, String cporderid) {
        //调用 IAppPayOrderUtils getTransdata() 获取支付参数
        IAppPayOrderUtils orderUtils = new IAppPayOrderUtils();
        orderUtils.setAppid(appid);
        orderUtils.setWaresid(waresid);
        orderUtils.setCporderid(cporderid);
        orderUtils.setAppuserid(appuserid);
        orderUtils.setPrice(price);//单位 元
        orderUtils.setWaresname(mProductDescription);//开放价格名称(用户可自定义，如果不传以后台配置为准)
        orderUtils.setCpprivateinfo(cpprivateinfo);
        orderUtils.setNotifyurl("http://101.200.214.15/pay/"+Channelname+"/"+QinConst.appid+"/main.php");
        return orderUtils.getTransdata(privateKey);
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
	IPayResultCallback iPayResultCallback = new IPayResultCallback() {

        @Override
        public void onPayResult(int resultCode, String signvalue, String resultInfo) {
            switch (resultCode) {
                case IAppPay.PAY_SUCCESS:
                    //调用 IAppPayOrderUtils 的验签方法进行支付结果验证
                    boolean payState = IAppPayOrderUtils.checkPayResult(signvalue, publicKey);
                    if(payState){
                        Toast.makeText(mContext, "支付成功", Toast.LENGTH_LONG).show();
                        onPurchaseSuccess(Channelname);
                    }

                    break;
                case IAppPay.PAY_CANCEL:
                    Toast.makeText(mContext, "支付取消", Toast.LENGTH_LONG).show();
                    onPurchaseCanceled(Channelname);
                    break ;
                default:
                    Toast.makeText(mContext, resultInfo, Toast.LENGTH_LONG).show();
                    onPurchaseFailed(Channelname+":"+resultInfo);
                    break;
            }
            E2WApp.LogLocal("requestCode:"+resultCode + ",signvalue:" + signvalue + ",resultInfo:"+resultInfo);
        }
    };
//end}
