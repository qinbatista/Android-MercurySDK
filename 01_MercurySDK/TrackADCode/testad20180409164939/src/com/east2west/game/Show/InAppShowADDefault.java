package com.east2west.game.Show;


import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	public static String appShow="InAppShowADDefault";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appinterface);
		E2WApp.LogLocal("[InAppShow"+appShow+"] initABCDE e2wtest="+QinConst.adtest);
		//String s = QinConst.E2WADID;
	}
	@Override
	public void ApplicationInit(Application app)
	{		
		E2WApp.LogLocal("[InAppShow"+appShow+"]->ApplicationInit="+app);
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
	public void attachBaseContext(Context base) 
	{
		super.attachBaseContext(base);
	}
	public void show_insert() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert APP");
	}
	public void show_banner() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_banner APP");
	}
	public void show_push() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_push APP");
	}

	public void show_out() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_out APP");
	}
	public void show_video() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video APP");
	}
	//end
}

