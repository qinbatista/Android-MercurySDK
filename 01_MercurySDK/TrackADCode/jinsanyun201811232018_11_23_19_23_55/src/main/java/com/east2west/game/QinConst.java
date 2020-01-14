package com.east2west.game;

import com.east2west.game.inApp.InAppBase;
import android.app.Activity;


public class QinConst {
	public static String LogVERSION= "1.1";
	public static String[] ADParamList= null;
	
	//AddADIDPython

	//end
	public static String APPChineseName = "一起玩陶艺";	
	public static String exchangeID = "1201";
	public static String exchangeKEY = "4dcb6ba1fd3139623c0d3554e4fae8ac";
	public static String appid = "letscreatepottery";
	public static String accesstoken = "9d4d765b489220b2b32b7f0db4762493";	
	public static String Restoreappid = "letscreatepottery";
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
    public static String[] ADParamSplit(String IDString)
    {
    	String[] strArray=null;   
    	
    	
    	try
    	{
	    	
	    	strArray = convertStrToArray(IDString,",");
	    	String[] strArrayReturn = new String[strArray.length];
	    	for(int i = 0 ; i<strArray.length;i++)
	    	{
	    		strArrayReturn[i]=strArray[i].toString();
	    	}
	    	return strArrayReturn;
	    	
    	}
    	catch(Exception E)
    	{
    		
    		return strArray;

    	}
    }
    public static void ADValue()
    {
    	ADParamList = ADParamSplit("jinsanyun,767b95db,73b3a2be");
    	
    }
    public static String[] convertStrToArray(String str,String symbol){   
        String[] strArray = null;   
        strArray = str.split(symbol); 
        return strArray;
    }
    
	public void onPurchaseSuccess(String message,InAppBase inbase,String mProductId) {
			inbase.appinterface.onPurchaseSuccessCallBack(message);
	}
	public void onPurchaseFailed(String strError,InAppBase inbase,String mProductId) {		
		E2WApp.LogLocal("[QinConst] onPurchaseFailed callback->strError="+strError+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());
		inbase.appinterface.onPurchaseFailedCallBack(strError);
	}
	public void onPurchaseCanceled(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onPurchaseCanceled callback->strError="+strError+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());	
		inbase.appinterface.onPurchaseCancelCallBack(strError);
	}
	public void onLoginSuccess(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onLoginSuccess callback->strError="+strError+" inbase->"+inbase);		
		inbase.appinterface.onLoginSuccessCallBack(strError);	
	}
	public void onLoginCancel(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onLoginCancel callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoginCancelCallBack(strError);
	}
	public void onLoginFailed(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onLoginFailed callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoginFailedCallBack(strError);	
	}
	public void onFunctionCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onFunctionCallBack(strError);	
	}
	public void onLoadSuccessfulCallBack(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);
		inbase.appinterface.onLoadSuccessfulCallBack(strError);
	}
	public void onLoadFailedCallBack(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);
		inbase.appinterface.onLoadFailedCallBack(strError);
	}
	public void onSaveSuccessfulCallBack(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);
		inbase.appinterface.onSaveSuccessfulCallBack(strError);
	}
	public void onSaveFailedCallBack(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);
		inbase.appinterface.onSaveFailedCallBack(strError);
	}
	public void onOnVideoCompletedCallBack(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);
		inbase.appinterface.onOnVideoCompletedCallBack(strError);
	}
	public void onOnVideoFailedCallBack(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->strError="+strError+" inbase->"+inbase);
		inbase.appinterface.onOnVideoFailedCallBack(strError);
	}

	public void QinUnityMessage(String ObjectName,String MethodName,String QinMessage)
	{
	}
	public void ShareResult(int result )
	{

	}
}
