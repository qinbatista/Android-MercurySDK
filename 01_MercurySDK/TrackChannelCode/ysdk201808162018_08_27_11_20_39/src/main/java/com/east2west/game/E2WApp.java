package com.east2west.game;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.inApp.InAppDefault;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.content.Intent;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.InputFilter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.widget.ImageView.ScaleType;

public class E2WApp  {

	public static Context mContext = null;
	private InAppBase mInApp;
	public InAppBase mInAppShow;
	public static InAppBase mInAppExt;
	private InAppBase mInShare;

	public static int mSimOperatorId;
	private int mChannelId;
	private int mExtSDKId = -1;
	public static String ChannelForServer;
	//private String msg_string;
	//public static int msg;
	public static String nikeString;	
	public int platform;
	public static String packagenameforuse;
	public static String isLogOpen="";
	public static E2WApp activityforappbase=null;
	public static int Platform=-1;
	public static String DeviceId="";
	public static String SavePidName="";
	public static String SortChannelID="";
	public static String LongChannelID="";
	private static ImageView img = null;
	public void InitE2WSDK(Context ContextForE2wSDK)
	{
		mContext = ContextForE2wSDK;	
		ChannelSplash();
		QinConst.GetChannelID("");
		mInApp = new InAppDefault() ;
		mInAppExt= new InAppDefault() ;
		activityforappbase=this;
		
	}
	public void ChannelSplash()
	{
		E2WApp.LogLocal("[inapp] ChannelSplash.png");
		try {
			final RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
					RelativeLayout.LayoutParams.MATCH_PARENT,
					RelativeLayout.LayoutParams.MATCH_PARENT);
			String name = "ChannelSplash.png";
			InputStream in = mContext.getResources().getAssets().open(name);
			if (in != null) {
				final Bitmap bitmap = BitmapFactory.decodeStream(in);
				// activity.getWindow().getDecorView().getHandler().postDelayed(
				((Activity) mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						final ImageView image = new ImageView(mContext);
						image.setImageBitmap(bitmap);
						((Activity) mContext).addContentView(image, params);
						image.setScaleType(ScaleType.FIT_XY);
						new Thread(new Runnable() {

							@Override
							public void run() {
								// TODO Auto-generated method stub
								try {
									Thread.sleep(3000);
								} catch (InterruptedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								((Activity) mContext).runOnUiThread(new Runnable() {
									@Override
									public void run() {
										ViewGroup vg = (ViewGroup) image
												.getParent();
										vg.removeView(image);
									}
								});
							}

						}).start();
					}
				});
			}
		} catch (Exception e) {
			e.printStackTrace();
			E2WApp.LogLocal("[inapp] init e="+e.toString());
		}
	}
 	public String SavePidName(){    
 	    String id="";   
 	    //获取当前时间戳         
 	    SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");    
 	    String temp = sf.format(new Date());    
 	    //获取6位随机数  
 	    int random=(int) ((Math.random()+1)*100000);    
 	    id=temp+random;    
 	    return id;    
 	} 
	
	
	public void InitChannel(final APPBaseInterface appcall)
	{
		final Context applicationContext = mContext.getApplicationContext();		
		LogLocal("[E2WApp] Local InitChannel()->"+mInApp);
		mInApp.init(applicationContext, (Activity)mContext, QinConst.APPID, QinConst.APPKEY,appcall);
	
	}
	public void InitCarriers(final APPBaseInterface appcall)
	{
		
	}
	
	public void purchaseProduct(String pidname) 
	{
		LogLocal("[E2WApp] purchaseProduct: " + pidname);
		QinConst.PayInfo(pidname);
		mInApp.purchase(QinConst.QinPid, QinConst.Qindesc, QinConst.Qinpricefloat);		
	}
	public void ExitGame()
	{    		
		new Handler(mContext.getMainLooper()).post(new Runnable() {
			@Override
			public void run() 
			{
				
				mInApp.ExitGame();	
			}
			});
	}
	
	public String ShortChannelID()
	{
		return SortChannelID;
	}
	public String LongChannelID()
	{
		return LongChannelID;
	}



	public void show_banner()
	{		
		if(mInAppShow != null)
		{
			mInAppShow.show_banner();
		}
	}
	public void swtichuser()
	{		
		if(mInAppShow != null)
		{
			mInAppShow.swtichuser();
		}
	}
	public void show_insert()
	{
		if(mInAppShow != null)
		{
			mInAppShow.show_insert();
		}
	}
	public void show_push()
	{
		if(mInAppShow != null)
		{
			mInAppShow.show_push();
		}
	}
	public void show_out()
	{
		if(mInAppShow != null)
		{
			mInAppShow.show_out();
		}
	}
	public void show_video()
	{
		if(mInAppShow != null)
		{
			mInAppShow.show_video();
		}
	}
	public void uploadclick() {
		// TODO Auto-generated method stub
		if(mInAppShow != null)
		{
			mInAppShow.uploadclick();
		}
	}

	public void onPause() {

		if(mInApp != null)
		{
			mInApp.onPause();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onPause();
		}
	}
	public void onStop() {

		if(mInApp != null)
		{
			mInApp.onStop();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onStop();
		}
	}
	public void onStart() {

		if(mInApp != null)
		{
			mInApp.onStart();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onStart();
		}
	}
	public void onRestart()
	{
		if(mInApp != null)
		{
			mInApp.onRestart();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onRestart();
		}
	}
	public void onResume() {


		if(mInApp != null)
		{
			mInApp.onResume();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onResume();
		}
	}


	public void onDestroy() {
		if(mInApp != null)
		{
			mInApp.onDestroy();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onDestroy();
		}
		
	}

	
	
	public static Object getInstance() {	
		Log.e("IAP","Unity Game");
		Platform=QinConst.Unity;
		return mContext;
	}


	public int getChannelId() {
		return mChannelId;
	}
	
	public InAppBase getBaseInApp()
	{
		LogLocal("[E2WApp] getBaseInApp()->mInApp="+mInApp);
		InAppBase myapp = new InAppDefault();
		return myapp;
	}


	
	public void Exchange()
	{
		new Handler(mContext.getMainLooper()).post(new Runnable() {
    		@Override
			public void run() {
    			

			}
		});
	}
	public void Exchange(final APPBaseInterface appcall)
	{
		//Log.d(Const.TAG, "showToast: " + strMessage + ", " + iDuration);
		new Handler(mContext.getMainLooper()).post(new Runnable() {
    		@Override
			public void run() {
    			InAppBase mInAppFunction= new InAppBase();
    			//mInAppFunction.Exchange(appcall);
			}
		});
	}
	private void GetmInAppExt()
	{
		LogLocal("[E2WApp] GetmInAppExt()->"+mExtSDKId);
		switch(mExtSDKId)
		{
			
		}
	}

	public void Message(final String news)
	{	
		Toast.makeText(mContext, news,Toast.LENGTH_SHORT).show();
	}
	public void SharePicture(String imagePath,boolean istimeline,final APPBaseInterface appcall)
	{
		
		
	}

	
	public void letUserLogin() 
	{
		E2WApp.LogLocal("[E2WApp]->letUserLogin:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{			
			mInAppExt.letUserLogin();
		}
	}
	public void stopWaiting() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[E2WApp]->stopWaiting:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{			
			mInAppExt.stopWaiting();
		}
	}
	public void letUserLogout() {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[E2WApp]->letUserLogout:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{			
			mInAppExt.letUserLogout();
		}
	}
	public void showDiffLogin() 
	{
		E2WApp.LogLocal("[E2WApp]->showDiffLogin:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.showDiffLogin();
		}
	}

	public void TencentLogin(int kind)
	{
		E2WApp.LogLocal("[E2WApp]->TencentLogin:mInAppExt="+mInAppExt+" kind="+kind);
		if(mInAppExt != null)
		{
			mInAppExt.login(kind);
		}
	}
	public void TencentLoginOut()
	{
		E2WApp.LogLocal("[E2WApp]->TencentLoginOut:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.logout();
		}
	}
	public void TencentLoginOutOnly()
	{
		E2WApp.LogLocal("[E2WApp]->TencentLoginOutOnly:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.TencentLoginOutOnly();
		}
	}
	public void ShowTencentAd()
	{
		E2WApp.LogLocal("[E2WApp]->ShowTencentAd:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.ShowTencentAd();
		}
	}
	public void repairindentRequest()
	{
		
	}
	public void respondCPserver()
	{
		
	}
	public void showMessageDialog()
	{
		E2WApp.LogLocal("[E2WApp]->showMessageDialog:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.showMessageDialog();
		}
	}
	public void onActivityResult(int requestCode, int resultCode, Intent data) 
	{
		E2WApp.LogLocal("[E2WApp]->onActivityResult:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.onActivityResult(requestCode,resultCode,data);
		}
	}
	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[E2WApp]->onNewIntent:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.onNewIntent(intent);
		}
	}
	public static void LogLocal(final String news)
	{		
		Log.e(QinConst.TAG,news);
	}

}
