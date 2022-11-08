package com.east2west.game;

import com.east2west.game.inApp.InAppBase;
import android.app.Activity;


public class QinConst {
	public static String LogVERSION= "1.1";

	//FunctionPython	
	//end
	   
	public static String QinPid="";
	public static String Qindesc="";
	public static float Qinpricefloat=0f;
	public static String CarriersID="";
	public static String SDKID="";
	public static String CarriersPayLock="0";
	public static String SDKPayLock="0";
	public static String APPID="";
	public static String APPKEY="";
	public static String ADChannel="";
	public static String[] ADParamList= null;
    public static String SDKNeed="";
    public static String SDKKey="";
    public static String SDKValue="";
    public static String SDKPay="";
    public static String APPChineseName = "钢铁战队";	
	public static String exchangeID = "5701";
	public static String exchangeKEY = "4dcb6ba1fd3139623c0d3554e4fae8ac";
	public static String appid = "IronMarine";
	public static String Restoreappid = "IronMarine";
	public static String accesstoken = "9d4d765b489220b2b32b7f0db4762493";	
	public static String DataFileName = "machinarium_save.bin";
	public static String GameId = "e2w25e3847c9ed078e1";
	public static String ServerLocation="101.201.101.114:9000";
	public static String key = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBALnMsImln+S8fxJtf7NDqQhh8EA318buO6ScnyzNbaBkVmu4oL97ggRrgmI7z1YKYkPNs6ymufqjHDAAqqyMm+KgNYodKsr+LtWOxwHVYEI7rdZL6ioNoOyv396pGQjoyXDB6FfP+dGXGN/WMSyJrcXn2tdY025S+dBbQaMTnqhvAgMBAAECgYEAiaTJN//aF1NJdDZofz5lsA8WNAzqrrX4u3dIOKGrUEJk/4KUm6Z86JdYzTtv21bv+zkdnY8agkJp9GnaBuBX7mVEg3tHqzZrOCq5nVX9OHJoMytGwLxlHvejBZPVS1PmkfFnEYRAkBcti5nmsY+fCV5/lxVScrYGdzfrf1vio1ECQQDpxHmicfwYCTb0ZcUIKU0CQvfD9Te/94TIxr82EKcq/pPfoU3vQY+Ks7LI41Zc2kRYhT1dXezzKf/r2FjAMid3AkEAy3hXmEUZYdg+SPVURzrQt6PGjvLv/5Uxe75t8Ovx2JxHRgCD5j7IArzDg7ACMNn50xMHfQUD4QVdEG2vtvK0yQJBAJp/wiw8zXJNVMa+JDS6pyzhecNHZGs5eccApAtlgjaGPtFEWK/SUr5G+diPd9qyXw1qMh5tH1eu4HfNawrLmw0CQBRZ3hEJ4EcMFPbBKwPQ2y1zARotLFoY9xEUc/Sj9NWgk/Rpesfdwa2cacXTJfTy6Gz3O0mC5eds3OkWv3uB/RkCQQCEkR2M+vdStNq08KV7g+bOZKXElvnYjpUHMdVkO+oeXHPhLf9ltlpBOynA7WA60Jdg0OJa14ngZcu2loawd+q2";
	
	
	public void FunctionL(String number)
	{
		E2WApp.isLogOpen=number;
	}
	public void ExitGame()
	{
		((Activity) E2WApp.mContext).finish();
		android.os.Process.killProcess(android.os.Process.myPid());
	}
	
	public void onPurchaseSuccess(String message,InAppBase inbase,String mProductId) {
			inbase.appinterface.onPurchaseSuccessCallBack(message);
	}
	public void onPurchaseFailed(String strError,InAppBase inbase,String mProductId) {		
		E2WApp.LogLocal("[QinConst] onPurchaseFailed callback->strError="+strError+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());
		inbase.appinterface.onPurchaseFailedCallBack(strError);
	}
	public void onPurchaseCanceled(String strError,InAppBase inbase, String mProductId) {
		E2WApp.LogLocal("[QinConst] onPurchaseCanceled callback->strError="+strError+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());	
		inbase.appinterface.onPurchaseCancelCallBack(strError);
	}
	public void onFunctionCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onFunctionCallBack(strError);	
	}
	
	
	
	public void onLoadSuccessfulCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onLoadSuccessfulCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoadSuccessfulCallBack(strError);	
	}
	public void onLoadFailedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onLoadFailedCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoadFailedCallBack(strError);	
	}
	
	public void onSaveSuccessfulCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onSaveSuccessfulCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onSaveSuccessfulCallBack(strError);	
	}
	public void onSaveFailedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onSaveFailedCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onSaveFailedCallBack(strError);	
	}
	
	public void onOnVideoCompletedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onOnVideoCompletedCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onOnVideoCompletedCallBack(strError);	
	}
	public void onOnVideoFailedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onOnVideoFailedCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onOnVideoFailedCallBack(strError);	
	}
	public void onLoginSuccess(String deviceId, InAppBase inbase) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[QinConst] onLoginSuccess callback->strError="+deviceId+" inbase.appinterface->"+inbase.appinterface);			
		inbase.appinterface.onLoginSuccessCallBack(deviceId);	
	}
	public void onLoginFailed(String deviceId, InAppBase inbase) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[QinConst] onLoginFailed callback->strError="+deviceId+" inbase.appinterface->"+inbase.appinterface);		
		inbase.appinterface.onLoginFailedCallBack(deviceId);	
	}
	public void onLoginCancel(String deviceId, InAppBase inbase) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[QinConst] onLoginCancel callback->strError="+deviceId+" inbase->"+inbase);		
		inbase.appinterface.onLoginCancelCallBack(deviceId);	
	}
	
	
	public void QinUnityMessage(String ObjectName,String MethodName,String QinMessage)
	{
	}
	public void ShareResult(int result )
	{

	}

	
}
