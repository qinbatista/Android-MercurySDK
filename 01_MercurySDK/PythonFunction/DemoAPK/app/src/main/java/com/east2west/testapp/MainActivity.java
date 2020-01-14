package com.east2west.testapp;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.AmanitaDesign.Machinarium.E2W.R;

public class MainActivity extends Activity  {
	public static Context context;
	public E2WApp e2w;
	public QinConst qin; 
	public QinConst qin1; 
	public static APPBaseInterface appcall=null;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		context=this;
		Log.e("E2W","2->e2w");
		e2w=new E2WApp();
		qin= new QinConst();
		appcall = new  APPBaseInterface() {
			
			@Override
			public void onPurchaseSuccessCallBack(String strProductId) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onPurchaseSuccessCallBack strProductId="+strProductId);	
				//Toast.makeText(context, "��õ��߳ɹ�",Toast.LENGTH_SHORT).show();
			}
			
			@Override
			public void onPurchaseFailedCallBack(String strProductId) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onPurchaseFailedCallBack strProductId="+strProductId);					
			}
			
			@Override
			public void onPurchaseCancelCallBack(String strProductId) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onPurchaseCancelCallBack strProductId="+strProductId);					
			}

			@Override
			public void onLoginCancelCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onLoginCancelCallBack arg0="+arg0);		
			}

			@Override
			public void onLoginFailedCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onLoginFailedCallBack arg0="+arg0);		
			}

			@Override
			public void onLoginSuccessCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onLoginSuccessCallBack arg0="+arg0);		
			}

			@Override
			public void onFunctionCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onFunctionCallBack arg0="+arg0);	
				if(arg0.equals("ExitGame"))
				{
					//exit game by yourself
				}
				else if(arg0.equals("UnlockGame"))
				{
					//unlock game
				}
				else if(arg0.equals("SplashEnd"))
				{
					//splash finished
				}
			}

			@Override
			public void onLoadFailedCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onLoadFailedCallBack arg0="+arg0);	
			}

			@Override
			public void onLoadSuccessfulCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onLoadSuccessfulCallBack arg0="+arg0);	
			}

			@Override
			public void onOnVideoCompletedCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onOnVideoCompletedCallBack arg0="+arg0);	
			}

			@Override
			public void onOnVideoFailedCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onOnVideoFailedCallBack arg0="+arg0);	
			}

			@Override
			public void onSaveFailedCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onSaveFailedCallBack arg0="+arg0);
			}

			@Override
			public void onSaveSuccessfulCallBack(String arg0) {
				// TODO Auto-generated method stub
				Log.e("game", "onCreate onSaveSuccessfulCallBack arg0="+arg0);
			}
		};
		
		Log.e("E2W","4->InitE2WSDK");
		e2w.InitE2WSDK (context);
		Log.e("E2W","5->InitCarriers");
		e2w.InitCarriers(appcall);
		Log.e("E2W","6->InitChannel");
		e2w.InitChannel(appcall);
		setContentView(R.layout.activity_main);
		Button btn = (Button) findViewById(R.id.pay);
		// button buy
		btn.setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				Log.e("E2W","7.1->purchaseProduct");
				e2w.purchaseProduct("UnlockGame");
			}
		});

		// ****************************************exit
		Button exit = (Button) findViewById(R.id.exit);
		exit.setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.e("E2W","7.2->ExitGame");
				e2w.ExitGame();
			}
		});

		Button btn1 = (Button) findViewById(R.id.button1);
		btn1.setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.e("E2W","8.1->Function1");
			}
		});	
		Button btn2 = (Button) findViewById(R.id.button2);
		btn2.setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.e("E2W","8.2->Function2");
			}
		});
		Button btn3 = (Button) findViewById(R.id.button3);
		btn3.setOnClickListener(new android.view.View.OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Log.e("E2W","8.2->Function3");
			}
		});
//		Button btn4 = (Button) findViewById(R.id.button4);
//		btn4.setOnClickListener(new android.view.View.OnClickListener() {
//			@Override
//			public void onClick(View v) {
//				Log.e("E2W","8.2->show_push");
//				e2w.show_out();
//			}
//		});
//		Button btn5 = (Button) findViewById(R.id.Button5);
//		btn3.setOnClickListener(new android.view.View.OnClickListener() {
//			@Override
//			public void onClick(View v) {
//				// TODO Auto-generated method stub
//				Log.e("E2W","8.2->show_video");
//				e2w.show_video();
//			}
//		});
//		Button btn6 = (Button) findViewById(R.id.Button6);
//		btn4.setOnClickListener(new android.view.View.OnClickListener() {
//			@Override
//			public void onClick(View v) {
//
//			}
//		});
	}
	
	@Override
	public void onPause() 
	{
		super.onPause();
		e2w.onPause();
	}

	@Override
	public void onStop() 
	{
		super.onStop();
		e2w.onStop();
	}

	@Override
	public void onRestart() 
	{
		super.onRestart();
		e2w.onRestart();
	}
	@Override
	public void onResume() 
	{
		super.onResume();
		e2w.onResume();
	}
	@Override
	public void onDestroy() 
	{
		super.onDestroy();
		e2w.onDestroy();
	}
	
}
