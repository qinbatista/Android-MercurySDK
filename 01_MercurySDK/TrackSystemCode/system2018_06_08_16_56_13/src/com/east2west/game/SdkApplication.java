package com.east2west.game;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.List;
import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.Toast;

import com.east2west.game.inApp.InAppBase;


public class SdkApplication extends Application{//UnicomApplicationWrapper {

	private static int mExtSDKId = -1;
	private static int mChannelId = -1;
	public static String msg = "";
	public static String channelname = "";
	public static String key="";
	public InAppBase mInApp;
	public static String iscarriersneed="1";
	public static String channelSplash="1";
	public static String isAntLogOpen="open";
	public static String isLogOpen="1";
	public static String e2wnumber="";
	public static Application Acontext;
	public static String jsid="";
	public static String jschannel="";
	public static String jstjid="";
	private InAppBase mInAppExt;

	@Override
	public void onCreate() {
		super.onCreate();
		//find carriers
		checkSIM();	
		checkChannel();		
		checkExtSDK();
		checkChannelName();
		checkMobileSplash();
		checkChannelSplash();
		checkLoge();
		JSXML();
		checkNumber();
		try 
		{
			 key=getSign(this);
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Log.e("IAP","[SDKApp]SdkName="+msg);		
		if(iscarriersneed.equals("open"))
		{				
			if(!E2WApp.SortChannelID.equals("telecom")&&!E2WApp.SortChannelID.equals("unicom"))		
				System.loadLibrary("megjb");
		}
		
		SdkApplication.msg="jinli20180518Config";
		
	}
	public void APPApplicationInit(Application context)
	{
		Acontext=context;

		//find carriers
		checkSIM();	
		checkChannel();		
		checkExtSDK();
		checkChannelName();
		checkMobileSplash();
		checkChannelSplash();
		checkLoge();
		JSXML();
		checkNumber();
		
		try 
		{
			 key=getSign(Acontext);
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Log.e("IAP","[SDKApp]SdkName="+msg);	
		
		if(iscarriersneed!=null)
		{
			if(iscarriersneed.equals("open"))
			{				
				if(!E2WApp.SortChannelID.equals("telecom")&&!E2WApp.SortChannelID.equals("unicom"))		
					System.loadLibrary("megjb");
			}		
		}
	}
	
	
	private String getSign(Context context) {

		PackageManager pm = context.getPackageManager();
		List<PackageInfo> apps = pm.getInstalledPackages(PackageManager.GET_SIGNATURES);
		Iterator<PackageInfo> iter = apps.iterator();
		while (iter.hasNext()) {
			PackageInfo packageinfo = iter.next();
			String packageName = packageinfo.packageName;
			if (packageName.equals(Acontext.getPackageName())) {				
				return packageinfo.signatures[0].toCharsString();

			}
		}
		return null;
	}

	public void getSingInfo() {
		
		try {
			PackageInfo packageInfo = getPackageManager().getPackageInfo(
					Acontext.getPackageName(),
					PackageManager.GET_SIGNATURES);
			Signature[] signs = packageInfo.signatures;
			Signature sign = signs[0];
			parseSignature(sign.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void parseSignature(byte[] signature) {
		try {
			CertificateFactory certFactory = CertificateFactory
					.getInstance("X.509");
			X509Certificate cert = (X509Certificate) certFactory
					.generateCertificate(new ByteArrayInputStream(signature));
			String pubKey = cert.getPublicKey().toString();
			String signNumber = cert.getSerialNumber().toString();

		} catch (CertificateException e) {
			e.printStackTrace();
		}
	}
	private void checkSIM() {


	}
	
	private void checkExtSDK() {		

		
	}

	private void checkChannel() {

	}
	
	private void checkChannelName()
	{


	}
	private void checkMobileSplash()
	{


	}
	private void checkChannelSplash()
	{


	}
	private void checkLoge()
	{


	}
	private void checkNumber()
	{


	}
	

	
	public static int getExtSDKId()
	{
		return mExtSDKId;
	}
	
	public static int getChannelId()
	{
		return mChannelId;
	}
	public static String getChannelname()
	{
		return channelname;
	}
	public void JSXML()
	{
		checkExtJSIDChannel();
		checkExtJSCHANNELChannel();
		checkExtJSTJIDChannel();
	}
	//JS
	private void checkExtJSIDChannel() {		
	try {
		try {
			ApplicationInfo appInfo = null;
			try 
			{
				appInfo = this.getPackageManager().getApplicationInfo(getPackageName(),PackageManager.GET_META_DATA);
			} catch (NameNotFoundException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			jsid = appInfo.metaData.getString("JS_ID");
	} 
	catch (NullPointerException e) 
	{
	    Log.e("game", "3Failed to load meta-data, NameNotFound: " + e.getMessage());
	   	    
	} 
	}
		catch (NullPointerException e) 
	{
		Log.e("game",  "4Failed to load meta-data, NullPointer: " + e.getMessage());         
	}
	
}

private void checkExtJSCHANNELChannel() {		
	try {
		try {
			ApplicationInfo appInfo = null;
			try 
			{
				appInfo = this.getPackageManager().getApplicationInfo(getPackageName(),PackageManager.GET_META_DATA);
			} catch (NameNotFoundException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			jschannel = appInfo.metaData.getString("JS_CHANNEL");
	} 
		catch (NullPointerException e) 
		{
		    Log.e("game", "3Failed to load meta-data, NameNotFound: " + e.getMessage());
		   	    
		} 
		}
			catch (NullPointerException e) 
		{
			Log.e("game",  "4Failed to load meta-data, NullPointer: " + e.getMessage());         
		}
	
}
private void checkExtJSTJIDChannel() {		
	try {
		try {
			ApplicationInfo appInfo = null;
			try 
			{
				appInfo = this.getPackageManager().getApplicationInfo(getPackageName(),PackageManager.GET_META_DATA);
			} catch (NameNotFoundException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			jstjid = appInfo.metaData.getString("JS_TJID");
	} 
		catch (NullPointerException e) 
		{
		    Log.e("game", "3Failed to load meta-data, NameNotFound: " + e.getMessage());
		   	    
		} 
		}
			catch (NullPointerException e) 
		{
			Log.e("game",  "4Failed to load meta-data, NullPointer: " + e.getMessage());         
		}
	
}


}
