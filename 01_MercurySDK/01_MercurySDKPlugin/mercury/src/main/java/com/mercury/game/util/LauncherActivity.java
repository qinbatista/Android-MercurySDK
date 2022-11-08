package com.east2west.game.util;

import com.east2west.game.E2WApp;

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;

public class LauncherActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState)
	{
		super.onCreate(savedInstanceState);
		
		Intent intent = null;
		
//		switch(GameSdkApplication.getSimOperatorId())
//		{
//			case Const.ChinaMobile:
//			intent = new Intent(this, cn.cmgame.billing.api.GameOpenActivity.class);
//			break;
//			case Const.ChinaUnicom:
//			intent = new Intent(this, com.unicom.dcLoader.welcomeview.class);
//			break;
//			case Const.ChinaTelecom:
//			intent = new Intent(this, cn.egame.terminal.paysdk.EgameLaunchActivity.class);
//			break;
//		}

		if(intent == null)
		{
			intent = new Intent(this, com.east2west.game.E2WApp.class);
		}
		
		startActivity(intent);			
		this.finish();
	}
}
