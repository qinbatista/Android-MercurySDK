package com.east2west.game.System;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.tendcloud.tenddata.TDGAAccount;
import com.tendcloud.tenddata.TDGAVirtualCurrency;
import com.tendcloud.tenddata.TalkingDataGA;

import java.util.HashMap;
import java.util.Map;


public class InAppBaseStatistics {
	public static String LogName="InAppBaseStatistics";

	public static Boolean isInit = false;
	public void init(Context appContext)
	{
		LogLocalRestore("[init] QinConst.TalkingDataID="+QinConst.TalkingDataID+" SdkApplication.msg="+SdkApplication.msg);
		if (!QinConst.TalkingDataID.equals(""))
		{
			isInit=true;
			LogLocalRestore("[init] TalkingDataGA.init="+TalkingDataGA.getDeviceId(appContext));
			TalkingDataGA.init(appContext, QinConst.TalkingDataID, SdkApplication.msg);
			TDGAAccount.setAccount(TalkingDataGA.getDeviceId(appContext));
		}
	}
	public static void LogLocalRestore(final String news)
	{
		if(E2WApp.isLogOpen.equals("1")||SdkApplication.isAntLogOpen.equals("open"))
		{
			Log.e(LogName,news);
		}
	}
	public void onChargeRequest(String orderID, String MerchandiseName, double price, String CurrencyType, double virtualCurrencyAmount, String PaymentType)
	{

		if (isInit==false)
		{
			return;
		}
		LogLocalRestore("[onChargeRequest]");
		TDGAVirtualCurrency.onChargeRequest(orderID,MerchandiseName,price,CurrencyType,virtualCurrencyAmount,PaymentType);
	}
	public void onChargeSuccess(String orderID)
	{
		if (isInit==false)
		{
			return;
		}
		LogLocalRestore("[onChargeSuccess]");
		TDGAVirtualCurrency.onChargeSuccess(orderID);
	}
	public void DisplayAD(String Scenes,String ADTypeString)
	{
		LogLocalRestore("[DisplayAD]");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("StoreChannel", SdkApplication.msg);     //上线渠道名字
		map.put("ADChannel", QinConst.ADChannel); //广告渠道名字
		map.put("ADScenes", Scenes); //广告应用场景
		map.put("ADType", ADTypeString); //广告类型
		map.put("GameName", QinConst.APPChineseName); //游戏名字
		map.put("HitCount", "0"); //点击次数
		map.put("DisplayCount", "1"); //显示次数
		TalkingDataGA.onEvent("DisplayAD", map);
	}
	public void HitAD(String Scenes,String ADTypeString)
	{
		LogLocalRestore("[HitAD]");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("StoreChannel", SdkApplication.msg);     //上线渠道名字
		map.put("ADChannel", QinConst.ADChannel); //广告渠道名字
		map.put("ADScenes", Scenes); //广告应用场景
		map.put("ADType", ADTypeString); //广告类型
		map.put("GameName", QinConst.APPChineseName); //游戏名字
		map.put("HitCount", "1"); //点击次数
		map.put("DisplayCount", "0"); //显示次数
		TalkingDataGA.onEvent("HitAD", map);
	}

}
