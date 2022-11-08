package com.east2west.testapp;


import com.east2west.game.SdkApplication;

import android.app.Application;
import android.util.Log;



public class GameSdkApplication extends Application { 
 
	@Override
	public void onCreate() {
		super.onCreate();


		Log.e("E2W","1->Applcation [change application->UnicomApplicationWrapper11123]");
		SdkApplication sdkapp= new SdkApplication();
		sdkapp.APPApplicationInit(this);
	}
	
}
