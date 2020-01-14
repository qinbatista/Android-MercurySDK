package com.east2west.game.Show;
import com.east2west.game.E2WApp;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
//end

public class InAppShowADDefault extends InAppBase {
	//comment
	public static String appShow="InAppShowADDefault";
	public static String MyScence = "";
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,final APPBaseInterface appcall)
	{
		super.init(appContext, context, strAppId, strAppKey, appcall);
		E2WApp.LogLocal("[InAppShow"+appShow+"] init");
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
	public void onStop()
	{
	}
	@Override
	public void onStart()
	{
	}
	public void onActivityResult(int reqCode, int resCode, Intent data) {
		super.onActivityResult(reqCode, resCode, data);
	}
	public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
		super.onRequestPermissionsResult(requestCode, permissions, grantResults);
	}
	@Override
	public void attachBaseContext(Context base)
	{
		super.attachBaseContext(base);
	}
	public void show_insert(String Scenes) {
		// TODO Auto-generated method stub
		MyScence=Scenes;
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_insert");
		SdkApplication.myStatistics.DisplayAD(Scenes,"insert");

		SdkApplication.myStatistics.HitAD(Scenes,"insert");
	}
	public void show_banner(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_banner");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"banner");

		SdkApplication.myStatistics.HitAD(Scenes,"banner");
	}
	public void show_push(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_push");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"push");

		SdkApplication.myStatistics.HitAD(Scenes,"push");
	}

	public void show_out(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_out");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"out");

		SdkApplication.myStatistics.HitAD(Scenes,"out");
	}
	public void show_video(String Scenes) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[InAppShow"+appShow+"] show_video");
		MyScence=Scenes;
		SdkApplication.myStatistics.DisplayAD(Scenes,"video");

		SdkApplication.myStatistics.HitAD(Scenes,"video");
	}
	//end
}
