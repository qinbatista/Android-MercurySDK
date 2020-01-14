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
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.Toast;

import com.east2west.game.System.InAppBaseStatistics;
import com.east2west.game.inApp.InAppBILIBILI;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.inApp.InAppE2WWK;
import com.east2west.game.inApp.InAppHW;
import com.east2west.game.inApp.InAppMobileMarket;
import com.east2west.game.inApp.InAppOPPO;
import com.east2west.game.inApp.InAppQIHU360;
import com.east2west.game.inApp.InAppVIVO;
import com.east2west.game.inApp.InAppCUIZI;
import com.east2west.game.inApp.InAppSMARTISAN;
import com.east2west.game.inApp.InAppHUAWEI20180410;
import com.east2west.game.inApp.InAppCUIZI20180413;
import com.east2west.game.inApp.InAppTEST;
import com.east2west.game.inApp.InAppIQIYI20180425;
import com.east2west.game.inApp.InAppCHINA3NET;
import com.east2west.game.inApp.InAppXM;
import com.east2west.game.inApp.InAppYSDK20180516;
import com.east2west.game.inApp.InAppJINLI20180518;
import com.east2west.game.inApp.InAppBILIBILI20180530;
import com.east2west.game.inApp.InAppJRTT20180531;
import com.east2west.game.inApp.InAppQIHOO36020180601;
import com.east2west.game.inApp.InAppUCPAY20180606;
import com.east2west.game.inApp.InAppXMPAY20180607;
import com.east2west.game.inApp.InAppBILIBILI20180611;
import com.east2west.game.inApp.InAppWDJPAY20180608;
import com.east2west.game.inApp.InAppDEBUG20180620;
import com.east2west.game.inApp.InAppUCPAY20180628;
import com.east2west.game.inApp.InAppIQIYI20180628;
import com.east2west.game.inApp.InAppBILIBILIPAY20180629;
import com.east2west.game.inApp.InAppXMHW20180814;
import com.east2west.game.inApp.InAppXMHW20180814;
import com.east2west.game.inApp.InAppCHEL_439920180801;
import com.east2west.game.inApp.InAppOPPO20180817;
import com.east2west.game.inApp.InAppVIVOPAY20180813;
import com.east2west.game.inApp.InAppYSDK20180816;
import com.east2west.game.inApp.InAppOPPOPAY20181016;
import com.east2west.game.inApp.InAppXM20181024;
import com.east2west.game.util.MD5;
import com.east2west.game.inApp.InAppJRTT20181218;
//AddCodeImportPython


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
	public static String myExchange = "open";
	private static boolean isGenuineGame=true;
	public static String ChannelName = "";
	public static InAppBaseStatistics myStatistics = new InAppBaseStatistics();
	@Override
	public void onCreate() {
		super.onCreate();
		//find carriers
		Acontext = this;
		checkLog();

		CheckChannelName();
		//Log.e("IAP","[SdkApplication][GetLocalSettingData]");
		QinConst.GetLocalSettingData();
		QinConst.GetGameSettingData();
		QinConst.GetSeverSettingDate();

		checkExtSDK();
		checkSIM();
		checkChannel();
		checkExchange();
		checkChannelName();
		checkMobileSplash();
		checkChannelSplash();
		JSXML();
		checkNumber();
		try
		{
			Log.e("IAP","[SdkApplication][QinConst.VerifyKey]="+QinConst.VerifyKey);
			Log.e("IAP","[SdkApplication][MD5]="+MD5.getMessageDigest(getSign(this).getBytes()));
			if (!QinConst.VerifyKey.equals(MD5.getMessageDigest(getSign(this).getBytes())))
			{
				if (QinConst.VerifyKey.equals(""))
				{
					//没有配置，此时会下载远程配置文件进行校对，暂不做处理，如果远程也为空，不做处理
				}
				else
				{
					isGenuineGame=false;
					PirateGameNotice();
				}
			}
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(iscarriersneed.equals("open"))
		{
			if(!E2WApp.SortChannelID.equals("telecom")&&!E2WApp.SortChannelID.equals("unicom"))
				System.loadLibrary("megjb");
		}
		if (isGenuineGame)
		{
			myStatistics.init(Acontext);
		}
	}
	
	public void APPApplicationInit(Application context)
	{
		
		Acontext=context;
		checkLog();
		CheckChannelName();
		//Log.e("IAP","[SdkApplication][GetLocalSettingData]");	
		QinConst.GetLocalSettingData();
		QinConst.GetGameSettingData();
		QinConst.GetSeverSettingDate();
		checkExtSDK();
		//find carriers
		checkSIM();	
		checkChannel();		
		checkExchange();
		checkChannelName();
		checkMobileSplash();
		checkChannelSplash();
		
		JSXML();
		checkNumber();
		try 
		{
			 Log.e("IAP","[SdkApplication][QinConst.VerifyKey]="+QinConst.VerifyKey);
			 Log.e("IAP","[SdkApplication][MD5]="+MD5.getMessageDigest(getSign(context).getBytes()));
			 if (!QinConst.VerifyKey.equals(MD5.getMessageDigest(getSign(context).getBytes())))
			 {
				if (QinConst.VerifyKey.equals(""))
				{
					//没有配置，此时会下载远程配置文件进行校对，暂不做处理，如果远程也为空，不做处理
				}
				else
				{
					isGenuineGame=false;
					PirateGameNotice();
				}
			 }
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(iscarriersneed.equals("open"))
		{				
			if(!E2WApp.SortChannelID.equals("telecom")&&!E2WApp.SortChannelID.equals("unicom"))		
				System.loadLibrary("megjb");
		}
		if (isGenuineGame)
		{
			myStatistics.init(Acontext);
		}
		
	}
	public void CheckChannelName()
	{
		try {
			ApplicationInfo appInfo = null;
			try 
			{
				appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			} catch (NameNotFoundException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ChannelName = msg = appInfo.metaData.getString("CHANNEL_NAME");
			if(msg == null) {
				msg = "";
				ChannelName = "";
			}
		}
		catch (NullPointerException e) 
		{
		    Log.e(QinConst.TAG, "checkExtSDK:Failed to load meta-data, CHANNEL_NAME NameNotFound: " + e.getMessage());    
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
			} else 
			{
				mSimOperatorId = QinConst.ChinaMobile;			

			}						
		} catch (Exception e) {
			e.printStackTrace();		

		}
	}
	
	private void checkExtSDK() {		
		try {
			try {
			ApplicationInfo appInfo = null;
			try 
			{
				appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			} catch (NameNotFoundException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			msg = appInfo.metaData.getString("CHANNEL_NAME");
			String sdkName =msg;
			//QinConst.GetChannelID(sdkName);
			Log.e("IAP","[SDKApp]checkExtSDK="+msg);	
			if(sdkName.equals("qihu360"))
		    {
		    	mExtSDKId = QinConst.China360;
		    	Log.e(QinConst.TAG, "[E2WApp] vivo=ApplicationInit");
		    	mInAppExt = new InAppQIHU360();
		    	mInAppExt.ApplicationInit(Acontext);
		    }
		    else if(sdkName.equals("baidu_sjzs")||sdkName.equals("baidu")||sdkName.equals("baidu_tb")||sdkName.equals("baidu_91")||sdkName.equals("baidu_dk"))
		    {
		    	mExtSDKId = QinConst.ChinaBaidu;
		    }
		    else if(sdkName.equals("anzhi"))
		    {
		    	mExtSDKId = QinConst.ChinaAnzhi;
		    }
		    else if(sdkName.equals("uc"))
		    {
		    	mExtSDKId = QinConst.ChinaUC;
		    }
		    else if(sdkName.equals("xm"))
		    {
		    	mExtSDKId = QinConst.ChinaMi;
				Log.e(QinConst.TAG, "[E2WApp] oppo=ApplicationInit");
				mInAppExt = new InAppXM();
				mInAppExt.ApplicationInit(Acontext);
		    }
		    else if(sdkName.equals("oppo"))
		    {
		    	Log.e(QinConst.TAG, "[E2WApp] oppo=ApplicationInit");
		    	mExtSDKId = QinConst.ChinaOppo;
		    	mInAppExt = new InAppOPPO();
		    	mInAppExt.ApplicationInit(Acontext);
		    }
		    else if(sdkName.equals("wxgame"))
		    {
		    	mExtSDKId = QinConst.ChinaTencent;
		    }
		    else if(sdkName.equals("vivo"))
		    {
		    	Log.e(QinConst.TAG, "[E2WApp] vivo=ApplicationInit");
		    	mExtSDKId = QinConst.ChinaVivo;
		    	mInAppExt = new InAppVIVO();
		    	mInAppExt.ApplicationInit(Acontext);
		    }
		    else if(sdkName.equals("jl"))
		    {
		    	mExtSDKId = QinConst.Chinajl;
		    }
		    else if(sdkName.equals("ls"))
		    {
		    	mExtSDKId = QinConst.Chinals;
		    }
		    else if(sdkName.equals("wdj"))
		    {
		    	mExtSDKId = QinConst.Chinawdj;
		    }
		    else if(sdkName.equals("mz"))
		    {
		    	mExtSDKId = QinConst.Chinamz;
		    }
		    else if(sdkName.equals("chel_4399"))
		    {
		    	mExtSDKId = QinConst.Chinac4399;
		    }
		    else if(sdkName.equals("hw"))
		    {
		    	mExtSDKId = QinConst.Chinachw;
		    	Log.e(QinConst.TAG, "[E2WApp] hw=ApplicationInit");
		    	mInAppExt = new InAppHW();
		    	mInAppExt.ApplicationInit(Acontext);
		    }
		    else if(sdkName.equals("lxlsd"))
		    {
		    	mExtSDKId = QinConst.Chinalxlsd;
		    }
		    else if(sdkName.equals("lxyx"))
		    {
		    	mExtSDKId = QinConst.Chinalxyx;
		    }
		    else if(sdkName.equals("meitu"))
		    {
		    	mExtSDKId = QinConst.Chinameitu;
		    }
		    else if(sdkName.contains("east2west"))
		    {
		    	mExtSDKId = QinConst.Chinaceast2west;
		    }
		    else if(sdkName.equals("mzw"))
		    {
		    	mExtSDKId = QinConst.Chinamzw;
		    }
		    else if(sdkName.equals("dl"))
		    {
		    	mExtSDKId = QinConst.Chinadl;
		    }
		    else if(sdkName.equals("yyh"))
		    {
		    	mExtSDKId = QinConst.Chinayyh;
		    }
		    else if(sdkName.equals("taptap"))
		    {
		    	mExtSDKId = QinConst.Chinataptap;
		    }
		    else if(sdkName.equals("kp"))
		    {
		    	mExtSDKId = QinConst.Chinakp;
		    }
		    else if(sdkName.equals("txyyb"))
		    {
		    	mExtSDKId = QinConst.Chinatxyyb;
		    }
		    else if(sdkName.equals("samsung"))
		    {
		    	mExtSDKId = QinConst.Chinasamsung;
		    }
		    else if(sdkName.equals("aqy"))
		    {
		    	mExtSDKId = QinConst.Chinaaqy;
		    }
		    else if(sdkName.equals("e2wwk"))
		    {
		    	mExtSDKId = QinConst.Chinae2wwk;
		    	Log.e(QinConst.TAG, "[E2WApp] e2wwk=ApplicationInit");
		    	mInAppExt = new InAppE2WWK();
		    	mInAppExt.ApplicationInit(Acontext);
		    }	
		    else if(sdkName.equals("bilibili"))
		    {
		    	mExtSDKId = QinConst.Chinabilibili;
		    	Log.e(QinConst.TAG, "[E2WApp] e2wwk=ApplicationInit");
		    	mInAppExt = new InAppBILIBILI();
		    	mInAppExt.ApplicationInit(Acontext);
		    }	
else if(sdkName.equals("cuizi"))
{
mExtSDKId = QinConst.Chinacuizi;
Log.e(QinConst.TAG, "[E2WApp] cuizi=ApplicationInit");
mInAppExt = new InAppCUIZI();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("smartisan"))
{
mExtSDKId = QinConst.Chinasmartisan;
Log.e(QinConst.TAG, "[E2WApp] smartisan=ApplicationInit");
mInAppExt = new InAppSMARTISAN();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("huawei20180410"))
{
mExtSDKId = QinConst.Chinahuawei20180410;
Log.e(QinConst.TAG, "[E2WApp] huawei20180410=ApplicationInit");
mInAppExt = new InAppHUAWEI20180410();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("cuizi20180413"))
{
mExtSDKId = QinConst.Chinacuizi20180413;
Log.e(QinConst.TAG, "[E2WApp] cuizi20180413=ApplicationInit");
mInAppExt = new InAppCUIZI20180413();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("test"))
{
mExtSDKId = QinConst.Chinatest;
Log.e(QinConst.TAG, "[E2WApp] test=ApplicationInit");
mInAppExt = new InAppTEST();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("iqiyi20180425"))
{
mExtSDKId = QinConst.Chinaiqiyi20180425;
Log.e(QinConst.TAG, "[E2WApp] iqiyi20180425=ApplicationInit");
mInAppExt = new InAppIQIYI20180425();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("china3net"))
{
mExtSDKId = QinConst.Chinachina3net;
Log.e(QinConst.TAG, "[E2WApp] china3net=ApplicationInit");
mInAppExt = new InAppCHINA3NET();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("ysdk20180516"))
{
mExtSDKId = QinConst.Chinaysdk20180516;
Log.e(QinConst.TAG, "[E2WApp] ysdk20180516=ApplicationInit");
mInAppExt = new InAppYSDK20180516();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("jinli20180518"))
{
mExtSDKId = QinConst.Chinajinli20180518;
Log.e(QinConst.TAG, "[E2WApp] jinli20180518=ApplicationInit");
mInAppExt = new InAppJINLI20180518();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("bilibili20180530"))
{
mExtSDKId = QinConst.Chinabilibili20180530;
Log.e(QinConst.TAG, "[E2WApp] bilibili20180530=ApplicationInit");
mInAppExt = new InAppBILIBILI20180530();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("jrtt20180531"))
{
mExtSDKId = QinConst.Chinajrtt20180531;
Log.e(QinConst.TAG, "[E2WApp] jrtt20180531=ApplicationInit");
mInAppExt = new InAppJRTT20180531();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("qihoo36020180601"))
{
mExtSDKId = QinConst.Chinaqihoo36020180601;
Log.e(QinConst.TAG, "[E2WApp] qihoo36020180601=ApplicationInit");
mInAppExt = new InAppQIHOO36020180601();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("ucpay20180606"))
{
mExtSDKId = QinConst.Chinaucpay20180606;
Log.e(QinConst.TAG, "[E2WApp] ucpay20180606=ApplicationInit");
mInAppExt = new InAppUCPAY20180606();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("xmpay20180607"))
{
mExtSDKId = QinConst.Chinaxmpay20180607;
Log.e(QinConst.TAG, "[E2WApp] xmpay20180607=ApplicationInit");
mInAppExt = new InAppXMPAY20180607();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("bilibili20180611"))
{
mExtSDKId = QinConst.Chinabilibili20180611;
Log.e(QinConst.TAG, "[E2WApp] bilibili20180611=ApplicationInit");
mInAppExt = new InAppBILIBILI20180611();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("wdjpay20180608"))
{
mExtSDKId = QinConst.Chinawdjpay20180608;
Log.e(QinConst.TAG, "[E2WApp] wdjpay20180608=ApplicationInit");
mInAppExt = new InAppWDJPAY20180608();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("debug20180620"))
{
mExtSDKId = QinConst.Chinadebug20180620;
Log.e(QinConst.TAG, "[E2WApp] debug20180620=ApplicationInit");
mInAppExt = new InAppDEBUG20180620();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("ucpay20180628"))
{
mExtSDKId = QinConst.Chinaucpay20180628;
Log.e(QinConst.TAG, "[E2WApp] ucpay20180628=ApplicationInit");
mInAppExt = new InAppUCPAY20180628();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("iqiyi20180628"))
{
mExtSDKId = QinConst.Chinaiqiyi20180628;
Log.e(QinConst.TAG, "[E2WApp] iqiyi20180628=ApplicationInit");
mInAppExt = new InAppIQIYI20180628();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("bilibilipay20180629"))
{
mExtSDKId = QinConst.Chinabilibilipay20180629;
Log.e(QinConst.TAG, "[E2WApp] bilibilipay20180629=ApplicationInit");
mInAppExt = new InAppBILIBILIPAY20180629();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("xmhw20180814"))
{
mExtSDKId = QinConst.Chinaxmhw20180814;
Log.e(QinConst.TAG, "[E2WApp] xmhw20180814=ApplicationInit");
mInAppExt = new InAppXMHW20180814();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("xmhw20180814"))
{
mExtSDKId = QinConst.Chinaxmhw20180814;
Log.e(QinConst.TAG, "[E2WApp] xmhw20180814=ApplicationInit");
mInAppExt = new InAppXMHW20180814();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("chel_439920180801"))
{
mExtSDKId = QinConst.Chinachel_439920180801;
Log.e(QinConst.TAG, "[E2WApp] chel_439920180801=ApplicationInit");
mInAppExt = new InAppCHEL_439920180801();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("oppo20180817"))
{
mExtSDKId = QinConst.Chinaoppo20180817;
Log.e(QinConst.TAG, "[E2WApp] oppo20180817=ApplicationInit");
mInAppExt = new InAppOPPO20180817();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("vivopay20180813"))
{
mExtSDKId = QinConst.Chinavivopay20180813;
Log.e(QinConst.TAG, "[E2WApp] vivopay20180813=ApplicationInit");
mInAppExt = new InAppVIVOPAY20180813();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("ysdk20180816"))
{
mExtSDKId = QinConst.Chinaysdk20180816;
Log.e(QinConst.TAG, "[E2WApp] ysdk20180816=ApplicationInit");
mInAppExt = new InAppYSDK20180816();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("oppopay20181016"))
{
mExtSDKId = QinConst.Chinaoppopay20181016;
Log.e(QinConst.TAG, "[E2WApp] oppopay20181016=ApplicationInit");
mInAppExt = new InAppOPPOPAY20181016();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("xm20181024"))
{
mExtSDKId = QinConst.Chinaxm20181024;
Log.e(QinConst.TAG, "[E2WApp] xm20181024=ApplicationInit");
mInAppExt = new InAppXM20181024();
mInAppExt.ApplicationInit(Acontext);
}
else if(sdkName.equals("jrtt20181218"))
{
mExtSDKId = QinConst.Chinajrtt20181218;
Log.e(QinConst.TAG, "[E2WApp] jrtt20181218=ApplicationInit");
mInAppExt = new InAppJRTT20181218();
mInAppExt.ApplicationInit(Acontext);
}
//AddCodePython
		    else if(sdkName.equals("mobile"))
		    {
		    	mSimOperatorId = QinConst.ChinaMobile;
		    	mExtSDKId= QinConst.ChinaMobile;
		    }
		    else if(sdkName.equals("telecom"))
		    {
		    	mSimOperatorId = QinConst.ChinaTelecom;
		    	mExtSDKId= QinConst.ChinaTelecom;
		    }
		    else if(sdkName.equals("unicom"))
		    {
		    	mSimOperatorId = QinConst.ChinaUnicom;
		    	mExtSDKId= QinConst.ChinaUnicom;
		    }		
			
		} 
		catch (NullPointerException e) 
		{
		    Log.e(QinConst.TAG, "checkExtSDK:Failed to load meta-data, CHANNEL_NAME NameNotFound: " + e.getMessage());
		    mExtSDKId = -1;		    
		} 
		}
			catch (NullPointerException e) 
		{
		    Log.e(QinConst.TAG, "checkExtSDK:Failed to load meta-data, CHANNEL_NAME NullPointer: " + e.getMessage());         
		    mExtSDKId = -1;
		}
		
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
			else if(E2WApp.SortChannelID.equals("baidu"))
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
			if(iscarriersneed == null)
				iscarriersneed="";
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
			if(channelSplash == null)
				channelSplash="0";
			Log.e(QinConst.TAG, "[checkChannelSplash]channelnametmp:[" + channelnametmp+"]");
			Log.e(QinConst.TAG, "[checkChannelSplash]channelSplash:[" + channelSplash+"]");
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkChannelSplash to load meta-data CHANNEL_SPLASH, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkChannelSplash to load meta-data CHANNEL_SPLASH, NullPointer: " + e.getMessage());         
		}

	}
	private void checkLog()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String isLogOpentmp = appInfo.metaData.getString("E2W_LOG");
			isAntLogOpen =isLogOpentmp;
			if(isAntLogOpen==null)
				isAntLogOpen="";
			if(isAntLogOpen.equals("open"))
			{
				Log.e("IAP","Log Verison:"+QinConst.LogVERSION);
			}
		} catch (NameNotFoundException e) {
			isAntLogOpen="";
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_LOG, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
			isAntLogOpen="";
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
			if(e2wnumber==null)
				e2wnumber="east2west_cps1";
		} catch (NameNotFoundException e) {
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_NUMBER, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data E2W_NUMBER, NullPointer: " + e.getMessage());         
		}

	}
	private void checkExchange()
	{
		ApplicationInfo appInfo = null;
		try 
		{
			appInfo = Acontext.getPackageManager().getApplicationInfo(Acontext.getPackageName(),PackageManager.GET_META_DATA);
			String ExchangeTemp = appInfo.metaData.getString("E2W_EXCHANGE");
			Log.e(QinConst.TAG, "[checkExchange] ExchangeTemp = "+ExchangeTemp);	
			myExchange =ExchangeTemp;	
			if(myExchange==null)
				myExchange="";
		} catch (NameNotFoundException e) {
			myExchange="true";
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data myExchange, NameNotFound: " + e.getMessage());
		    
		} catch (NullPointerException e) {
			myExchange="true";
		    Log.e(QinConst.TAG, "checkLoge:Failed to load meta-data myExchange, NullPointer: " + e.getMessage());         
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

public static void LogLocal(final String news)
{				
	if(SdkApplication.isAntLogOpen.equals("open"))
	{
		Log.e(QinConst.TAG,news);
	}
}
	public void PirateGameNotice()
	{
		new Thread(new Runnable()
		{
			public void run()
			{
				int count = 0;
				while(true)
				{
					try
					{
						if(count == 0)
						{
							DisPlayAndroidText(Acontext);
						}
						if(count == 5)
						{
							System.exit(0);
							android.os.Process.killProcess(android.os.Process.myPid());
						}
						Thread.sleep(1000L);
						count++;

					}
					catch (InterruptedException e)
					{
						e.printStackTrace();
					}
				}
			}
		}).start();
	}
	public void DisPlayAndroidText(final Context context)
	{
		Handler handler = new Handler(Looper.getMainLooper());
		handler.post(
				new Runnable()
				{
					@Override
					public void run()
					{

						Toast.makeText(context, "请登录www.east2west.cn获取正版游戏", Toast.LENGTH_SHORT).show();
					}
				}
		);
	}

}
