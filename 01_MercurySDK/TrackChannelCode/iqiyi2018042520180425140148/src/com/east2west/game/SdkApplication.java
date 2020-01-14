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
import com.east2west.game.inApp.InAppDefault;


public class SdkApplication extends Application{//UnicomApplicationWrapper {
	
	public static int mSimOperatorId = QinConst.ChinaNull;
	private static int mExtSDKId = -1;
	private static int mChannelId = -1;
	public static String msg = "";
	public static String channelname = "";
	public static String key="";
	public InAppBase mInApp;
	public static String iscarriersneed="1";
	public static String channelSplash="1";
	public static String isAntLogOpen="";
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

		mSimOperatorId = QinConst.ChinaMobile;			

		try {

			TelephonyManager telManager = (TelephonyManager) Acontext.getSystemService(Context.TELEPHONY_SERVICE);

			String imsi = telManager.getSubscriberId();

			if (imsi != null) {
				if (imsi.startsWith("46000") || imsi.startsWith("46002")
						|| imsi.startsWith("46007")) {
					mSimOperatorId = QinConst.ChinaMobile;
				} else if (imsi.startsWith("46001") || imsi.startsWith("46006")|| imsi.startsWith("46009")) {
					mSimOperatorId = QinConst.ChinaUnicom;
				} else if (imsi.startsWith("46003") || imsi.startsWith("46005")
						|| imsi.startsWith("20404")) {// 20404  Vodafone) {
					mSimOperatorId = QinConst.ChinaTelecom;
				}
			} else {

			}						
		} catch (Exception e) {
			e.printStackTrace();		

		}
	}
	
	private void checkExtSDK() 
	{		

			Log.e(QinConst.TAG, "[E2WApp] Default=ApplicationInit");
	    	mInAppExt = new InAppDefault();
	    	mInAppExt.ApplicationInit(Acontext);
	}

	private void checkChannel() {
		try {
		    ApplicationInfo ai = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(), PackageManager.GET_META_DATA);
		    Bundle bundle = ai.metaData;
		    mChannelId = bundle.getInt("EGAME_CHANNEL");
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkChannel:Failed to load meta-data, EGAME_CHANNEL NameNotFound: " + e.getMessage());
		    mChannelId = 0;
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkChannel:Failed to load meta-data, EGAME_CHANNEL NullPointer: " + e.getMessage());         
		    mChannelId = -1;
		}
	}
	
	private void checkChannelName()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String channelnametmp = appInfo.metaData.getString("CHANNEL_NAME");
			E2WApp.SortChannelID=channelname =channelnametmp;
			if(E2WApp.SortChannelID.equals("kp"))
			{
				E2WApp.LongChannelID="kupai";
			}
			else if(E2WApp.SortChannelID.equals("txyysc"))
			{
				E2WApp.LongChannelID="tengxunyingyongshichang";
			}
			else if(E2WApp.SortChannelID.equals("txyxzx"))
			{
				E2WApp.LongChannelID="tengxunyouxizhongxin";
			}
			else if(E2WApp.SortChannelID.equals("dxx"))
			{
				E2WApp.LongChannelID="xuancaiweimi";
			}
			else if(E2WApp.SortChannelID.equals("bf"))
			{
				E2WApp.LongChannelID="baofengyingyin";
			}
			else if(E2WApp.SortChannelID.equals("txllq"))
			{
				E2WApp.LongChannelID="tengxunliulanqi";
			}
			else if(E2WApp.SortChannelID.equals("al"))
			{
				E2WApp.LongChannelID="ali";
			}
			else if(E2WApp.SortChannelID.equals("unicom"))
			{
				E2WApp.LongChannelID="liantong";
			}
			else if(E2WApp.SortChannelID.equals("mobile"))
			{
				E2WApp.LongChannelID="yidong";
			}
			else if(E2WApp.SortChannelID.equals("qqgj"))
			{
				E2WApp.LongChannelID="QQguanjia";
			}
			else if(E2WApp.SortChannelID.equals("none"))
			{
				E2WApp.LongChannelID="kongxiangmu";
			}
			else if(E2WApp.SortChannelID.equals("telecom"))
			{
				E2WApp.LongChannelID="dianxin";
			}
			else if(E2WApp.SortChannelID.equals("debug"))
			{
				E2WApp.LongChannelID="ceshi";
			}
			else if(E2WApp.SortChannelID.equals("yy"))
			{
				E2WApp.LongChannelID="youyi";
			}
			else if(E2WApp.SortChannelID.equals("nd"))
			{
				E2WApp.LongChannelID="Nduo";
			}
			else if(E2WApp.SortChannelID.equals("yyh"))
			{
				E2WApp.LongChannelID="yingyonghui";
			}
			else if(E2WApp.SortChannelID.equals("yk"))
			{
				E2WApp.LongChannelID="youku";
			}
			else if(E2WApp.SortChannelID.equals("jf"))
			{
				E2WApp.LongChannelID="jifeng";
			}
			else if(E2WApp.SortChannelID.equals("sg"))
			{
				E2WApp.LongChannelID="sougou";
			}
			else if(E2WApp.SortChannelID.equals("txyyb"))
			{
				E2WApp.LongChannelID="tengxunyingyongbao";
			}
			else if(E2WApp.SortChannelID.equals("kw"))
			{
				E2WApp.LongChannelID="kuwo";
			}
			else if(E2WApp.SortChannelID.equals("aqy"))
			{
				E2WApp.LongChannelID="aiqiyi";
			}
			else if(E2WApp.SortChannelID.equals("yw"))
			{
				E2WApp.LongChannelID="yiwan";
			}
			else if(E2WApp.SortChannelID.equals("taptap"))
			{
				E2WApp.LongChannelID="TapTap";
			}
			else if(E2WApp.SortChannelID.equals("mzw"))
			{
				E2WApp.LongChannelID="muzhiwan";
			}
			else if(E2WApp.SortChannelID.equals("dl"))
			{
				E2WApp.LongChannelID="dangle";
			}
			else if(E2WApp.SortChannelID.equals("meitu"))
			{
				E2WApp.LongChannelID="meitu";
			}
			else if(E2WApp.SortChannelID.equals("east2west"))
			{
				E2WApp.LongChannelID="dongpinxishang";
			}
			else if(E2WApp.SortChannelID.equals("hw"))
			{
				E2WApp.LongChannelID="huawei";
			}
			else if(E2WApp.SortChannelID.equals("lxlsd"))
			{
				E2WApp.LongChannelID="lianxiangleshangdian";
			}
			else if(E2WApp.SortChannelID.equals("lxyx"))
			{
				E2WApp.LongChannelID="lianxiangyouxi";
			}
			else if(E2WApp.SortChannelID.equals("chel_4399"))
			{
				E2WApp.LongChannelID="4399";
			}
			else if(E2WApp.SortChannelID.equals("mz"))
			{
				E2WApp.LongChannelID="meizu";
			}
			else if(E2WApp.SortChannelID.equals("wdj"))
			{
				E2WApp.LongChannelID="wandoujia";
			}
			else if(E2WApp.SortChannelID.equals("ls"))
			{
				E2WApp.LongChannelID="leshi";
			}
			else if(E2WApp.SortChannelID.equals("jinli"))
			{
				E2WApp.LongChannelID="jinli";
			}
			else if(E2WApp.SortChannelID.equals("vivo"))
			{
				E2WApp.LongChannelID="VIVO";
			}
			else if(E2WApp.SortChannelID.equals("wxgame"))
			{
				E2WApp.LongChannelID="weixinyouxi";
			}
			else if(E2WApp.SortChannelID.equals("anzhi"))
			{
				E2WApp.LongChannelID="anzhi";
			}
			else if(E2WApp.SortChannelID.equals("baidu_dk"))
			{
				E2WApp.LongChannelID="baiduduoku";
			}
			else if(E2WApp.SortChannelID.equals("xm"))
			{
				E2WApp.LongChannelID="xiaomi";
			}
			else if(E2WApp.SortChannelID.equals("baidu_sjzs"))
			{
				E2WApp.LongChannelID="baidushoujizhushou";
			}
			else if(E2WApp.SortChannelID.equals("oppo"))
			{
				E2WApp.LongChannelID="OPPO";
			}
			else if(E2WApp.SortChannelID.equals("baidu_91"))
			{
				E2WApp.LongChannelID="baidu91";
			}
			else if(E2WApp.SortChannelID.equals("qihu360"))
			{
				E2WApp.LongChannelID="qihu360";
			}
			else if(E2WApp.SortChannelID.equals("baidu_tb"))
			{
				E2WApp.LongChannelID="baidutieba";
			}
			else if(E2WApp.SortChannelID.equals("UC"))
			{
				E2WApp.LongChannelID="UCjiuyou";
			}
			else if(E2WApp.SortChannelID.equals("e2wwk"))
			{
				E2WApp.LongChannelID="e2wwk";
			}
			
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkChannelName:Failed to load meta-data, CHANNEL_NAME NotFound: " + e.getMessage());
		    mChannelId = 0;
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkChannelName:Failed to load meta-data, CHANNEL_NAME NullPointer: " + e.getMessage());         
		    mChannelId = -1;
		}

	}
	private void checkMobileSplash()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String channelnametmp = appInfo.metaData.getString("MOBILE_SPLASH");
			iscarriersneed =channelnametmp;
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkMobileSplash:Failed to load meta-data MOBILE_SPLASH, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkMobileSplash:Failed to load meta-data MOBILE_SPLASH, NullPointer: " + e.getMessage());         
		}

	}
	private void checkChannelSplash()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String channelnametmp = appInfo.metaData.getString("CHANNEL_SPLASH");
			channelSplash =channelnametmp;
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkChannelSplash to load meta-data CHANNEL_SPLASH, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkChannelSplash to load meta-data CHANNEL_SPLASH, NullPointer: " + e.getMessage());         
		}

	}
	private void checkLoge()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String isLogOpentmp = appInfo.metaData.getString("E2W_LOG");
			isAntLogOpen =isLogOpentmp;
			if(isAntLogOpen.equals("open"))
			{
				Log.e("IAP","Log Verison:"+QinConst.LogVERSION);
			}
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_LOG, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_LOG, NullPointer: " + e.getMessage());         
		}

	}
	private void checkNumber()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String isLogOpentmp = appInfo.metaData.getString("E2W_NUMBER");
			e2wnumber =isLogOpentmp;
			Log.e(QinConst.TAG, "E2W_NUMBER="+e2wnumber);			    
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_NUMBER, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_NUMBER, NullPointer: " + e.getMessage());         
		}

	}
	
	public static int getSimOperatorId()
	{
		return mSimOperatorId;
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
