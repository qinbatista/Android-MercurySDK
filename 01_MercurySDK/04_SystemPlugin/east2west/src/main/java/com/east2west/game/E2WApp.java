package com.east2west.game;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import org.apache.http.util.EncodingUtils;

import com.east2west.game.System.InAppBackUp;
import com.east2west.game.System.InAppBaseOperation;
import com.east2west.game.System.InAppBaseRestore;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.MD5;

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
	private InAppBase mInAppExt;
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
	public static String isLogOpen="1";
	public static E2WApp activityforappbase=null;
	public static int Platform=-1;
	public static String DeviceId="";
	public static String SavePidName="";
	public static String SortChannelID="";
	public static String LongChannelID="";
	private static ImageView img = null;
	public static String imei="";
	public void InitE2WSDK(Context ContextForE2wSDK)
	{
		mContext = ContextForE2wSDK;	
		activityforappbase=this;
		getDeviceId(mContext);
		SdkApplication.channelname="jinli20180518";
		SdkApplication.e2wnumber="east2west1";
		InAppBaseRestore.OrderID="123";
		SdkApplication.msg="east2west";
		InAppBase.qc = new QinConst();
		InAppBackUp functest= new InAppBackUp();
		functest.Login();
		InAppBase.qc = new QinConst();
		InAppBaseRestore myInAppBaseRestore= new InAppBaseRestore();
		myInAppBaseRestore.repairindentRequest();
	}


	
	public static String getDeviceId(Context context) 
	{  
		String strUserID = "";
		imei="";
		try {  
		    //IMEI（imei）  
		    TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);  
		    imei = tm.getDeviceId();  
		   
		  } catch (Exception e) {  
		    e.printStackTrace();  
		  }
		  LogLocal("[E2WApp] -imei = ["+imei+"]");
		  LogLocal("[E2WApp] -readFileData(\"UserIMEI\") = ["+readFileData("UserIMEI")+"]");
		  LogLocal("[E2WApp] -readFileData(\"UserIMEI\") = ["+readFileData("UserIMEI")+"]");
		  if((imei==null||imei=="")&&(readFileData("UserIMEI")==null||readFileData("UserIMEI")==""))
		  {
			  imei=QinConst.appid+java.util.UUID.randomUUID();
			  writeFileData("UserIMEI",imei);
			  strUserID=imei;
			  LogLocal("[E2WApp] write imei = ["+imei+"]");
		  }
		  else if((imei==null||imei=="")&&(readFileData("UserIMEI")!=null||readFileData("UserIMEI")!="")) 
		  {
			  imei=readFileData("UserIMEI");
			  strUserID=imei;
			  LogLocal("[E2WApp] read imei = ["+imei+"]");
		  }
		  else if((imei!=null||imei!="")&&(readFileData("UserIMEI")!=null||readFileData("UserIMEI")!=""))
		  {
			  strUserID=readFileData("UserIMEI");
			  LogLocal("[E2WApp] Set imei as local imei = ["+strUserID+"]");
		  }
		  else
		  {
			  strUserID=imei;
			  LogLocal("[E2WApp] Set imei as phone = ["+imei+"]");
		  }
		  LogLocal("[E2WApp] strUserID = ["+strUserID+"]");
		  DeviceId=MD5.getMessageDigest(strUserID.getBytes());  
		  LogLocal("[E2WApp] Get DeviceId = ["+DeviceId+"]");
		  return MD5.getMessageDigest(strUserID.getBytes());   
	} 

	 public static void writeFileData(String fileName,String message)
	 {
		 try{
			 //E2WApp.LogLocal("[E2WApp]->writeFileData fileName="+fileName+",message="+message+"-"+E2WApp.mContext);
			 FileOutputStream fout = E2WApp.mContext.openFileOutput(fileName, E2WApp.mContext.MODE_PRIVATE);
			 byte [] bytes = message.getBytes();
			 fout.write(bytes);
			 fout.close();	
			 //E2WApp.LogLocal("[E2WApp]->writeFileData Success");
			 }
		 	 catch(Exception e){
		 		e.printStackTrace();
			 }
	  }
	public static String readFileData(String fileName)
	{
		
	 		String res="";
	 		try
	 		{
	 		  //E2WApp.LogLocal("[E2WApp]->readFileData:"+fileName+"-"+E2WApp.mContext);
	 		  FileInputStream fin = E2WApp.mContext.openFileInput(fileName);
	 		  int length = fin.available();
	 		  byte [] buffer = new byte[length];
	 		  fin.read(buffer);
	 		  res = EncodingUtils.getString(buffer, "UTF-8");
	 		  fin.close();
	 		  //E2WApp.LogLocal("[E2WApp]->readFileData Success");
	 		}
	 		catch(Exception e)
	 		{
	 			e.printStackTrace();
	 		}
	 		return res;
	}
	public void InitChannel(final APPBaseInterface appcall)
	{
		final Context applicationContext = mContext.getApplicationContext();
		mInApp = new InAppBase() ;
		mInApp.init(applicationContext, (Activity)mContext, "", "",appcall);
	}
	public void InitCarriers(final APPBaseInterface appcall)
	{
		
	}
	public void InitAd(final APPBaseInterface appcall)
	{
		
	}
	public void purchaseProduct(String pidname) 
	{
		LogLocal("[E2WApp] purchaseProduct: " + pidname);
	
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
	public void Function1(String code)
	{
//		InAppBaseOperation functest= new InAppBaseOperation();
//		functest.LoadConfiguration();
		SdkApplication.MyStatistics.DisplayAD("mainmenu","video");

	}
	
	public void Function2(String code)
	{
//		InAppBaseOperation functest= new InAppBaseOperation();
//		Log.e("IAP",functest.GetRemoteValue("restore_content_server"));
		
//		InAppBaseOperation functest= new InAppBaseOperation();
//		Log.e("IAP",functest.IsRatingAvailable()+"");
		SdkApplication.MyStatistics.HitAD ("mainmenu","video");
	}
	public void Function3(String code)
	{
		DateFormat format = new java.text.SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US);
		String requestId = format.format(new Date());
		Random r = new Random();
		requestId = requestId + r.nextInt(100);
		InAppBase.OrderID =requestId;
		SdkApplication.MyStatistics.onChargeRequest(InAppBase.OrderID,QinConst.Qindesc,QinConst.Qinpricefloat,"RMB",0,"test");
		SdkApplication.MyStatistics.onChargeSuccess(InAppBase.OrderID);
//		InAppBaseOperation functest= new InAppBaseOperation();
//		Log.e("IAP",functest.GetRatingURL()+"");
//		InAppBaseOperation functest= new InAppBaseOperation();
//		String[] ADParamList= functest.GetRemoteValuesWithPrefix("offer_credits_");
//		for(int i = 0; i<ADParamList.length;i++)
//		{
//			LogLocal("[" + "E2WApp" + "] ADParamList["+i+"]="+ADParamList[i]);
//		}
//		InAppBackUp functest= new InAppBackUp();
//		functest.Save("com.ironhidegames.ironmarines.savegame","abc132456");

	}

	public String LongChannelID()
	{
		return LongChannelID;
	}

	public void swtichuser()
	{		
		if(mInAppShow != null)
		{
			mInAppShow.swtichuser();
		}
	}
	public void TestFunction()
	{
		LogLocal("[" + "E2WApp" + "] TestFunction()");
		String DataLocation=E2WApp.mContext.getFilesDir().getAbsolutePath()+"/";//存档路径
		final File f1_org =new File(DataLocation+"machinarium_save.bin");

		OutputStream output = null;
		try
		{
			output = new FileOutputStream(f1_org);
			byte[] buf = new byte[1024];
			buf="123156487asfafas564a65fssassssssssssssssssssa56s4f69".getBytes();
			output.write(buf, 0, buf.length);
		}
		catch(Exception ex)
		{
			LogLocal("[" + "E2WApp" + "] copyFileUsingFileStreams err=" + ex.toString());
		}
		finally 
		{
			if(output!=null)
				try {
					output.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		LogLocal("[" + "E2WApp" + "] f1_org.length()="+f1_org.length());
	}
	
	public void show_insert()
	{
		if(mInAppShow != null)
		{
			mInAppShow.show_insert();
		}
	}
	public void show_banner()
	{		
		if(mInAppShow != null)
		{
			mInAppShow.show_banner();
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

		return mContext;
	}


	public int getChannelId() {
		return mChannelId;
	}
	
	public InAppBase getBaseInApp()
	{
		LogLocal("[E2WApp] getBaseInApp()->mInApp="+mInApp);
		InAppBase myapp = new InAppBase();
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
		Log.e("IAP",news);
	}

}
