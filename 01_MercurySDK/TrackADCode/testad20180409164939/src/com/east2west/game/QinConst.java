package com.east2west.game;

import com.east2west.game.inApp.InAppBase;
import android.app.Activity;


public class QinConst {
	public static String LogVERSION= "1.1";

	
	//AddADIDPython
	public static String adtest="123456";
	//end
	   
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
	public void QinUnityMessage(String ObjectName,String MethodName,String QinMessage)
	{
	}
	public void ShareResult(int result )
	{

	}
}
