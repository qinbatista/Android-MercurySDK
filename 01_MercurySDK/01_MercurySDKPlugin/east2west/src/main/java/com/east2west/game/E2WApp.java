package com.east2west.game;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.east2west.game.Show.InAppShowAM;
import com.east2west.game.Show.InAppShowBD;
import com.east2west.game.Show.InAppShowCS;
import com.east2west.game.Show.InAppShowE2WAD;
import com.east2west.game.Show.InAppShowJD;
import com.east2west.game.Show.InAppShowJL;
import com.east2west.game.Show.InAppShowJRTT;
import com.east2west.game.Show.InAppShowJS;
import com.east2west.game.Show.InAppShowMZ;
import com.east2west.game.Show.InAppShowOPPOAD20180615;
import com.east2west.game.Show.InAppShowT1;
import com.east2west.game.Show.InAppShowT2;
import com.east2west.game.Show.InAppShowT3;
import com.east2west.game.Show.InAppShowTESTAD;
import com.east2west.game.Show.InAppShowTX;
import com.east2west.game.Show.InAppShowVIVOAD20180605;
import com.east2west.game.Show.InAppShowWZ;
import com.east2west.game.Show.InAppShowXM;
import com.east2west.game.Show.InAppShowYB;
import com.east2west.game.Show.InAppShowYM;
import com.east2west.game.Show.InAppShowYOMOD20181112;
import com.east2west.game.System.InAppBackUp;
import com.east2west.game.System.InAppBaseOperation;
import com.east2west.game.System.InAppBaseRestore;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppANZHI;
import com.east2west.game.inApp.InAppAQY;
import com.east2west.game.inApp.InAppBAIDU;
import com.east2west.game.inApp.InAppBILIBILI;
import com.east2west.game.inApp.InAppBILIBILI20180530;
import com.east2west.game.inApp.InAppBILIBILI20180611;
import com.east2west.game.inApp.InAppBILIBILIPAY20180629;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.inApp.InAppCHEL_4399;
import com.east2west.game.inApp.InAppCHEL_439920180801;
import com.east2west.game.inApp.InAppCHINA3NET;
import com.east2west.game.inApp.InAppCUIZI;
import com.east2west.game.inApp.InAppCUIZI20180413;
import com.east2west.game.inApp.InAppDEBUG20180620;
import com.east2west.game.inApp.InAppDL;
import com.east2west.game.inApp.InAppDefault;
import com.east2west.game.inApp.InAppEAST2WEST;
import com.east2west.game.inApp.InAppHUAWEI20180410;
import com.east2west.game.inApp.InAppHW;
import com.east2west.game.inApp.InAppIQIYI20180425;
import com.east2west.game.inApp.InAppIQIYI20180628;
import com.east2west.game.inApp.InAppJINLI20180518;
import com.east2west.game.inApp.InAppJL;
import com.east2west.game.inApp.InAppJRTT20180531;
import com.east2west.game.inApp.InAppKP;
import com.east2west.game.inApp.InAppLS;
import com.east2west.game.inApp.InAppLXLSD;
import com.east2west.game.inApp.InAppLXYX;
import com.east2west.game.inApp.InAppMEITU;
import com.east2west.game.inApp.InAppMZ;
import com.east2west.game.inApp.InAppMZW;
import com.east2west.game.inApp.InAppMobileMarket;
import com.east2west.game.inApp.InAppOPPO;
import com.east2west.game.inApp.InAppOPPO20180817;
import com.east2west.game.inApp.InAppOPPOPAY20181016;
import com.east2west.game.inApp.InAppQIHOO36020180601;
import com.east2west.game.inApp.InAppQIHU360;
import com.east2west.game.inApp.InAppSAMSUNG;
import com.east2west.game.inApp.InAppSMARTISAN;
import com.east2west.game.inApp.InAppTAPTAP;
import com.east2west.game.inApp.InAppTEST;
import com.east2west.game.inApp.InAppTXYYB;
import com.east2west.game.inApp.InAppTelecom;
import com.east2west.game.inApp.InAppUC;
import com.east2west.game.inApp.InAppUCPAY20180606;
import com.east2west.game.inApp.InAppUCPAY20180628;
import com.east2west.game.inApp.InAppUnicom;
import com.east2west.game.inApp.InAppVIVO;
import com.east2west.game.inApp.InAppVIVOPAY20180813;
import com.east2west.game.inApp.InAppWDJ;
import com.east2west.game.inApp.InAppWDJPAY20180608;
import com.east2west.game.System.InAppWeChatShare;
import com.east2west.game.inApp.InAppXM;
import com.east2west.game.inApp.InAppXM20181024;
import com.east2west.game.inApp.InAppXMHW20180814;
import com.east2west.game.inApp.InAppXMPAY20180607;
import com.east2west.game.inApp.InAppYSDK20180516;
import com.east2west.game.inApp.InAppYSDK20180816;
import com.east2west.game.inApp.InAppYYH;
import com.east2west.game.util.MD5;

import org.apache.http.util.EncodingUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import com.east2west.game.Show.InAppShowJINSANYUN20181123;
import com.east2west.game.Show.InAppShowXIAOMIAD20181126;
import com.east2west.game.Show.InAppShowXMAD20181212;

import static com.east2west.game.SdkApplication.Acontext;
import com.east2west.game.Show.InAppShowOPPO20181214;
import com.east2west.game.inApp.InAppJRTT20181218;
import com.east2west.game.Show.InAppShowJRTTAD20181219;
import com.east2west.game.Show.InAppShowCHAL_439920181220;
//AddCodeImportPython

public class E2WApp {

	public static Context mContext = null;

	public static InAppBase mInApp;
	public static InAppBase mInAppShow;
	public static InAppBase mInAppExt;
	public static InAppBase mInShare;

	public static int mSimOperatorId;
	private int mChannelId;
	private int mExtSDKId = -1;
	public static String ChannelForServer;
	//private String msg_string;
	//public static int msg;
	public static String nikeString;
	public int platform;
	public static String packagenameforuse;
	public static String isLogOpen = "";
	public static E2WApp activityforappbase = null;
	public static int Platform = -1;
	public static String DeviceId = "";
	public static String SavePidName = "";
	public static String SortChannelID = "";
	public static String LongChannelID = "";
	private static ImageView img = null;
	public static String payorderID = "";
	public static String imei = "";
	private static final int REQUEST_CODE = 10002;

	public void InitE2WSDK(Context ContextForE2wSDK) {
		mContext = ContextForE2wSDK;
		ChannelSplash();
		InAppBase.qc = new QinConst();
		mSimOperatorId = SdkApplication.getSimOperatorId();
		mExtSDKId = SdkApplication.getExtSDKId();
		mChannelId = SdkApplication.getChannelId();
		ChannelForServer = SdkApplication.getChannelname();
		activityforappbase = this;
		if (mExtSDKId == QinConst.ChinaTencent) {
			LogLocal("[E2WApp] InitE2WSDK InitChannel->wxgame");
			InitChannel(null);
		}

		getDeviceId(ContextForE2wSDK);
		mInApp = new InAppDefault();
		LogLocal("[E2WApp] isTaskRoot()->" + mContext);


		if (!((Activity) mContext).isTaskRoot()) {
			/* If this is not the root activity */
			Intent intent = ((Activity) mContext).getIntent();
			String action = intent.getAction();
			if (intent.hasCategory(Intent.CATEGORY_LAUNCHER) && Intent.ACTION_MAIN.equals(action)) {
				((Activity) mContext).finish();
				return;
			}
		}

	}

	public void Rate(String sku, String channelname, String uid, String star, String feedback, String version) {
		SdkApplication.myStatistics.Rate(sku, channelname, uid, star, feedback, version);
	}
	public String GetSKU()
	{
        E2WApp.LogLocal("[GetSKU] QinConst.exchangeID="+QinConst.exchangeID);
		if (QinConst.exchangeID.equals(""))
		{
			QinConst.exchangeID="0000";
		}
		return QinConst.exchangeID;
	}
	public String GetChannelName()
	{
		return SdkApplication.msg;
	}
	public String UserID()
	{
		return DeviceId;
	}

	public void ChannelSplash() {
		E2WApp.LogLocal("[inapp] ChannelSplash.png");
		try {
			final RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(
					RelativeLayout.LayoutParams.MATCH_PARENT,
					RelativeLayout.LayoutParams.MATCH_PARENT);
			String name = "ChannelSplash.png";
			InputStream in = E2WApp.mContext.getResources().getAssets().open(name);
			if (in != null) {
				final Bitmap bitmap = BitmapFactory.decodeStream(in);
				// activity.getWindow().getDecorView().getHandler().postDelayed(
				((Activity) E2WApp.mContext).runOnUiThread(new Runnable() {
					@Override
					public void run() {
						// TODO Auto-generated method stub
						final ImageView image = new ImageView(E2WApp.mContext);
						image.setImageBitmap(bitmap);
						((Activity) E2WApp.mContext).addContentView(image, params);
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
										if (vg != null && image != null) {
											vg.removeView(image);
										}
									}
								});
							}

						}).start();
					}
				});
			}
		} catch (Exception e) {
			e.printStackTrace();
			E2WApp.LogLocal("[E2WApp][This error will is normal] e=" + e.toString());
		}
	}

	public String GetPrice() {
		E2WApp.LogLocal("[E2WApp]->QinConst.ServerPrice1=" + QinConst.Serverpricefloat1);
		float i = Float.valueOf(QinConst.Serverpricefloat1);
		return (int) i + "";
	}

	public String GetChannelSortID() {

		return SdkApplication.msg;
	}

	public void Remove() {
		new Handler().postDelayed(new Runnable() {
			public void run() {
				LogLocal("[E2WApp] Remove Splash");
				removeLaunchImage();
				mInApp = new InAppBase();
				mInApp.onFunctionCallBack("SplashEnd");

			}
		}, 4000);

	}

	public boolean IsTencentChannel() {

		if (SdkApplication.msg.equals("ysdk20180516") || SdkApplication.msg.equals("ysdk20180816")) {
			LogLocal("[E2WApp][IsTencentChannel] called:true");
			return true;
		} else {
			LogLocal("[E2WApp][IsTencentChannel] called:false");
			return false;
		}
	}



	public void removeLaunchImage() {
		new Handler(mContext.getMainLooper()).post(new Runnable() {
			@Override
			public void run() {
				if (img != null) {
					img.setVisibility(View.GONE);
				}
			}
		});
	}

	public void InitChannel(final APPBaseInterface appcall) {
		LogLocal("[E2WApp] InitChannel call" + appcall);
		packagenameforuse = mContext.getPackageName();
		InitChannel_APP(appcall);


	}

	public void InitChannel(final APPBaseInterface appcall, final String strAppId, final String strAppKey) {
		LogLocal("[E2WApp] InitChannel call" + appcall);
		InitChannel_APP(strAppId, strAppKey, appcall);
	}

	public void InitCarriers(final APPBaseInterface appcall) {
		final Context applicationContext = mContext.getApplicationContext();
		LogLocal("[Carriers Android] InitCarriers->" + mSimOperatorId + " iscarriersneed=" + SdkApplication.iscarriersneed);
		if (SdkApplication.iscarriersneed.equals("open") && (mSimOperatorId == QinConst.ChinaUnicom
				|| mSimOperatorId == QinConst.ChinaTelecom || mSimOperatorId == QinConst.ChinaMobile)) {
			switch (mSimOperatorId) {
				case QinConst.ChinaUnicom:
					mInApp = new InAppUnicom();
					break;
				case QinConst.ChinaTelecom:
					mInApp = new InAppTelecom();
					break;
				case QinConst.ChinaNull:
					mInApp = new InAppBase();
				default:
					mInApp = new InAppMobileMarket();
					break;
			}
			if (mInApp != null) {
				mInApp.init(applicationContext, (Activity) mContext, "", "", appcall);
			}
		}
	}

	public void InitCarriers(final APPBaseInterface appcall, final String strAppId, final String strAppKey) {

		final Context applicationContext = mContext.getApplicationContext();
		LogLocal("[E2WApp] InitCarriers->" + mSimOperatorId + " iscarriersneed=" + SdkApplication.iscarriersneed);
		if (SdkApplication.iscarriersneed.equals("open")) {
			switch (mSimOperatorId) {
				case QinConst.ChinaUnicom:
					mInApp = new InAppUnicom();
					break;
				case QinConst.ChinaTelecom:
					mInApp = new InAppTelecom();
					break;
				case QinConst.ChinaNull:
					mInApp = new InAppBase();
				default:
					mInApp = new InAppMobileMarket();
					break;
			}
			if (mInApp != null) {
				mInApp.init(applicationContext, (Activity) mContext, strAppId, strAppKey, appcall);
			}
		}
	}

public static String getDeviceId(Context context) {

    String strUserID = "";
    imei = "";

    if(SdkApplication.ChannelName.equals(""))
    {
		LogLocal("[E2WApp] skip IMEI");
    }
    else
    {
        try {
            //IMEI（imei）
            TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
            if (ActivityCompat.checkSelfPermission(mContext, Manifest.permission.READ_PHONE_STATE) != PackageManager.PERMISSION_GRANTED) {
                // TODO: Consider calling
                //    ActivityCompat#requestPermissions
                // here to request the missing permissions, and then overriding
                //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                //                                          int[] grantResults)
                // to handle the case where the user grants the permission. See the documentation
                // for ActivityCompat#requestPermissions for more details.
                imei = tm.getDeviceId();
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
      LogLocal("[E2WApp] -imei = ["+imei+"]");
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
//	public static boolean checkoutPermission(final Activity activity) {
//		try
//		{
//	    boolean writeExternalStoragePermission =
//	        ContextCompat.checkSelfPermission(activity, Manifest.permission.WRITE_EXTERNAL_STORAGE)
//	            == PackageManager.PERMISSION_GRANTED;
//	    boolean readExternalStoragePermission =
//	        ContextCompat.checkSelfPermission(activity, Manifest.permission.READ_EXTERNAL_STORAGE)
//	            == PackageManager.PERMISSION_GRANTED;
//	    boolean readPhoneStatePermission =
//	        ContextCompat.checkSelfPermission(activity, Manifest.permission.READ_PHONE_STATE)
//	            == PackageManager.PERMISSION_GRANTED;
//
//	    boolean callPhonePermission =
//	        ContextCompat.checkSelfPermission(activity, Manifest.permission.CALL_PHONE)
//	            == PackageManager.PERMISSION_GRANTED;
//
//	    boolean readContactPermission =
//	        ContextCompat.checkSelfPermission(activity, Manifest.permission.READ_CONTACTS)
//	            == PackageManager.PERMISSION_GRANTED;
//
//	    boolean receiveSmsPermission =
//	        ContextCompat.checkSelfPermission(activity, Manifest.permission.RECEIVE_SMS)
//	            == PackageManager.PERMISSION_GRANTED;
//
//	    boolean permission = (writeExternalStoragePermission && readExternalStoragePermission
//	        && readPhoneStatePermission
//	        && callPhonePermission
//	        && readContactPermission
//	        && receiveSmsPermission
//	    );
//	    return permission;
//		}
//		catch(Exception e)
//		{
//			return false;
//		}
//
//	  }
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
	public void InitAd(final APPBaseInterface appcall)
	{
		String platform=QinConst.ADChannel;
		platform = platform.toLowerCase();
		LogLocal("[E2WApp] InitAd->"+platform);
		final Context applicationContext = mContext.getApplicationContext();
		
		switch(platform)
		{
			case "tx": mInAppShow = new InAppShowTX();break;
			case "am": mInAppShow = new InAppShowAM();break;
			case "ym": mInAppShow = new InAppShowYM();break;
			case "mz": mInAppShow = new InAppShowMZ();break;
			case "bd": mInAppShow = new InAppShowBD();break;
			case "xm": mInAppShow = new InAppShowXM();break;
			case "yb": mInAppShow = new InAppShowYB();break;
			case "cs": mInAppShow = new InAppShowCS();break;
			case "jd": mInAppShow = new InAppShowJD();break;
			case "jl": mInAppShow = new InAppShowJL();break;
			case "js": mInAppShow = new InAppShowJS();break;
			case "wz": mInAppShow = new InAppShowWZ();break;
			case "t1": mInAppShow = new InAppShowT1();break;
			case "t2": mInAppShow = new InAppShowT2();break;
			case "t3": mInAppShow = new InAppShowT3();break;
case "e2wad": mInAppShow = new InAppShowE2WAD();break;
case "testad": mInAppShow = new InAppShowTESTAD();break;
case "jrtt": mInAppShow = new InAppShowJRTT();break;
case "vivoad20180605": mInAppShow = new InAppShowVIVOAD20180605();break;
case "oppoad20180615": mInAppShow = new InAppShowOPPOAD20180615();break;
case "yomod20181112": mInAppShow = new InAppShowYOMOD20181112();break;
case "jinsanyun20181123": mInAppShow = new InAppShowJINSANYUN20181123();break;
case "xiaomiad20181126": mInAppShow = new InAppShowXIAOMIAD20181126();break;
case "xmad20181212": mInAppShow = new InAppShowXMAD20181212();break;
case "oppo20181214": mInAppShow = new InAppShowOPPO20181214();break;
case "jrttad20181219": mInAppShow = new InAppShowJRTTAD20181219();break;
case "chal_439920181220": mInAppShow = new InAppShowCHAL_439920181220();break;
//PythonAdCode
		}
			
		if(mInAppShow != null)
		{
			mInAppShow.ApplicationInit(Acontext);
			mInAppShow.init(applicationContext, (Activity)mContext, "", "",appcall);
		}
	}
	public void InitAd(final APPBaseInterface appcall,final String platform)
	{

		LogLocal("[E2WApp] InitAd->"+platform);
		final Context applicationContext = mContext.getApplicationContext();
		switch(platform)
		{
			case "tx": mInAppShow = new InAppShowTX();break;
			case "am": mInAppShow = new InAppShowAM();break;
			case "ym": mInAppShow = new InAppShowYM();break;
			case "mz": mInAppShow = new InAppShowMZ();break;
			case "bd": mInAppShow = new InAppShowBD();break;
			case "xm": mInAppShow = new InAppShowXM();break;
			case "yb": mInAppShow = new InAppShowYB();break;
			case "cs": mInAppShow = new InAppShowCS();break;
			case "jd": mInAppShow = new InAppShowJD();break;
			case "jl": mInAppShow = new InAppShowJL();break;
			case "js": mInAppShow = new InAppShowJS();break;
			case "wz": mInAppShow = new InAppShowWZ();break;
			case "t1": mInAppShow = new InAppShowT1();break;
			case "t2": mInAppShow = new InAppShowT2();break;
			case "t3": mInAppShow = new InAppShowT3();break;
case "E2WAD": mInAppShow = new InAppShowE2WAD();break;
case "testad": mInAppShow = new InAppShowTESTAD();break;
case "jrtt": mInAppShow = new InAppShowJRTT();break;
case "vivoad20180605": mInAppShow = new InAppShowVIVOAD20180605();break;
case "oppoad20180615": mInAppShow = new InAppShowOPPOAD20180615();break;
case "yomod20181112": mInAppShow = new InAppShowYOMOD20181112();break;
case "jinsanyun20181123": mInAppShow = new InAppShowJINSANYUN20181123();break;
case "xiaomiad20181126": mInAppShow = new InAppShowXIAOMIAD20181126();break;
case "xmad20181212": mInAppShow = new InAppShowXMAD20181212();break;
case "oppo20181214": mInAppShow = new InAppShowOPPO20181214();break;
case "jrttad20181219": mInAppShow = new InAppShowJRTTAD20181219();break;
case "chal_439920181220": mInAppShow = new InAppShowCHAL_439920181220();break;
//PythonAdCode
		}			
		if(mInAppShow != null)
		{
			mInAppShow.ApplicationInit(Acontext);
			mInAppShow.init(applicationContext, (Activity)mContext, "", "",appcall);
		}

	}
	

	
	public void purchaseProduct(String pidname) {
		LogLocal("[E2WApp] purchaseProduct: " + pidname);

		DateFormat format = new java.text.SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.US);
        String requestId = format.format(new Date());
        Random r = new Random();
        requestId = requestId + r.nextInt(100);
        InAppBase.OrderID=requestId;
		SavePidName=pidname;
		QinConst.PayInfo(pidname);
		LogLocal("[E2WApp]-> OrderID="+InAppBase.OrderID);
	    LogLocal("[E2WApp]-> QinConst.QinPid="+QinConst.QinPid);
	    LogLocal("[E2WApp]-> mInAppExt="+mInAppExt);
		QinConst.AnalysisID(QinConst.QinPid);		
		InAppBase iap = mInApp;
		payorderID="account"+System.currentTimeMillis() + new Random().nextInt(1000) + "";
		if(SdkApplication.ChannelName.equals(""))
		{
			LogLocal("[E2WApp][purchaseProduct]-> iap="+iap);
			iap.purchase(QinConst.QinPid, QinConst.Qindesc, QinConst.Qinpricefloat);
		}
		else if(mInAppExt != null) 
		{
			iap = mInAppExt;
			LogLocal("[E2WApp] Channel Purchase iap->"+iap);
			LogLocal("[E2WApp] QinConst.QinPid:"+QinConst.QinPid);
			LogLocal("[E2WApp] QinConst.Qindesc:"+QinConst.Qindesc);
			LogLocal("[E2WApp] QinConst.Qinpricefloat:"+QinConst.Qinpricefloat);
			iap.purchase(QinConst.QinPid, QinConst.Qindesc, QinConst.Qinpricefloat);	    
		}
		else
		{
			LogLocal("[E2WApp] Carriers Purchase iap->"+iap);
			iap.purchase(QinConst.QinPid, QinConst.Qindesc, QinConst.Qinpricefloat);
		}
		SdkApplication.myStatistics.onChargeRequest(InAppBase.OrderID,QinConst.Qindesc,QinConst.Qinpricefloat,"RMB",0f,SdkApplication.channelname+"_"+SdkApplication.e2wnumber);
	}



	public String ShortChannelID()
	{
		return SortChannelID;
	}
	public String LongChannelID()
	{
		return LongChannelID;
	}

	private void InitChannel_APP(final APPBaseInterface appcall) {
		final Context applicationContext = mContext.getApplicationContext();		

		LogLocal("[E2WApp] Local InitChannel()->"+mExtSDKId);
		switch(mExtSDKId)
		{
			case QinConst.ChinaAnzhi:
			mInAppExt = new InAppANZHI();
			break;
			case QinConst.China360:
			mInAppExt = new InAppQIHU360();
			break;
			case QinConst.ChinaBaidu:
			mInAppExt = new InAppBAIDU();
			break;
			case QinConst.ChinaUC:
			mInAppExt = new InAppUC();					
			break;
			case QinConst.ChinaOppo:
			mInAppExt = new InAppOPPO();					
			break;
			case QinConst.ChinaMi:
			mInAppExt = new InAppXM();					
			break;
			case QinConst.ChinaVivo:
			mInAppExt = new InAppVIVO();
			break;
			case QinConst.Chinajl:
			mInAppExt = new InAppJL();
			break;
			case QinConst.Chinals:
			mInAppExt = new InAppLS();
			break;
			case QinConst.Chinawdj:
			mInAppExt = new InAppWDJ();
			break;
			case QinConst.Chinamz:
			mInAppExt = new InAppMZ();
			break;
			case QinConst.Chinac4399:
			mInAppExt = new InAppCHEL_4399();
			break;
			case QinConst.Chinalxlsd:
			mInAppExt = new InAppLXLSD();
			break;
			case QinConst.Chinalxyx:
			mInAppExt = new InAppLXYX();
			break;
			case QinConst.Chinachw:
			mInAppExt = new InAppHW();
			break;
			case QinConst.Chinameitu:
			mInAppExt = new InAppMEITU();
			break;
			case QinConst.Chinaceast2west:
			mInAppExt = new InAppEAST2WEST();
			break;
			case QinConst.Chinamzw:
			mInAppExt = new InAppMZW();
			break;
			case QinConst.Chinadl:
			mInAppExt = new InAppDL();
			break;
			case QinConst.Chinayyh:
			mInAppExt = new InAppYYH();
			break;
			case QinConst.Chinakp:
			mInAppExt = new InAppKP();
			break;
			case QinConst.Chinatxyyb:
			mInAppExt = new InAppTXYYB();
			break;
			case QinConst.Chinataptap:
			mInAppExt = new InAppTAPTAP();
			break;
			case QinConst.Chinaaqy:
			mInAppExt = new InAppAQY();
			break;
			case QinConst.Chinasamsung:
			mInAppExt = new InAppSAMSUNG();
			break;
			case QinConst.Chinabilibili:
			mInAppExt = new InAppBILIBILI();
			break;
case QinConst.Chinacuizi:
mInAppExt = new InAppCUIZI();
break;
case QinConst.Chinasmartisan:
mInAppExt = new InAppSMARTISAN();
break;
case QinConst.Chinahuawei20180410:
mInAppExt = new InAppHUAWEI20180410();
break;
case QinConst.Chinacuizi20180413:
mInAppExt = new InAppCUIZI20180413();
break;
case QinConst.Chinatest:
mInAppExt = new InAppTEST();
break;
case QinConst.Chinaiqiyi20180425:
mInAppExt = new InAppIQIYI20180425();
break;
case QinConst.Chinachina3net:
mInAppExt = new InAppCHINA3NET();
break;
case QinConst.Chinaysdk20180516:
mInAppExt = new InAppYSDK20180516();
break;
case QinConst.Chinajinli20180518:
mInAppExt = new InAppJINLI20180518();
break;
case QinConst.Chinabilibili20180530:
mInAppExt = new InAppBILIBILI20180530();
break;
case QinConst.Chinajrtt20180531:
mInAppExt = new InAppJRTT20180531();
break;
case QinConst.Chinaqihoo36020180601:
mInAppExt = new InAppQIHOO36020180601();
break;
case QinConst.Chinaucpay20180606:
mInAppExt = new InAppUCPAY20180606();
break;
case QinConst.Chinaxmpay20180607:
mInAppExt = new InAppXMPAY20180607();
break;
case QinConst.Chinabilibili20180611:
mInAppExt = new InAppBILIBILI20180611();
break;
case QinConst.Chinawdjpay20180608:
mInAppExt = new InAppWDJPAY20180608();
break;
case QinConst.Chinadebug20180620:
mInAppExt = new InAppDEBUG20180620();
break;
case QinConst.Chinaucpay20180628:
mInAppExt = new InAppUCPAY20180628();
break;
case QinConst.Chinaiqiyi20180628:
mInAppExt = new InAppIQIYI20180628();
break;
case QinConst.Chinabilibilipay20180629:
mInAppExt = new InAppBILIBILIPAY20180629();
break;
case QinConst.Chinaxmhw20180814:
mInAppExt = new InAppXMHW20180814();
break;
case QinConst.Chinachel_439920180801:
mInAppExt = new InAppCHEL_439920180801();
break;
case QinConst.Chinaoppo20180817:
mInAppExt = new InAppOPPO20180817();
break;
case QinConst.Chinavivopay20180813:
mInAppExt = new InAppVIVOPAY20180813();
break;
case QinConst.Chinaysdk20180816:
mInAppExt = new InAppYSDK20180816();
break;
case QinConst.Chinaoppopay20181016:
mInAppExt = new InAppOPPOPAY20181016();
break;
case QinConst.Chinaxm20181024:
mInAppExt = new InAppXM20181024();
break;
case QinConst.Chinajrtt20181218:
mInAppExt = new InAppJRTT20181218();
break;
//AddCodePython
		}
		LogLocal("[E2WApp] InitChannel()->mInAppExt="+mInAppExt);	
		if(mInAppExt != null)
		{			
			mInAppExt.init(applicationContext, (Activity)mContext, QinConst.APPID, QinConst.APPKEY,appcall);
		}
		else
		{
			mInApp.init(applicationContext, (Activity)mContext, QinConst.APPID, QinConst.APPKEY,appcall);
		}

	}
	void InitChannel_APP(final String strAppId, final String strAppKey,final APPBaseInterface appcall) {

		final Context applicationContext = mContext.getApplicationContext();
		LogLocal("[E2WApp] Server InitChannel()->"+mExtSDKId);
		switch(mExtSDKId)
		{
			case QinConst.ChinaAnzhi:
			mInAppExt = new InAppANZHI();
			break;
			case QinConst.China360:
			mInAppExt = new InAppQIHU360();
			break;
			case QinConst.ChinaBaidu:
			mInAppExt = new InAppBAIDU();
			break;
			case QinConst.ChinaUC:
			mInAppExt = new InAppUC();					
			break;
			case QinConst.ChinaOppo:
			mInAppExt = new InAppOPPO();					
			break;
			case QinConst.ChinaMi:
			mInAppExt = new InAppXM();					
			break;
			case QinConst.ChinaVivo:
			mInAppExt = new InAppVIVO();
			break;
			case QinConst.Chinajl:
			mInAppExt = new InAppJL();
			break;
			case QinConst.Chinals:
			mInAppExt = new InAppLS();
			break;
			case QinConst.Chinawdj:
			mInAppExt = new InAppWDJ();
			break;
			case QinConst.Chinamz:
			mInAppExt = new InAppMZ();
			break;
			case QinConst.Chinac4399:
			mInAppExt = new InAppCHEL_4399();
			break;
			case QinConst.Chinalxlsd:
			mInAppExt = new InAppLXLSD();
			break;
			case QinConst.Chinalxyx:
			mInAppExt = new InAppLXYX();
			break;
			case QinConst.Chinachw:
			mInAppExt = new InAppHW();
			break;
			case QinConst.Chinameitu:
			mInAppExt = new InAppMEITU();
			break;
			case QinConst.Chinaceast2west:
			mInAppExt = new InAppEAST2WEST();
			break;
			case QinConst.Chinamzw:
			mInAppExt = new InAppMZW();
			break;
			case QinConst.Chinadl:
			mInAppExt = new InAppDL();
			break;
			case QinConst.Chinayyh:
			mInAppExt = new InAppYYH();
			break;
			case QinConst.Chinakp:
			mInAppExt = new InAppKP();
			break;
			case QinConst.Chinatxyyb:
			mInAppExt = new InAppTXYYB();
			break;
			case QinConst.Chinataptap:
			mInAppExt = new InAppTAPTAP();
			break;
			case QinConst.Chinaaqy:
			mInAppExt = new InAppAQY();
			break;
			case QinConst.Chinasamsung:
			mInAppExt = new InAppSAMSUNG();
			break;
			case QinConst.Chinabilibili:
			mInAppExt = new InAppBILIBILI();
			break;
case QinConst.Chinacuizi:
mInAppExt = new InAppCUIZI();
break;
case QinConst.Chinasmartisan:
mInAppExt = new InAppSMARTISAN();
break;
case QinConst.Chinahuawei20180410:
mInAppExt = new InAppHUAWEI20180410();
break;
case QinConst.Chinacuizi20180413:
mInAppExt = new InAppCUIZI20180413();
break;
case QinConst.Chinatest:
mInAppExt = new InAppTEST();
break;
case QinConst.Chinaiqiyi20180425:
mInAppExt = new InAppIQIYI20180425();
break;

case QinConst.Chinachina3net:
mInAppExt = new InAppCHINA3NET();
break;
case QinConst.Chinaysdk20180516:
mInAppExt = new InAppYSDK20180516();
break;
case QinConst.Chinajinli20180518:
mInAppExt = new InAppJINLI20180518();
break;
case QinConst.Chinabilibili20180530:
mInAppExt = new InAppBILIBILI20180530();
break;
case QinConst.Chinajrtt20180531:
mInAppExt = new InAppJRTT20180531();
break;
case QinConst.Chinaqihoo36020180601:
mInAppExt = new InAppQIHOO36020180601();
break;
case QinConst.Chinaucpay20180606:
mInAppExt = new InAppUCPAY20180606();
break;
case QinConst.Chinaxmpay20180607:
mInAppExt = new InAppXMPAY20180607();
break;
case QinConst.Chinabilibili20180611:
mInAppExt = new InAppBILIBILI20180611();
break;
case QinConst.Chinawdjpay20180608:
mInAppExt = new InAppWDJPAY20180608();
break;
case QinConst.Chinadebug20180620:
mInAppExt = new InAppDEBUG20180620();
break;
case QinConst.Chinaucpay20180628:
mInAppExt = new InAppUCPAY20180628();
break;
case QinConst.Chinaiqiyi20180628:
mInAppExt = new InAppIQIYI20180628();
break;
case QinConst.Chinabilibilipay20180629:
mInAppExt = new InAppBILIBILIPAY20180629();
break;
case QinConst.Chinaxmhw20180814:
mInAppExt = new InAppXMHW20180814();
break;
case QinConst.Chinachel_439920180801:
mInAppExt = new InAppCHEL_439920180801();
break;
case QinConst.Chinaoppo20180817:
mInAppExt = new InAppOPPO20180817();
break;
case QinConst.Chinavivopay20180813:
mInAppExt = new InAppVIVOPAY20180813();
break;
case QinConst.Chinaysdk20180816:
mInAppExt = new InAppYSDK20180816();
break;
case QinConst.Chinaoppopay20181016:
mInAppExt = new InAppOPPOPAY20181016();
break;
case QinConst.Chinaxm20181024:
mInAppExt = new InAppXM20181024();
break;
case QinConst.Chinajrtt20181218:
mInAppExt = new InAppJRTT20181218();
break;
//AddCodePython
		}
		LogLocal("[E2WApp] InitChannel()->mInAppExt="+mInAppExt);		
		if(mInAppExt != null)
		{					
			mInAppExt.init(applicationContext, (Activity)mContext, strAppId, strAppKey,appcall);
		}
		else
		{
			mInApp.init(applicationContext, (Activity)mContext, QinConst.APPID, QinConst.APPKEY,appcall);
		}

	}
	public void swtichuser()
	{		
		E2WApp.LogLocal("[E2WApp]->swtichuser()");
		if(mInAppShow != null)
		{
			mInAppShow.swtichuser();
		}
	}

	public void show_insert(String Scenes)
	{
		E2WApp.LogLocal("[E2WApp]->show_insert("+Scenes+")");
		Log.e("E2W","mInAppShow->"+mInAppShow);
		Log.e("E2W","mInApp->"+mInApp);
		//SdkApplication.myStatistics.DisplayAD(Scenes,"insert");
		if(mInAppShow != null)
		{
			mInAppShow.show_insert(Scenes);
		}
		else
		{
			mInApp.show_insert(Scenes);
		}
	}
	public void show_push(String Scenes)
	{
		E2WApp.LogLocal("[E2WApp]->show_push("+Scenes+")");
		//SdkApplication.myStatistics.DisplayAD(Scenes,"push");
		if(mInAppShow != null)
		{
			mInAppShow.show_push(Scenes);
		}
		else
		{
			mInApp.show_push(Scenes);
		}
	}
	public void show_out(String Scenes)
	{
		E2WApp.LogLocal("[E2WApp]->show_out("+Scenes+")");
		//SdkApplication.myStatistics.DisplayAD(Scenes,"out");
		if(mInAppShow != null)
		{
			mInAppShow.show_out(Scenes);
		}
		else
		{
			mInApp.show_out(Scenes);
		}
	}
	public void show_video(String Scenes)
	{
		E2WApp.LogLocal("[E2WApp]->show_video("+Scenes+")");
		//SdkApplication.myStatistics.DisplayAD(Scenes,"video");
		if(mInAppShow != null)
		{
			mInAppShow.show_video(Scenes);
		}
		else
		{
			mInApp.show_video(Scenes);
		}
	}
	public void show_banner(String Scenes)
	{
		E2WApp.LogLocal("[E2WApp]->show_banner("+Scenes+")");
		//SdkApplication.myStatistics.DisplayAD(Scenes,"banner");
		if(mInAppShow != null)
		{
			mInAppShow.show_banner(Scenes);
		}
		else
		{
			mInApp.show_banner(Scenes);
		}
	}



	public void show_insert()
	{
		show_insert("default");
	}
	public void show_push()
	{
		show_push("default");
	}
	public void show_out()
	{
		show_out("default");
	}
	public void show_video()
	{
		show_video("default");
	}
	public void show_banner()
	{
		show_banner("default");
	}
	public void uploadclick() {
		// TODO Auto-generated method stub
		if(mInAppShow != null)
		{
			mInAppShow.uploadclick();
		}
	}

	public void onPause() {

		LogLocal("[E2WApp] onPause() mInAppExt="+mInAppExt);
		if(mInApp != null)
		{
			mInApp.onPause();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onPause();
		}
		if(mInAppShow != null)
		{
			mInAppShow.onPause();
		}
	}
	public void onStop() {

		LogLocal("[E2WApp] onStop() mInAppExt="+mInAppExt);
		if(mInApp != null)
		{
			mInApp.onStop();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onStop();
		}

		if(mInAppShow != null)
		{
			mInAppShow.onStop();
		}
	}
	public void onStart() {

		LogLocal("[E2WApp] onStart() mInAppExt="+mInAppExt);
		if(mInApp != null)
		{
			mInApp.onStart();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onStart();
		}

		if(mInAppShow != null)
		{
			mInAppShow.onStart();
		}
	}
	public void onRestart()
	{
		LogLocal("[E2WApp] onRestart() mInAppExt="+mInAppExt);
		if(mInApp != null)
		{
			mInApp.onRestart();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onRestart();
		}

		if(mInAppShow != null)
		{
			mInAppShow.onRestart();
		}
	}
	public void onResume() {

		LogLocal("[E2WApp] onResume() mInAppExt="+mInAppExt);
		if(mInApp != null)
		{
			mInApp.onResume();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onResume();
		}

		if(mInAppShow != null)
		{
			mInAppShow.onResume();
		}
	}


	public void onDestroy() {
		LogLocal("[E2WApp] onDestroy() mInAppExt="+mInAppExt);
		if(mInApp != null)
		{
			mInApp.onDestroy();
		}
		
		if(mInAppExt != null)
		{
			mInAppExt.onDestroy();
		}

		if(mInAppShow != null)
		{
			mInAppShow.onDestroy();
		}
		
	}
	public void onActivityResult(int requestCode, int resultCode, Intent data) 
	{
		E2WApp.LogLocal("[E2WApp]->onActivityResult:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.onActivityResult(requestCode,resultCode,data);
		}
		if(mInApp != null)
		{
			mInApp.onActivityResult(requestCode,resultCode,data);
		}

		if(mInAppShow != null)
		{
			mInAppShow.onActivityResult(requestCode,resultCode,data);
		}
	}
	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub
		E2WApp.LogLocal("[E2WApp]->onNewIntent:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.onNewIntent(intent);
		}
		if(mInApp != null)
		{
			mInApp.onNewIntent(intent);
		}

		if(mInAppShow != null)
		{
			mInAppShow.onNewIntent(intent);
		}
	}
	public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
		E2WApp.LogLocal("[E2WApp]->onNewIntent:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.onRequestPermissionsResult(requestCode,permissions,grantResults);
		}
		if(mInApp != null)
		{
			mInApp.onRequestPermissionsResult(requestCode,permissions,grantResults);
		}

		if(mInAppShow != null)
		{
			mInAppShow.onRequestPermissionsResult(requestCode,permissions,grantResults);
		}
	}
	public static Object getInstance() {	
		Log.e("IAP","Unity Game");
		return mContext;
	}


	public int getChannelId() {
		return mChannelId;
	}
	
	public InAppBase getBaseInApp()
	{
		LogLocal("[E2WApp] getBaseInApp()->mInApp="+mInApp);
		return mInApp;
	}


	
	public void Exchange()
	{
		new Handler(mContext.getMainLooper()).post(new Runnable() {
    		@Override
			public void run() {
				Log.e("IAP","[E2WApp]->Exchange:Android");
				//Login();
				InAppBase mInAppFunction= new InAppBase();
    			mInAppFunction.Exchange();
    			
			}
		});
	}
	public void Exchange(final APPBaseInterface appcall)
	{
		Log.e("IAP","[E2WApp]->Exchange:appcall");
		new Handler(mContext.getMainLooper()).post(new Runnable() {
    		@Override
			public void run() {
    			InAppBase mInAppFunction= new InAppBase();
    			mInAppFunction.Exchange(appcall);
			}
		});
	}
	private void GetmInAppExt()
	{
		LogLocal("[E2WApp] GetmInAppExt()->"+mExtSDKId);
		switch(mExtSDKId)
		{
			case QinConst.ChinaAnzhi:
			mInAppExt = new InAppANZHI();
			break;
			case QinConst.China360:
			mInAppExt = new InAppQIHU360();
			break;
			case QinConst.ChinaBaidu:
			mInAppExt = new InAppBAIDU();
			break;
			case QinConst.ChinaUC:
			mInAppExt = new InAppUC();					
			break;
			case QinConst.ChinaOppo:
			mInAppExt = new InAppOPPO();					
			break;
			case QinConst.ChinaMi:
			mInAppExt = new InAppXM();					
			break;
			case QinConst.ChinaVivo:
			mInAppExt = new InAppVIVO();
			break;
			case QinConst.Chinajl:
			mInAppExt = new InAppJL();
			break;
			case QinConst.Chinals:
			mInAppExt = new InAppLS();
			break;
			case QinConst.Chinawdj:
			mInAppExt = new InAppWDJ();
			break;
			case QinConst.Chinamz:
			mInAppExt = new InAppMZ();
			break;
			case QinConst.Chinac4399:
			mInAppExt = new InAppCHEL_4399();
			break;
			case QinConst.Chinalxlsd:
			mInAppExt = new InAppLXLSD();
			break;
			case QinConst.Chinalxyx:
			mInAppExt = new InAppLXYX();
			break;
			case QinConst.Chinachw:
			mInAppExt = new InAppHW();
			break;
			case QinConst.Chinameitu:
			mInAppExt = new InAppMEITU();
			break;
			case QinConst.Chinaceast2west:
			mInAppExt = new InAppEAST2WEST();
			break;
			case QinConst.Chinamzw:
			mInAppExt = new InAppMZW();
			break;
			case QinConst.Chinadl:
			mInAppExt = new InAppDL();
			break;
			case QinConst.Chinayyh:
			mInAppExt = new InAppYYH();
			break;
			case QinConst.Chinakp:
			mInAppExt = new InAppKP();
			break;
			case QinConst.Chinatxyyb:
			mInAppExt = new InAppTXYYB();
			break;
			case QinConst.Chinataptap:
			mInAppExt = new InAppTAPTAP();
			break;
			case QinConst.Chinaaqy:
			mInAppExt = new InAppAQY();
			break;
			case QinConst.Chinasamsung:
			mInAppExt = new InAppSAMSUNG();
			break;
			case QinConst.Chinabilibili:
			mInAppExt = new InAppBILIBILI();
			break;
case QinConst.Chinacuizi:
mInAppExt = new InAppCUIZI();
break;
case QinConst.Chinasmartisan:
mInAppExt = new InAppSMARTISAN();
break;
case QinConst.Chinahuawei20180410:
mInAppExt = new InAppHUAWEI20180410();
break;
case QinConst.Chinacuizi20180413:
mInAppExt = new InAppCUIZI20180413();
break;
case QinConst.Chinatest:
mInAppExt = new InAppTEST();
break;
case QinConst.Chinaiqiyi20180425:
mInAppExt = new InAppIQIYI20180425();
break;
case QinConst.Chinachina3net:
mInAppExt = new InAppCHINA3NET();
break;
case QinConst.Chinaysdk20180516:
mInAppExt = new InAppYSDK20180516();
break;
case QinConst.Chinajinli20180518:
mInAppExt = new InAppJINLI20180518();
break;
case QinConst.Chinabilibili20180530:
mInAppExt = new InAppBILIBILI20180530();
break;
case QinConst.Chinajrtt20180531:
mInAppExt = new InAppJRTT20180531();
break;
case QinConst.Chinaqihoo36020180601:
mInAppExt = new InAppQIHOO36020180601();
break;
case QinConst.Chinaucpay20180606:
mInAppExt = new InAppUCPAY20180606();
break;
case QinConst.Chinaxmpay20180607:
mInAppExt = new InAppXMPAY20180607();
break;
case QinConst.Chinabilibili20180611:
mInAppExt = new InAppBILIBILI20180611();
break;
case QinConst.Chinawdjpay20180608:
mInAppExt = new InAppWDJPAY20180608();
break;
case QinConst.Chinadebug20180620:
mInAppExt = new InAppDEBUG20180620();
break;
case QinConst.Chinaucpay20180628:
mInAppExt = new InAppUCPAY20180628();
break;
case QinConst.Chinaiqiyi20180628:
mInAppExt = new InAppIQIYI20180628();
break;
case QinConst.Chinabilibilipay20180629:
mInAppExt = new InAppBILIBILIPAY20180629();
break;
case QinConst.Chinaxmhw20180814:
mInAppExt = new InAppXMHW20180814();
break;
case QinConst.Chinachel_439920180801:
mInAppExt = new InAppCHEL_439920180801();
break;
case QinConst.Chinaoppo20180817:
mInAppExt = new InAppOPPO20180817();
break;
case QinConst.Chinavivopay20180813:
mInAppExt = new InAppVIVOPAY20180813();
break;
case QinConst.Chinaysdk20180816:
mInAppExt = new InAppYSDK20180816();
break;
case QinConst.Chinaoppopay20181016:
mInAppExt = new InAppOPPOPAY20181016();
break;
case QinConst.Chinaxm20181024:
mInAppExt = new InAppXM20181024();
break;
case QinConst.Chinajrtt20181218:
mInAppExt = new InAppJRTT20181218();
break;
//AddCodePython
		}
	}
	public void ExitGame()
	{    		
		new Handler(mContext.getMainLooper()).post(new Runnable() {
			@Override
			public void run() {
				LogLocal("[E2WApp] ExitGame() myExchange->"+SdkApplication.myExchange);
				if(SdkApplication.myExchange.equals("open"))
				{
					try {	
						AlertDialog.Builder builder = new Builder(mContext);
						builder.setMessage("确认退出吗?");
						builder.setTitle("提示");
						builder.setPositiveButton("退出", new OnClickListener() {
							@Override
							public void onClick(DialogInterface dialog, int which) {
								
								InAppBase iap = mInApp;
								GetmInAppExt();
								LogLocal("[E2WApp] ExitGame mContext->"+mContext);
								if(mInAppExt != null ) // Ext iap Exit have higher priority
								{
									
									iap = mInAppExt;
									LogLocal("[E2WApp] Channel Exit iap->"+iap);
									
									iap.ExitGame();
									
								}
								else if(SdkApplication.iscarriersneed.equals("close")&&(mExtSDKId==QinConst.ChinaUnicom
										||mExtSDKId==QinConst.ChinaTelecom||mExtSDKId==QinConst.ChinaMobile))
								{
									LogLocal("[E2WApp] Carriers Exit iap->"+iap);
									iap.ExitGame();
									
								}
								else if(SdkApplication.iscarriersneed.equals("open")&&mExtSDKId==QinConst.ChinaMobile)
								{
									LogLocal("[E2WApp] Mobile Exit iap->"+iap);
									iap.ExitGame();		
								}
								else
								{
									mInApp.ExitGame();
						
								}
							}
						});
						builder.setNeutralButton("兑换", new OnClickListener() {
							@Override
							public void onClick(DialogInterface dialog, int which) {
								Exchange();
							}
						});
						builder.setNegativeButton("取消", new OnClickListener() {
							@Override
							public void onClick(DialogInterface dialog, int which) {
								
							}
						});
						builder.create().show();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				else
				{
					InAppBase iap = mInApp;
					GetmInAppExt();
					LogLocal("[E2WApp] ExitGame mContext->"+mContext);
					if(mInAppExt != null ) // Ext iap Exit have higher priority
					{
						
						iap = mInAppExt;
						LogLocal("[E2WApp] Channel Exit iap->"+iap);
						
						iap.ExitGame();
						
					}
					else if(SdkApplication.iscarriersneed.equals("close")&&(mExtSDKId==QinConst.ChinaUnicom
							||mExtSDKId==QinConst.ChinaTelecom||mExtSDKId==QinConst.ChinaMobile))
					{
						LogLocal("[E2WApp] Carriers Exit iap->"+iap);
						iap.ExitGame();
						
					}
					else if(SdkApplication.iscarriersneed.equals("open")&&mExtSDKId==QinConst.ChinaMobile)
					{
						LogLocal("[E2WApp] Mobile Exit iap->"+iap);
						iap.ExitGame();		
					}
					else
					{
						LogLocal("[E2WApp] default iap->"+mInApp);
						mInApp.ExitGame();
			
					}
				}
			  }
			});
	}
	
	public void Message(final String news)
	{	
		Toast.makeText(mContext, news,Toast.LENGTH_SHORT).show();
	}
	public void SharePicture(String imagePath,boolean istimeline,final APPBaseInterface appcall)
	{
		E2WApp.LogLocal("[E2WApp]->SdkApplication.ChannelName=" + SdkApplication.ChannelName);
		E2WApp.LogLocal("[E2WApp]->SdkApplication.msg=" + SdkApplication.msg);
		if(SdkApplication.ChannelName.equals(""))
		{
			mInApp.SharePicture(imagePath, istimeline);
		}
		else
		{
			mInShare = new InAppWeChatShare();
			E2WApp.LogLocal("[E2WApp]->SharePicture:mInShare=" + mInShare + " mExtSDKId=" + mExtSDKId);
			final Context applicationContext = mContext.getApplicationContext();
			mInShare.init(applicationContext, (Activity) mContext, "", "", appcall);
			mInShare.SharePicture(imagePath, istimeline);
		}
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
			mInAppExt.TencentLogin(kind);
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
		InAppBaseRestore repair=new InAppBaseRestore() ;
		repair.repairindentRequest();
	}
	public void respondCPserver()
	{
		InAppBaseRestore repair=new InAppBaseRestore() ;
		repair.respondCPserver(InAppBaseRestore.OrderID);
	}
	public void showMessageDialog()
	{
		E2WApp.LogLocal("[E2WApp]->showMessageDialog:mInAppExt="+mInAppExt);
		if(mInAppExt != null)
		{
			mInAppExt.showMessageDialog();
		}
	}

	public boolean IsRatingAvailable()
	{
		InAppBaseOperation functest= new InAppBaseOperation();
		boolean  myboolean = functest.IsRatingAvailable();
		return myboolean;
	}
	public String GetRatingURL()
	{
		InAppBaseOperation functest= new InAppBaseOperation();
		String  myrul = functest.GetRatingURL();
		return myrul;
	}
	public String[] GetIAPs()
	{
		InAppBaseOperation functest= new InAppBaseOperation();
		String[]   myiap = functest.GetIAPs();
		return myiap;
	}
	public String GetRemoteValue(String key)
	{
		InAppBaseOperation functest= new InAppBaseOperation();
		String  myvalue = functest.GetRemoteValue(key);
		return myvalue;
	}
	public String[] GetRemoteValuesWithPrefix(String key)
	{
		
		InAppBaseOperation functest= new InAppBaseOperation();
		String[]  myvalue = functest.GetRemoteValuesWithPrefix(key);
		return myvalue;
	}
	public void login(int kind)
	{
		E2WApp.LogLocal("[E2WApp]->login:mInAppExt="+mInAppExt+" kind="+kind+",IsTencentChannel()="+IsTencentChannel());

		if (IsTencentChannel()==false)
		{
			InAppBackUp functest= new InAppBackUp();
			functest.Login();
		}
		else
		{
			if (QinConst.Restoreappid.equals("IronMarine"))
			{
				if (kind == 0)
					kind = 2;
			}
			if (IsTencentChannel()) {
				if (mInAppExt != null) {
					mInAppExt.TencentLogin(kind);
				}
			}
		}
	}
	public void Login()
	{
		E2WApp.LogLocal("[E2WApp]->Login="+mInAppExt);
		if (IsTencentChannel()==false)
		{
			InAppBackUp functest= new InAppBackUp();
			functest.Login();
		}
		else
		{
			if(mInAppExt != null)
			{
				mInAppExt.TencentLogin(0);
			}
		}
	}
	public void Logout()
	{
		InAppBackUp functest= new InAppBackUp();
		functest.Logout();
	}
	public void Load(String name)
	{
		E2WApp.LogLocal("[E2WApp]->Load="+mInAppExt);
		InAppBackUp functest= new InAppBackUp();
		functest.Load(name);
	}
	public void Save(String name, String data)
	{
		E2WApp.LogLocal("[E2WApp]->Save="+mInAppExt);
		InAppBackUp functest= new InAppBackUp();
		functest.Save(name,data);
	}
	public boolean IsVideoAdAvailable()
	{
		InAppBaseOperation functest= new InAppBaseOperation();
		return functest.IsVideoAdAvailable();
	}


	public static void LogLocal(final String news)
	{				
		if(isLogOpen.equals("1")||SdkApplication.isAntLogOpen.equals("open"))
		{
			Log.e(QinConst.TAG,news);
		}
	}
}
