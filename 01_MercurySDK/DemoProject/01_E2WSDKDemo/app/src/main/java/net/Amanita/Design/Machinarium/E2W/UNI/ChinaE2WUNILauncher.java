package com.AmanitaDesign.Machinarium.E2W;


import com.east2west.game.SdkApplication;

import android.app.Application;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;



public class ChinaE2WUNILauncher extends Application { 
 
	@Override
	public void onCreate() {
		super.onCreate();


		Log.e("E2W","1->Applcation [change application->UnicomApplicationWrapper]");
		SdkApplication sdkapp= new SdkApplication();
		sdkapp.APPApplicationInit(this);
	}
	
}
