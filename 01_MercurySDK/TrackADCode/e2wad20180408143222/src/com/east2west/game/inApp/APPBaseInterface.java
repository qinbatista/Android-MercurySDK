package com.east2west.game.inApp;

public interface APPBaseInterface {
	abstract void onPurchaseSuccessCallBack(String strProductId);
	abstract void onPurchaseFailedCallBack(String strProductId);
	abstract void onPurchaseCancelCallBack(String strProductId);
	abstract void onLoginSuccessCallBack(String strProductId);
	abstract void onLoginFailedCallBack(String strProductId);
	abstract void onLoginCancelCallBack(String strProductId);
	abstract void onFunctionCallBack(String strProductId);
}
