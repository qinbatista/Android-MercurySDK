package com.east2west.game;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EncodingUtils;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import com.east2west.game.System.InAppBaseOperation;
import com.east2west.game.inApp.InAppBase;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.InputFilter;
import android.util.Log;
import android.widget.EditText;
import android.widget.Toast;


public class QinConst {
	public static String LogVERSION= "1.9";
	public static String TAG = "IAP";
	public static final int ChinaNull = 0;
	public static final int ChinaMobile = 1;
	public static final int ChinaUnicom = 2;
	public static final int ChinaTelecom = 3;
	
	public static final int China360 = 4;
	public static final int ChinaBaidu = 5;
	public static final int ChinaMi = 6;
	public static final int ChinaUC = 7;
	public static final int ChinaAnzhi = 8;	
	public static final int ChinaOppo = 9;	
	public static final int ChinaTencent = 10;	
	public static final int ChinaVivo = 11;	
	public static final int Chinajl = 12;
	public static final int Chinals = 13;
	public static final int Chinawdj= 14;
	public static final int Chinamz=15;
	public static final int Chinac4399=16;
	public static final int Chinachw=17;
	public static final int Chinalxlsd=18;
	public static final int Chinalxyx=19;
	public static final int Chinameitu=20;
	public static final int Chinaceast2west=21;
	public static final int Chinamzw=22;
	public static final int Chinadl=23;
	public static final int Chinayyh=24;
	public static final int Chinataptap=25;
	public static final int Chinakp=26;
	public static final int Chinatxyyb=27;
	public static final int Chinasamsung=28;
	public static final int Chinaaqy=29;
	public static final int Chinae2wwk=30;
	public static final int Chinabilibili=31;
	public static final int Chinacuizi=83;
	public static final int Chinasmartisan=84;
	public static final int Chinahuawei20180410=85;
	public static final int Chinacuizi20180413=86;
	public static final int Chinatest=87;
public static final int Chinaiqiyi20180425=92;
public static final int Chinaabc=93;
public static final int Chinaaac=94;
public static final int Chinaasfasf=95;
public static final int Chinachina3net=98;
public static final int Chinaysdk20180516=100;
public static final int Chinajinli20180518=101;
public static final int Chinabilibili20180530=102;
public static final int Chinajrtt20180531=103;
public static final int Chinaqihoo36020180601=104;
public static final int Chinaucpay20180606=105;
public static final int Chinaxmpay20180607=106;
public static final int Chinabilibili20180611=107;
public static final int Chinawdjpay20180608=108;
public static final int Chinadebug20180620=110;
public static final int Chinaucpay20180628=111;
public static final int Chinaiqiyi20180628=112;
public static final int Chinabilibilipay20180629=113;
public static final int Chinaxmhw20180814=114;
public static final int Chinachel_439920180801=115;
public static final int Chinaoppo20180817=116;
public static final int Chinavivopay20180813=117;
public static final int Chinaysdk20180816=118;
public static final int Chinaoppopay20181016=119;
public static final int Chinaxm20181024=120;
public static final int Chinajrtt20181218=121;
//AddCodePythonQinConstChina


	public static String adtest="123456";















//AddADIDPython
	//end
	
//FunctionPython
	public static String APPChineseName ="";
	public static String exchangeID ="";
	public static String exchangeKEY ="";
	public static String appid ="";
	public static String Restoreappid ="";
	public static String TalkingDataID ="";
	public static String accesstoken ="";
	public static String DataFileName ="";
	public static String GameId ="";
	public static String ServerLocation="";
	public static String key ="";
	public static String WXShareID = "";
//end
	

    //server
	public static String ServerChannelPid ="";
    public static String ServerChannelPid1 ="";
    public static String ServerChannelPid2 ="";
    public static String ServerChannelPid3 ="";
    public static String ServerChannelPid4 ="";
    public static String ServerChannelPid5 ="";
    public static String ServerChannelPid6 ="";
    public static String ServerChannelPid7 ="";
    public static String ServerChannelPid8 ="";
    public static String ServerChannelPid9 ="";
    public static String ServerChannelPid10 ="";
    public static String ServerChannelPid11 ="";
    public static String ServerChannelPid12 ="";
    public static String ServerChannelPid13 ="";
    public static String ServerChannelPid14 ="";
    public static String ServerChannelPid15 ="";
    public static String ServerChannelPid16 ="";
    public static String ServerChannelPid17 ="";
    public static String ServerChannelPid18 ="";
    public static String ServerChannelPid19 ="";
    public static String ServerChannelPid20 ="";
    public static String ServerChannelPid21 ="";
    public static String ServerChannelPid22 ="";
    public static String ServerChannelPid23 ="";
    public static String ServerChannelPid24 ="";
    public static String ServerChannelPid25 ="";
    
    
    public static String Serverpricefloat ="";
    public static String Serverpricefloat1 ="";
    public static String Serverpricefloat2 ="";
    public static String Serverpricefloat3="";
    public static String Serverpricefloat4="";
    public static String Serverpricefloat5="";
    public static String Serverpricefloat6="";
    public static String Serverpricefloat7="";
    public static String Serverpricefloat8 ="";
    public static String Serverpricefloat9 ="";
    public static String Serverpricefloat10 ="";
    public static String Serverpricefloat11 ="";
    public static String Serverpricefloat12 ="";
    public static String Serverpricefloat13 ="";
    public static String Serverpricefloat14 ="";
    public static String Serverpricefloat15 ="";
    public static String Serverpricefloat16 ="";
    public static String Serverpricefloat17 ="";
    public static String Serverpricefloat18 ="";
    public static String Serverpricefloat19 ="";
    public static String Serverpricefloat20 ="";
    public static String Serverpricefloat21 ="";
    public static String Serverpricefloat22 ="";
    public static String Serverpricefloat23 ="";
    public static String Serverpricefloat24 ="";
    public static String Serverpricefloat25 ="";
    

    public static String ServerDesc  ="";
    public static String ServerDesc1 ="";
    public static String ServerDesc2 ="";
    public static String ServerDesc3="";
    public static String ServerDesc4="";
    public static String ServerDesc5="";
    public static String ServerDesc6="";
    public static String ServerDesc7="";
    public static String ServerDesc8 ="";
    public static String ServerDesc9 ="";
    public static String ServerDesc10 ="";
    public static String ServerDesc11 ="";
    public static String ServerDesc12 ="";
    public static String ServerDesc13 ="";
    public static String ServerDesc14 ="";
    public static String ServerDesc15 ="";
    public static String ServerDesc16 ="";
    public static String ServerDesc17 ="";
    public static String ServerDesc18 ="";
    public static String ServerDesc19 ="";
    public static String ServerDesc20 ="";
    public static String ServerDesc21 ="";
    public static String ServerDesc22 ="";
    public static String ServerDesc23 ="";
    public static String ServerDesc24 ="";
    public static String ServerDesc25 ="";
    

	public static String ChannelPid="";
	public static String ChannelPid1="";
	public static String ChannelPid2="";
	public static String ChannelPid3="";
	public static String ChannelPid4="";
	public static String ChannelPid5="";
	public static String ChannelPid6="";
	public static String ChannelPid7="";
	public static String ChannelPid8="";
	public static String ChannelPid9="";
	public static String ChannelPid10="";
	public static String ChannelPid11="";
	public static String ChannelPid12="";
	public static String ChannelPid13="";
	public static String ChannelPid14="";
	public static String ChannelPid15="";
	public static String ChannelPid16="";
	public static String ChannelPid17="";
	public static String ChannelPid18="";
	public static String ChannelPid19="";
	public static String ChannelPid20="";
	public static String ChannelPid21="";
	public static String ChannelPid22="";
	public static String ChannelPid23="";
	public static String ChannelPid24="";
	public static String ChannelPid25="";
	
	public static String  desc="";
	public static String  desc1="";
	public static String  desc2="";
	public static String  desc3="";
	public static String  desc4="";
	public static String  desc5="";
	public static String  desc6="";
	public static String  desc7="";
	public static String  desc8="";
	public static String  desc9="";
	public static String  desc10="";
	public static String  desc11="";
	public static String  desc12="";
	public static String  desc13="";
	public static String  desc14="";
	public static String  desc15="";
	public static String  desc16="";
	public static String  desc17="";
	public static String  desc18="";
	public static String  desc19="";
	public static String  desc20="";
	public static String  desc21="";
	public static String  desc22="";
	public static String  desc23="";
	public static String  desc24="";
	public static String  desc25="";
	
	public static String  pricefloat  ="0";
	public static String  pricefloat1 ="1";
	public static String  pricefloat2 ="2";
	public static String  pricefloat3 ="3";
	public static String  pricefloat4 ="4";
	public static String  pricefloat5 ="5";
	public static String  pricefloat6 ="6";
	public static String  pricefloat7 ="7";
	public static String  pricefloat8 ="8";
	public static String  pricefloat9 ="9";
	public static String  pricefloat10="10";
	public static String  pricefloat11="11";
	public static String  pricefloat12="12";
	public static String  pricefloat13="13";
	public static String  pricefloat14="14";
	public static String  pricefloat15="15";
	public static String  pricefloat16="16";
	public static String  pricefloat17="17";
	public static String  pricefloat18="18";
	public static String  pricefloat19="19";
	public static String  pricefloat20="20";
	public static String  pricefloat21="21";
	public static String  pricefloat22="22";
	public static String  pricefloat23="23";
	public static String  pricefloat24="24";
	public static String  pricefloat25="25";
	
	
	public static String  ydpid=  "000";
	public static String  ydpid1= "001";
	public static String  ydpid2= "002";
	public static String  ydpid3= "003";
	public static String  ydpid4= "004";
	public static String  ydpid5= "005";
	public static String  ydpid6= "006";
	public static String  ydpid7= "007";
	public static String  ydpid8= "008";
	public static String  ydpid9= "009";
	public static String  ydpid10="010";
	public static String  ydpid11="011";
	public static String  ydpid12="012";
	public static String  ydpid13="013";
	public static String  ydpid14="014";
	public static String  ydpid15="015";
	public static String  ydpid16="016";
	public static String  ydpid17="017";
	public static String  ydpid18="018";
	public static String  ydpid19="019";
	public static String  ydpid20="020";
	public static String  ydpid21="021";
	public static String  ydpid22="022";
	public static String  ydpid23="023";
	public static String  ydpid24="024";
	public static String  ydpid25="025";
	
	public static String  ltpid=  "000";
	public static String  ltpid1= "001";
	public static String  ltpid2= "002";
	public static String  ltpid3= "003";
	public static String  ltpid4= "004";
	public static String  ltpid5= "005";
	public static String  ltpid6= "006";
	public static String  ltpid7= "007";
	public static String  ltpid8= "008";
	public static String  ltpid9= "009";
	public static String  ltpid10="010";
	public static String  ltpid11="011";
	public static String  ltpid12="012";
	public static String  ltpid13="013";
	public static String  ltpid14="014";
	public static String  ltpid15="015";
	public static String  ltpid16="016";
	public static String  ltpid17="017";
	public static String  ltpid18="018";
	public static String  ltpid19="019";
	public static String  ltpid20="020";
	public static String  ltpid21="021";
	public static String  ltpid22="022";
	public static String  ltpid23="023";
	public static String  ltpid24="024";
	public static String  ltpid25="025";
	
	public static String  dxpid=  "000";
	public static String  dxpid1= "001";
	public static String  dxpid2= "002";
	public static String  dxpid3= "003";
	public static String  dxpid4= "004";
	public static String  dxpid5= "005";
	public static String  dxpid6= "006";
	public static String  dxpid7= "007";
	public static String  dxpid8= "008";
	public static String  dxpid9= "009";
	public static String  dxpid10="010";
	public static String  dxpid11="011";
	public static String  dxpid12="012";
	public static String  dxpid13="013";
	public static String  dxpid14="014";
	public static String  dxpid15="015";
	public static String  dxpid16="016";
	public static String  dxpid17="017";
	public static String  dxpid18="018";
	public static String  dxpid19="019";
	public static String  dxpid20="020";
	public static String  dxpid21="021";
	public static String  dxpid22="022";
	public static String  dxpid23="023";
	public static String  dxpid24="024";
	public static String  dxpid25="025";
	
	public static String QinPid="";
	public static String Qindesc="";
	public static float Qinpricefloat=0f;
	public static String CarriersID="";
	public static String SDKID="";
	public static String CarriersPayLock="0";
	public static String SDKPayLock="0";
	public static String APPID="";
	public static String APPKEY="";
	public static String ADChannel="";
	public static String VerifyKey = "";
	public static String[] ADParamList= null;
    public static String SDKNeed="";
    public static String SDKKey="";
    public static String SDKValue="";
    public static String SDKPay="";
    
    public static String[] convertStrToArray(String str,String symbol){   
        String[] strArray = null;   
        strArray = str.split(symbol); //拆分字符为symbol 可以是 "," ,然后把结果交给数组strArray 
        return strArray;
    }

    public static void AnalysisID(String IDString)
    {
    	String[] strArray=null;    	 
    	strArray = convertStrToArray(IDString,",");
    	if(strArray.length==1)
    	{
    		CarriersID=strArray[0].toString();
    	}
    	else if(strArray.length==2)
    	{
    		CarriersID=strArray[0].toString();
    		SDKID=strArray[1].toString();
    	}
    	else if(strArray.length==3)
    	{
    		CarriersID=strArray[0].toString();
    		SDKID=strArray[1].toString();
    		CarriersPayLock=strArray[2].toString();
    	}
    	else if(strArray.length==4)
    	{
    		CarriersID=strArray[0].toString();
    		SDKID=strArray[1].toString();
    		CarriersPayLock=strArray[2].toString();
    		SDKPayLock=strArray[3].toString();
    	}   	
    }
    public static void GetChannelID(String ChannelName)
    {   	
    	
    	
//    	switch(ChannelName)
//    	{
//    		case "chel_4399":
//    			APPID = "117140";
//        		APPKEY = "";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "nd":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="0,1";
//    			break;
//    		case "oppo":
//    			APPID = "3590907";
//        		APPKEY = "58C9B2F01d2341C280728A2C3714C982";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "UC":
//    			APPID = "745534";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="0,1";
//    			break;
//    		case "vivo":
//    			APPID = "552b1de2d084bc87b294d59489ece3ed";
//        		APPKEY = "20160510170333542404,5afeb61b341141fe07685ed3fa7ef8d6";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "al":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "aqy":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "anzhi":
//    			APPID = "1443060886H0PNbY0uWAgqc7u05lYY";
//        		APPKEY = "1V662NER3gs4D86KRjhcwkV8";
//        		ADChannel="am";
//        		SDKPAY="1,1";
//    			break;
//    		case "baidu_91":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="bd";
//        		SDKPAY="0,1";
//    			break;
//    		case "baidu_dk":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="bd";
//        		SDKPAY="0,1";
//    			break;
//    		case "baidu_sjzs":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="bd";
//        		SDKPAY="0,1";
//    			break;
//    		case "baidu_tb":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="bd";
//        		SDKPAY="0,1";
//    			break;
//    		case "bf":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "debug":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "dl":
//    			APPID = "183";
//        		APPKEY = "QCgzvvgo,106";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "dx":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "east2west":
//    		    String WX_APP_ID = "wxed748a1af0561fd4"; 
//    			String WX_MCH_ID = "1489242192";	
//    			String WX_API_KEY = "53236073337180470952250400959808"; 
//    			String ALI_PARTNER = "2088511798626863";
//    			String ALI_SELLER = "2088511798626863";	
//    			String ALI_RSA_PRIVATE = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKTrA5p/o++3KydmC66AY3V0fj1evRZEbEAEwETl1ISBzmK1kEQLnVtnwq2fFbUPWsJM49WktIVCqJyAQBZ4oQCS1w+bAZxSdz4cISr98OI5xwOXJT9uDhOQOOp2qyq11RNSrEfZppT19X29aZ86aPW92EFqitngHAk8f7cGXwDHAgMBAAECgYBhpEuD4+KaASbpsr9j19wLJKfBiiAF2QkGdkmoATNsKLabNshtoTrPbYWT6kad5rNjqsaSLWw8IhVWY5COPWmEy95Bwt/4Ted1wCu+dspibOe0zdeA8BVEMbA9GjXkNVxKb9n1oacSUtyEkSglRE9tNsY3LnFPwFkm/AMIqyGSUQJBANbhdiHybiW9dk+0B1xHzMW9QoEDUcPtZI5rmMPPHzNtkUbnH9dnB+VE7ompSroXi8E1xxQ7TYQNB9cazVjY4MUCQQDEef1GHUqcdtSPjAnD754HOsodbW0X4kt+6oBu3xBbYgHGSBh7CE2LQRp0BTgrC8yen2dYTMoJRBgY6iqmXtwbAkBnezKRzJdA84nrfk5hIW6695b0XG3fBg78C1MJUVC8SpLA64NJD6QcxGJ/xxhmn/o8tLJHyvtckY3qCE1F8UPlAkEAkshUKEp/0C6SlH9ZWFEubVZFYwC6LMq5/iIxOyNYs/yfOMPpzhig3fUQTzcLBFW3U5Xg/j23/n4pxotCu7JImwJBALPNI6/lr824upEK4p/2he0LqDWIQIOMmqHgMbnwkONAHrjaMWxUA9/b0GPy+9mmUhQcvVhIYja3kfzkRAekrQY=";
//    			String ALI_RSA_PUBLIC = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB";
//    			APPID = WX_APP_ID;
//        		APPKEY = WX_MCH_ID+","+WX_API_KEY+","+ALI_PARTNER+","+ALI_SELLER+","+ALI_RSA_PRIVATE+","+ALI_RSA_PUBLIC;
//        		ADChannel="testad";
//        		SDKPAY="0,1";
//    			break;
//    		case "hw":
//    			//huawei
//    			String PAY_ID="900086000020107215";
//    		    String BUO_SECRET = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCkTf5n+SZQVI2/4HGw9xewR7FeCjXMU76w3iYeZNrej18iCfc+qpgrVd4Ptx49utqNML6lfGcTePkry7oXtQi0oUIb1A2pXikXVrWC7qL0UekzC868Gmi1DXiGxWyGK6Z1X7yZN3YoWN4pSaLJDhumDen6Oronzmre8sZ+WHDYssSQqXPiM32KnGlXR/hrh68F1Jx8raHS4C5q98LaqzGPWHjedzwFYhCN3KRk2Akj3gB6/SEAvkeK1qdB60rYblRNeeJg03YXGdLz/DgozEFzI06uEwLXfcmToJoSrCjQyIZiSDdQhPfrbZGl/pr3jinTlod7LFAMMJcfsz0nf0lvAgMBAAECggEAYpZZ/NFG6BSUKXnnPiRFloSuLJs7xKrLVR03Ci3CFqE4mBgavwNl4zrWz980yh2AXg/NlUacItcHy/umYetCmf/YxxHqUKIrTdG9gB7osGkl4HdJSR0fjuPSWivD/o3ah7s2U0kwIO2SAHwqrTFF7dGTf44VfSUigzxxVgaDT8KehEpUV752IKitVhctwHVIL+CQEz/HXrXQmjpnjLrnjdVwyZt+HtHtZL628kizl1PJgFjCCbMm5Lh7y/rZx1S86I5tG+j6HpXpOXHKhwi5PyTTGT4F+6ks3xCTmeSoNi+UsuUsBG5Em/+6846Zb2R0lKQx19i7i+y/dEp4SM32gQKBgQDPWM4l3NtkWfz9p6vDHbno1wD5S+umLoWDBmgAA1JquWuWUwNNgkOB0mYKyxKweWozZtpZ4zxDpipfevjyUCO2qegrF9g/r2aCoA1z482sRwSt1/Jech7JfW4uF5yM1VCeUBMmuExPu6XcHrqmSJvrQK2t1Ocit/q3Kyb5h/EFUQKBgQDK26tVtxn7Co9XR1D6vf2hsXcDYjwes6h0qAMHaQ0Ti38OjwS+CVsMGQz1GVfwlV0qt8h0jV5Iy88KXyI42nvNzf4pe02dvCXxhSejbXcy0eCWEYSCyxbQU+Bg0ckoPd82+4Oig0Us7JgxWoS8rysXEF2ZBItpPi26c2cTPtqyvwKBgQCQ0gf6Lg4WQzwOtqOjPgnxdOo7NSm8AlZCM6FEEQ3peOSKNCTkaA1aiWe4NioxlDv29umfSrV20oJZ+fwS0qJ/HKEKKDdkE9BXgA6lWQD4SQodmeywxqh2NuNT0i4Ht539VRRrQOIb9oZb/iKDrccpQx2Lgl6Fw1abxMoOE0LmYQKBgQCm01BsBVCQa3bGSBgInQZgWxmM5tSaSxVWGnWjOnlOgYHT7znvLrJ5mIBXcKgpaixcXRe1Ai1voGx8ExCJwOPftHA4nPaPqZNqtB6NABDu8jrIL0/SYEI6wT/dX6kWNwvCo8T1eQ8Ciu/+ZnqS0VuWdBcFJ/+eZUwl8ZHq+d3Q8QKBgQDAVVWr2IH4aRtHyQigeexVg650RbcmhkjsSefRhT3tczFa85OCFL1DebmIFUNwUSeQQx/r2ArFH/jrs+EB+1i97nBzhTuCivE9uH0SOJKpBhUZzjpYsxEFq35KJEGXoZ4g0jZW/yuNfHB9XFfH2bwQxjK+4lUKuaJK8HgP/QcmdQ==";
//    		    String PAY_RSA_PRIVATE = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCkqFML+cLnLbvrnNZ0pKkjRahOUoJJ6AjQkNhaKvvTjy/fxLiAeNxn/2IdgKHR8mpU0yYYPcsRZyDdn80CtAkP+mAw3778pf7dQxFmGA8iOUBw8vkezSzzeXgR7gnji8iqgiRoHYg7zMkgJD+Ru4qzk0ClMdYU2xbRloV+NzHYeUJNmJekLOhTBekt6/L2MZdoQ3AahXrvtJf2Dz9qq3Aj29eFaeDpRscJ37kkhTRJvmMg1HdLvr6P+QUNdb4pEJA8hwLWQhYbGkyKW0ZEXyRMzeaKF1mC23geewNhYOZg+KnMZhuuo53TsFNu0+C6zsAO+nYC3bXm2srrdkHpvFupAgMBAAECggEAG1H6hZApcKY7+foJ80ym671REb3K9GxVmhWOcFeVdSLa9Kv1WQu0tmS/aNnA/87TKcPnHDqUiQytfVhYccxhfI80iqd1TwJT6W6JYoE3cZxCPvtxrlSo0rUi4Qa4CVNWNkRlugi8Y/+0l2qsSYfumaEjJsXAGbHIdXoeKDUMRjiDsBvCZmqN9SQe6ivPp8uySV5soctQSrd9WU+kOPmJFGxgb15pfSbYgiX6tQeHBc2QT3m0CnZ0S+C1fNonfUUVu9DiuQyDH5TtkOOsvhavNYxFDWtPWwGv3tpL4ELlH6emvn/TvR+EQz3x5A+jCRYVRIv6HeaNJQpkNiKchgWqoQKBgQDrD+KqXfvOjZ617MCIh/fmkVU5LseC5QU130SdoK0ZFLQnDKgLsYxxYJI3i46/GL+WU8s/uRbNuYZDmyKimpzbTu5cfbfHWCm71tyB4gnZ/NqWISAJIiyW43v0xnUTFcIZQ6fRZ5vKmbb41o0NGse9p+lNCO/GcKWHpfXV2mMJnQKBgQCzUwGIdiYS83NAqrdzMpWNH80RG0yKJSbh/+KP4d8HBBpYGXwUgomoLXVR4HqfoWuEH+eoMh7b7Jn+AgktLgJBgIiIuydg4wziHXQuhNAOjmWrPnCiHAJLHIdNo3jz9SvF1KFr67QfcFoiL+abS2/P0Zcx4NFIgjnA4Z2NVYAyfQKBgQDRY24rCttC7L6DGimLtWrrlWyQKo6ImA/jJEaQD1ACdoHgAxMyj28mk7rMBeIbciU/+Nalpe+dRHVIhcn9hLLTXOVRuJ9b0LokXEpC3KKf7vCcKVfLKwkDRBLoQVyKqqgjLzQvghayC+mEkkJFeSSSWh+lgp9sam3ZfsmVPRtZtQKBgARDVuf9lw4gR38kD9RnQXLnbKKZeYpXM8Nvp90vy3OJP28UvARozgj3e7CEm6Wr2rh7YbB38I/d4hNNzRYL3/XarmRBvr/o5eeCN77bXW7bJ8OYamkQLWXHude4qSlzjKTZVzUPl2qf6ySg6uSKOJBCNUv0QkVtAx54vpwbij6pAoGAaHtiED7pDqQubIr+MVovNJXqmYryokEfTd3CbLek0Rc2XnWWzPYvALBNkrO/0pCJprFP4u/B7pjt0eUqjwHd1m4Oap4vVROF+BGUAFlwLaz3iQPKAdWxy+ZduwoGZUjVoTNS2D8bQVH+yDtCoeYymW/2yF+S6c+++dNtr/3CcLM=";
//    		    String PAY_RSA_PUBLIC =  "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApKhTC/nC5y2765zWdKSpI0WoTlKCSegI0JDYWir7048v38S4gHjcZ/9iHYCh0fJqVNMmGD3LEWcg3Z/NArQJD/pgMN++/KX+3UMRZhgPIjlAcPL5Hs0s83l4Ee4J44vIqoIkaB2IO8zJICQ/kbuKs5NApTHWFNsW0ZaFfjcx2HlCTZiXpCzoUwXpLevy9jGXaENwGoV677SX9g8/aqtwI9vXhWng6UbHCd+5JIU0Sb5jINR3S76+j/kFDXW+KRCQPIcC1kIWGxpMiltGRF8kTM3mihdZgtt4HnsDYWDmYPipzGYbrqOd07BTbtPgus7ADvp2At215trK63ZB6bxbqQIDAQAB";
//    		    String LOGIN_RSA_PUBLIC ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApE3+Z/kmUFSNv+BxsPcXsEexXgo1zFO+sN4mHmTa3o9fIgn3PqqYK1XeD7cePbrajTC+pXxnE3j5K8u6F7UItKFCG9QNqV4pF1a1gu6i9FHpMwvOvBpotQ14hsVshiumdV+8mTd2KFjeKUmiyQ4bpg3p+jq6J85q3vLGflhw2LLEkKlz4jN9ipxpV0f4a4evBdScfK2h0uAuavfC2qsxj1h43nc8BWIQjdykZNgJI94Aev0hAL5HitanQetK2G5UTXniYNN2FxnS8/w4KMxBcyNOrhMC133Jk6CaEqwo0MiGYkg3UIT3622Rpf6a944p05aHeyxQDDCXH7M9J39JbwIDAQAB";
//    		    String APP_ID = "100090525";
//    			APPID = PAY_ID;
//        		APPKEY = BUO_SECRET+","+PAY_RSA_PRIVATE+","+PAY_RSA_PUBLIC+","+LOGIN_RSA_PUBLIC+","+APP_ID;
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "jf":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "jl":
//    			APPID = "A334271A175546D7857AEEFA5F897F02";
//        		APPKEY = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKZQrV1qIcHenIkEZAgGPmHbqEOAaH3dP+8Q/gL3pYM5HN/lf+zLx7J6apOi+J9xg2QSUft9uU/oNFJdTj7ZP1TDMoy0oaqObNHwyHg0UwpYu6lDgUjFK/EWY2DqY8fHozFCUnEsF5ncZ1EwuzXdpwaXoXj4UvhPys1dFYYqJnelAgMBAAECgYAqJ3q5maPywpzEcdN04ThAj29HpK1XcZO54YGweNp/tyMlcMMK3t+/0h1fTEheCWR3Idmbt9MXeNCCK9ogPeo6BgNBrdM0i4SS7eJvLcSxNi5p+mGBrkFXG+zn6CBGA4ReCmnxv8Z6SDqAfu5gTx1SFbRqB9VjeBDQWvuLFOARQQJBANh8G76SnsYFgKvVjAxgjL8Ko2yZlhAw2uFOyv4qd7h+m5ust3JBOKiN8LfKZxzoySrVBX9G7++lzEUDOCQTlzECQQDErD5dMbNjCl0s4tEHWpxhB35/wtkpiZdOH7MsWSaTHvNm/4qCbf80m4zdv8O91gg9VsndoZiuffvPn6xZ1TK1AkEAn9FPsisP5+ScDz9Besm0Xjz+VOg1rpJCpF7E4Up8w8lEG3Mworqfl1/iO+zCnscD7AkDW+kErQjben9b7NZBoQJAJ865PMG/jm9dlqU+K9/iQR10NEXrEKZB0tVFvdc5oJOmLpXQoj/DZRGK/KNA6l61Aj1b1JlNvxvO6SJnjzNA9QJBAIZhrJWyYTHAqRFOdkmXrw+mEyEhjxMS+DlcDF3x5u6NG8yF1P/6YFE//xIcRQSJZbPiEfKAM/90fggP2gbGHzE=";        		
//        		ADChannel="jl";
//        		SDKPAY="0,1";
//    			break;
//    		case "kp":
//    			APPID = "5000007172";
//        		APPKEY = "RjkwODFDQTI4NTkwMUUxNTU2RDg0MDRBQTYxQ0NERTAyMzVBQUUwNk1UVTFOalF3T1RFNU5qVXdOamd4TmpjNE9Ea3JNalEwT0RrNE5EYzRPRE15TWpJNE56QXpNVGMwTkRJNU16a3hOVGcyTnpZeU1ETTRPREk1";
//        		ADChannel="am";
//        		SDKPAY="0,1";
//    			break;
//    		case "kw":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "ls":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="0,1";
//    			break;
//    		case "unicom":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "lxlsd":
//    			APPID = "3012726801";
//        		APPKEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCjexAlGbIzAOp4xGwENPpS4OsGIvNK7JGtOOy72dxqUXM5+m77AgB2aFwoRFjcy7MqgVzSJJZjxHO8qEHhP9bYtaxn/IGS32nbMt3Mamfnno93N9bEwfUPCOXXUnQgUkKPK8ZA2kulYr/rEYavtQxRBfxIo4od9igzwaJY9zTSvwIDAQAB,MIICXgIBAAKBgQCrGZqZRU/WhJCq2Y6J/2x2eysIZjG4KBqwVDSEJwHPmDi0IxS9BGZBzQlmrwSbYbwlnoZaI7mK/YyyUlrvy17nPVm7asiP0eW4+XoM7egg3xH7lhhlVf+gAxSiELm7UOp35W56eEyApc7nxeodVfRNxAZLGP9Lra3IrB7jYIa3vwIDAQABAoGBAIiKqkFeetQqfniZnZKq75etuy28wDjCaGoHCNHdfyh3xeibhlVBSYmBYts7GGYXnNo4o+cTU2KD7N/xsPhkR5rbOtVNbRX9yBy+YcWCBN10SmYv+x3QcEvCyBrJNvxfOWarDobzSPBTexyi7mcyPTlO0qO8Onsvw8pzGuMI90ohAkEA3umz8GYzPZ5UC7eDC+wqSW63e8bDETdy3BtKVZx+UeAOaImeg1Ngrnxp0muYEbawQQWV463UNoTS4d7i7WFwawJBAMR/GkrkgihT357NvRBvNbjmoF5ezU5nlyjLqAn4nftF03z8bER3QccP1+OAqfSC8q6CImho0+N6XDcLwOpfWv0CQHFyq3tr6CQyEkAsU2ub9CGPUZ6TF/AJMlHHKdvMW5W73FljwOLBanEjLJBE5g4N1kIhX5mSfHCKxPDjiMabUqUCQQCVPnjI43Cckr/pTRjJz739F2Y850KGx5V/Ddgu4p+Th0CP0OWmxvG18SmniUUNCxyqQPtDVEODpp89y/aVzSE9AkEAt4w8+ZBc2FeEjcAlhSV0JofzxaggipS5DC2BdxrbF33HPpuCv65A+yppggw0e8AjG1kzYYzO3H940Z99N9mHMw==";
//        		ADChannel="";
//        		SDKPAY="0,1";
//        		break;
//    		case "lxyx":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "mz":
//    			APPID = "3192761";
//        		APPKEY = "a3f8ab7185b94e7098798b66fa5c64f0,Ku7UGrsldiA6RdQxMBByEnXM5XJWrWj3";
//        		ADChannel="mz";
//        		SDKPAY="0,1";
//    			break;
//    		case "mzw":
//    			APPID = "1";
//        		APPKEY = "1";
//        		ADChannel="am";
//        		SDKPAY="1,1";
//    			break;
//    		case "qihu360":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="0,1";
//    			break;
//    		case "sg":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "txllq":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="tx";
//        		SDKPAY="1,0";
//    			break;
//    		case "txyysc":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="tx";
//        		SDKPAY="1,0";
//    			break;
//    		case "txyxzx":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="tx";
//        		SDKPAY="1,0";
//    			break;
//    		case "wdj":
//    			APPID = "1";
//        		APPKEY = "1";
//        		ADChannel="tx";
//        		SDKPAY="1,0";
//    			break;
//    		case "wxgame":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="0,1";
//    			break;
//    		case "xm":
//    			APPID = "2882303761517616655";
//        		APPKEY = "5181761673655";
//        		ADChannel="xm";
//        		SDKPAY="0,1";
//    			break;
//    		case "dxx":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "moblie":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "yw":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "yyh":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "yk":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "yy":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="am";
//        		SDKPAY="1,0";
//    			break;
//    		case "meitu":
//    			APPID = "1007";
//        		APPKEY = "yWpx3hWQHFhSnTCj#1007#6KuRKuaAjLJ5sYRy";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    		case "taptap":
//    			
//    			String WX_APP_ID1 = "wx651cced760792802"; 
// 				String WX_MCH_ID1 = "1489860852";	
// 				String WX_API_KEY1 = "53236073337180470952250400959808"; 	
// 				String ALI_PARTNER1 = "2088511798626863";
//    			String ALI_SELLER1 = "2088511798626863";	
//    			String ALI_RSA_PRIVATE1 = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKTrA5p/o++3KydmC66AY3V0fj1evRZEbEAEwETl1ISBzmK1kEQLnVtnwq2fFbUPWsJM49WktIVCqJyAQBZ4oQCS1w+bAZxSdz4cISr98OI5xwOXJT9uDhOQOOp2qyq11RNSrEfZppT19X29aZ86aPW92EFqitngHAk8f7cGXwDHAgMBAAECgYBhpEuD4+KaASbpsr9j19wLJKfBiiAF2QkGdkmoATNsKLabNshtoTrPbYWT6kad5rNjqsaSLWw8IhVWY5COPWmEy95Bwt/4Ted1wCu+dspibOe0zdeA8BVEMbA9GjXkNVxKb9n1oacSUtyEkSglRE9tNsY3LnFPwFkm/AMIqyGSUQJBANbhdiHybiW9dk+0B1xHzMW9QoEDUcPtZI5rmMPPHzNtkUbnH9dnB+VE7ompSroXi8E1xxQ7TYQNB9cazVjY4MUCQQDEef1GHUqcdtSPjAnD754HOsodbW0X4kt+6oBu3xBbYgHGSBh7CE2LQRp0BTgrC8yen2dYTMoJRBgY6iqmXtwbAkBnezKRzJdA84nrfk5hIW6695b0XG3fBg78C1MJUVC8SpLA64NJD6QcxGJ/xxhmn/o8tLJHyvtckY3qCE1F8UPlAkEAkshUKEp/0C6SlH9ZWFEubVZFYwC6LMq5/iIxOyNYs/yfOMPpzhig3fUQTzcLBFW3U5Xg/j23/n4pxotCu7JImwJBALPNI6/lr824upEK4p/2he0LqDWIQIOMmqHgMbnwkONAHrjaMWxUA9/b0GPy+9mmUhQcvVhIYja3kfzkRAekrQY=";
//    			String ALI_RSA_PUBLIC1 = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB";
//    			APPID = WX_APP_ID1;
//        		APPKEY = WX_MCH_ID1+","+WX_API_KEY1+","+ALI_PARTNER1+","+ALI_SELLER1+","+ALI_RSA_PRIVATE1+","+ALI_RSA_PUBLIC1;
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "samsung":
//    		    String samsungappid = "5001039714";
//    			String samsungprivateKey = "MIICXAIBAAKBgQCet1yf4kQOnqSLaEkmTHTdf8ZwPYd1zjMuSORraT6Ira5BZtWa5iRCOE8d0xIGoz65BN+jth8NuFf0thrcCx9Rl4TQw/ABDQl0OKd/Pd+c+92M+hgc3JbN6zK2Zi7ahZQuSDWEgCBoLsOQoTIW8dEBcQpmLci98elbGFcyb/TLZwIDAQABAoGAI9PsesMO7eXt6vJNoPGdZ+rSFsAs9fDoKMiXl4+YaC4cqfLWwTK2eKRRZ8Afz5PGMungugoAlI5KfJknEwkHtn4QeER9LLjgC//9FZ3ZY7m//5eJJQJDXRtDCJfRWvRe+gF7gIQbz34ocQ4Ogp1BV4MgqtPbqXkN9PViGcaneYECQQDbohfAibGPHiMacW0GAqRW7oJ7ljdeEgzYFfuerR0PgboHpShiODwQz/3ys3jkNIAtqoubL5rwu9x/OE+LrD+hAkEAuP8YlfE1ZWcqfoIc9yCsUAJLdm5MbjYiYh8NB3/BB9hFPulE+GuNtr/qeZ7B17EeTxqIk2K+Wa6Mw7SeJVxOBwJAA+k0ARKynbjMqTjh1xyO7plaq3a2T6+EmQhzLZUpklAeDurK+EzGDQqXHA5EFdQ1gBqsV7wWRzkhKQbIq9UKYQJAWqOx+hU6ojpP2bgKVRLPGkxliNs123HumsC384qmmx9dnhtQzZ50yqtxSLF+LB39yagobn4c4XfiRCkEqy10lQJBAMHo/e9fbaqPvMw9kfokuvA75sV3+Xps26cEEMJaHbYtlHxvAaEXIiqEaYib508Tziu7xtj9rBH7QxZspvfsmLE=";
//    			String samsungpublicKey="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCC1XZ4ds9JPCHwaW4wsX3oGPZ5C2a1usK6YbYZzrfftCRJ/PBptMieT4RN0dEmmHytreaa9jYc7fvsGmW+4sFuotbjBtPu18OGhcR40QzvaGlRLE9hthYEnS2v6JlFnQ/qoBN6RAIn7Wsa4UDKDcuSCQsulCyl4j7gKeWjQ3QYlQIDAQAB";
//    			String samsungCLIENT_ID="";
//    			String samsungCLIENT_SECRETE="";
//    			APPID = samsungappid;
//        		APPKEY = samsungprivateKey+","+samsungpublicKey+","+samsungCLIENT_ID+","+samsungCLIENT_SECRETE;
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "e2wwk":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//    		case "bilibili":
//    			APPID = "";
//        		APPKEY = "";
//        		ADChannel="";
//        		SDKPAY="0,1";
//    			break;
//case "cuizi":
//    	String appid="20000054";
//
//    	String appsecret = "PWpbbw06JZntZrykp9bjEOUCIanjLmve";
//
//		APPID = appid;
//
//		APPKEY = appsecret;
//
//		ADChannel="";
//
//		SDKPAY="0,1";
//
//break;
//case "smartisan":
//    	String appidSmartisan="e2eCa732422245E8891F6555e999878B";
//
//    	String appsecretSmartisan = "Cf6ea6A06d1f299d3895f84D309a2e42";
//
//		APPID = appidSmartisan;
//
//		APPKEY = appsecretSmartisan;
//
//		ADChannel="";
//
//		SDKPAY="0,1";
//
//break;
//case "huawei20180410":
//    	String PAY_ID20180410="900086000020107215";
//
//    	String BUO_SECRET20180410 = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCkTf5n+SZQVI2/4HGw9xewR7FeCjXMU76w3iYeZNrej18iCfc+qpgrVd4Ptx49utqNML6lfGcTePkry7oXtQi0oUIb1A2pXikXVrWC7qL0UekzC868Gmi1DXiGxWyGK6Z1X7yZN3YoWN4pSaLJDhumDen6Oronzmre8sZ+WHDYssSQqXPiM32KnGlXR/hrh68F1Jx8raHS4C5q98LaqzGPWHjedzwFYhCN3KRk2Akj3gB6/SEAvkeK1qdB60rYblRNeeJg03YXGdLz/DgozEFzI06uEwLXfcmToJoSrCjQyIZiSDdQhPfrbZGl/pr3jinTlod7LFAMMJcfsz0nf0lvAgMBAAECggEAYpZZ/NFG6BSUKXnnPiRFloSuLJs7xKrLVR03Ci3CFqE4mBgavwNl4zrWz980yh2AXg/NlUacItcHy/umYetCmf/YxxHqUKIrTdG9gB7osGkl4HdJSR0fjuPSWivD/o3ah7s2U0kwIO2SAHwqrTFF7dGTf44VfSUigzxxVgaDT8KehEpUV752IKitVhctwHVIL+CQEz/HXrXQmjpnjLrnjdVwyZt+HtHtZL628kizl1PJgFjCCbMm5Lh7y/rZx1S86I5tG+j6HpXpOXHKhwi5PyTTGT4F+6ks3xCTmeSoNi+UsuUsBG5Em/+6846Zb2R0lKQx19i7i+y/dEp4SM32gQKBgQDPWM4l3NtkWfz9p6vDHbno1wD5S+umLoWDBmgAA1JquWuWUwNNgkOB0mYKyxKweWozZtpZ4zxDpipfevjyUCO2qegrF9g/r2aCoA1z482sRwSt1/Jech7JfW4uF5yM1VCeUBMmuExPu6XcHrqmSJvrQK2t1Ocit/q3Kyb5h/EFUQKBgQDK26tVtxn7Co9XR1D6vf2hsXcDYjwes6h0qAMHaQ0Ti38OjwS+CVsMGQz1GVfwlV0qt8h0jV5Iy88KXyI42nvNzf4pe02dvCXxhSejbXcy0eCWEYSCyxbQU+Bg0ckoPd82+4Oig0Us7JgxWoS8rysXEF2ZBItpPi26c2cTPtqyvwKBgQCQ0gf6Lg4WQzwOtqOjPgnxdOo7NSm8AlZCM6FEEQ3peOSKNCTkaA1aiWe4NioxlDv29umfSrV20oJZ+fwS0qJ/HKEKKDdkE9BXgA6lWQD4SQodmeywxqh2NuNT0i4Ht539VRRrQOIb9oZb/iKDrccpQx2Lgl6Fw1abxMoOE0LmYQKBgQCm01BsBVCQa3bGSBgInQZgWxmM5tSaSxVWGnWjOnlOgYHT7znvLrJ5mIBXcKgpaixcXRe1Ai1voGx8ExCJwOPftHA4nPaPqZNqtB6NABDu8jrIL0/SYEI6wT/dX6kWNwvCo8T1eQ8Ciu/+ZnqS0VuWdBcFJ/+eZUwl8ZHq+d3Q8QKBgQDAVVWr2IH4aRtHyQigeexVg650RbcmhkjsSefRhT3tczFa85OCFL1DebmIFUNwUSeQQx/r2ArFH/jrs+EB+1i97nBzhTuCivE9uH0SOJKpBhUZzjpYsxEFq35KJEGXoZ4g0jZW/yuNfHB9XFfH2bwQxjK+4lUKuaJK8HgP/QcmdQ==";
//
//    	String PAY_RSA_PRIVATE20180410 = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCkqFML+cLnLbvrnNZ0pKkjRahOUoJJ6AjQkNhaKvvTjy/fxLiAeNxn/2IdgKHR8mpU0yYYPcsRZyDdn80CtAkP+mAw3778pf7dQxFmGA8iOUBw8vkezSzzeXgR7gnji8iqgiRoHYg7zMkgJD+Ru4qzk0ClMdYU2xbRloV+NzHYeUJNmJekLOhTBekt6/L2MZdoQ3AahXrvtJf2Dz9qq3Aj29eFaeDpRscJ37kkhTRJvmMg1HdLvr6P+QUNdb4pEJA8hwLWQhYbGkyKW0ZEXyRMzeaKF1mC23geewNhYOZg+KnMZhuuo53TsFNu0+C6zsAO+nYC3bXm2srrdkHpvFupAgMBAAECggEAG1H6hZApcKY7+foJ80ym671REb3K9GxVmhWOcFeVdSLa9Kv1WQu0tmS/aNnA/87TKcPnHDqUiQytfVhYccxhfI80iqd1TwJT6W6JYoE3cZxCPvtxrlSo0rUi4Qa4CVNWNkRlugi8Y/+0l2qsSYfumaEjJsXAGbHIdXoeKDUMRjiDsBvCZmqN9SQe6ivPp8uySV5soctQSrd9WU+kOPmJFGxgb15pfSbYgiX6tQeHBc2QT3m0CnZ0S+C1fNonfUUVu9DiuQyDH5TtkOOsvhavNYxFDWtPWwGv3tpL4ELlH6emvn/TvR+EQz3x5A+jCRYVRIv6HeaNJQpkNiKchgWqoQKBgQDrD+KqXfvOjZ617MCIh/fmkVU5LseC5QU130SdoK0ZFLQnDKgLsYxxYJI3i46/GL+WU8s/uRbNuYZDmyKimpzbTu5cfbfHWCm71tyB4gnZ/NqWISAJIiyW43v0xnUTFcIZQ6fRZ5vKmbb41o0NGse9p+lNCO/GcKWHpfXV2mMJnQKBgQCzUwGIdiYS83NAqrdzMpWNH80RG0yKJSbh/+KP4d8HBBpYGXwUgomoLXVR4HqfoWuEH+eoMh7b7Jn+AgktLgJBgIiIuydg4wziHXQuhNAOjmWrPnCiHAJLHIdNo3jz9SvF1KFr67QfcFoiL+abS2/P0Zcx4NFIgjnA4Z2NVYAyfQKBgQDRY24rCttC7L6DGimLtWrrlWyQKo6ImA/jJEaQD1ACdoHgAxMyj28mk7rMBeIbciU/+Nalpe+dRHVIhcn9hLLTXOVRuJ9b0LokXEpC3KKf7vCcKVfLKwkDRBLoQVyKqqgjLzQvghayC+mEkkJFeSSSWh+lgp9sam3ZfsmVPRtZtQKBgARDVuf9lw4gR38kD9RnQXLnbKKZeYpXM8Nvp90vy3OJP28UvARozgj3e7CEm6Wr2rh7YbB38I/d4hNNzRYL3/XarmRBvr/o5eeCN77bXW7bJ8OYamkQLWXHude4qSlzjKTZVzUPl2qf6ySg6uSKOJBCNUv0QkVtAx54vpwbij6pAoGAaHtiED7pDqQubIr+MVovNJXqmYryokEfTd3CbLek0Rc2XnWWzPYvALBNkrO/0pCJprFP4u/B7pjt0eUqjwHd1m4Oap4vVROF+BGUAFlwLaz3iQPKAdWxy+ZduwoGZUjVoTNS2D8bQVH+yDtCoeYymW/2yF+S6c+++dNtr/3CcLM=";
//
//    	String PAY_RSA_PUBLIC20180410 =  "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApKhTC/nC5y2765zWdKSpI0WoTlKCSegI0JDYWir7048v38S4gHjcZ/9iHYCh0fJqVNMmGD3LEWcg3Z/NArQJD/pgMN++/KX+3UMRZhgPIjlAcPL5Hs0s83l4Ee4J44vIqoIkaB2IO8zJICQ/kbuKs5NApTHWFNsW0ZaFfjcx2HlCTZiXpCzoUwXpLevy9jGXaENwGoV677SX9g8/aqtwI9vXhWng6UbHCd+5JIU0Sb5jINR3S76+j/kFDXW+KRCQPIcC1kIWGxpMiltGRF8kTM3mihdZgtt4HnsDYWDmYPipzGYbrqOd07BTbtPgus7ADvp2At215trK63ZB6bxbqQIDAQAB";
//
//    	String LOGIN_RSA_PUBLIC20180410 ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApE3+Z/kmUFSNv+BxsPcXsEexXgo1zFO+sN4mHmTa3o9fIgn3PqqYK1XeD7cePbrajTC+pXxnE3j5K8u6F7UItKFCG9QNqV4pF1a1gu6i9FHpMwvOvBpotQ14hsVshiumdV+8mTd2KFjeKUmiyQ4bpg3p+jq6J85q3vLGflhw2LLEkKlz4jN9ipxpV0f4a4evBdScfK2h0uAuavfC2qsxj1h43nc8BWIQjdykZNgJI94Aev0hAL5HitanQetK2G5UTXniYNN2FxnS8/w4KMxBcyNOrhMC133Jk6CaEqwo0MiGYkg3UIT3622Rpf6a944p05aHeyxQDDCXH7M9J39JbwIDAQAB";
//
//    	String APP_ID20180410 = "100115283";
//
//		APPID = PAY_ID20180410;
//
//		APPKEY = BUO_SECRET20180410+","+PAY_RSA_PRIVATE20180410+","+PAY_RSA_PUBLIC20180410+","+LOGIN_RSA_PUBLIC20180410+","+APP_ID20180410;
//
//		ADChannel="";
//
//		SDKPAY="0,1";
//
//break;
//case "cuizi20180413":
//    	String appidSmartisan20180413="20000054";
//
//    	String appsecretSmartisan20180413 = "PWpbbw06JZntZrykp9bjEOUCIanjLmve";
//
//		APPID = appidSmartisan20180413;
//
//		APPKEY = appsecretSmartisan20180413;
//
//		ADChannel="";
//
//		SDKPAY="0,1";
//
//break;
//case "test":
//       	String testappid1="7200";
//
//    	String testappkey1 = "1b23";
//
//    	String testappkey2 = "aasbs";
//
//		APPID=testappid1;
//
//		APPKEY=testappkey1+","+testappkey2;
//
//		ADChannel="";
//
//		SDKPAY="0,1";
//
//break;

//APPID=APPID;
//
//APPKEY=testappkey1+","+testappkey2;
//
//ADChannel="";
//
//SDKPAY="0,1";
//    	}
    }
    public static String[] ADParamSplit(String IDString)
    {
    	String[] strArray=null;   
    	
    	
    	try
    	{
	    	
	    	strArray = convertStrToArray(IDString,",");
	    	String[] strArrayReturn = new String[strArray.length];
	    	for(int i = 0 ; i<strArray.length;i++)
	    	{

	    		strArrayReturn[i]=strArray[i].toString();
	    	}
	    	return strArrayReturn;
	    	
    	}
    	catch(Exception E)
    	{
    		SdkApplication.LogLocal("[ADParamSplit]Error="+E);
    		return strArray;

    	}
    }
    
    public static void GetSeverSettingDate()
    {
    	new Thread(){
    		@Override
    		public void run()
    		{

    									//101
		    String str = HttpUrlpost("http://101.200.214.15/setting/jsonServerSetting.php?name="+SdkApplication.msg+"&appid="+appid);
		    Log.e("IAP","Try Chinese Server="+str);
		    if (str.equals(""))
		    {
				str = HttpUrlpost("http://149.248.6.43/setting/jsonServerSetting.php?name="+SdkApplication.msg+"&appid="+appid);
				Log.e("IAP","Try American Server:"+str);
			}
			if (str.equals(""))
			{
				str = HttpUrlpost("http://45.32.25.220/setting/jsonServerSetting.php?name="+SdkApplication.msg+"&appid="+appid);
				Log.e("IAP","Try Japanese Server:"+str);
			}
		    //SdkApplication.LogLocal("------[GetSeverSettingDate]http://101.200.214.15/setting/jsonServerSetting.php?name="+SdkApplication.msg+"&appid="+appid);
		    //SdkApplication.LogLocal("------[QinConst][GetSeverSettingDate]str="+str);
		    if(!str.equals(""))
		    {
				    JSONTokener jsonParser = new JSONTokener(str);    
				    JSONObject Parameter; 
				    try 
				    {
					    Parameter = (JSONObject) jsonParser.nextValue();
					    APPID = Parameter.getString("APPID");
					    APPKEY = Parameter.getString("APPKEY");
					    ADParamList = ADParamSplit(Parameter.getString("ADChannel"));			    
					    ADChannel = ADParamList[0];					    
					    SDKPay = Parameter.getString("SDKPay");
						if (Parameter.isNull("VerifyKey")==false)
						{
							Log.e("IAP",Parameter.getString("VerifyKey"));
							VerifyKey = Parameter.getString("VerifyKey");
						}
//					    SdkApplication.LogLocal("Parameter.getString(\"ADChannel\")="+Parameter.getString("ADChannel"));
//					    SdkApplication.LogLocal("ADChannel="+ADChannel);
//					    SdkApplication.LogLocal("SeverAPPID="+APPID);
//					    SdkApplication.LogLocal("SeverAPPKEY="+APPKEY);
//					    SdkApplication.LogLocal("SeverADChannel="+ADChannel);
//					    SdkApplication.LogLocal("SeverSDKPay="+SDKPay);
					    
					    JSONObject  Parameter1 = (JSONObject)Parameter.getJSONObject("production1");
					    ydpid1=	    Parameter1.getString("ydpid");		//SdkApplication.LogLocal("Serverydpid1="+ydpid1);
					    ltpid1=     Parameter1.getString("ltpid");		//SdkApplication.LogLocal("Serverltpid1="+ltpid1);
					    dxpid1=	    Parameter1.getString("dxpid");		//SdkApplication.LogLocal("Serverdxpid1="+dxpid1);
					    ServerChannelPid1=Parameter1.getString("channelpid");	//SdkApplication.LogLocal("Serverchannelpid1="+ChannelPid1);
					    Serverpricefloat1=Parameter1.getString("pricefloat");	//SdkApplication.LogLocal("Serverpricefloat1="+pricefloat1);
					    ServerDesc1=		Parameter1.getString("desc");		//SdkApplication.LogLocal("Serverdesc1="+desc1);	
					    
					    JSONObject  Parameter2 = (JSONObject)Parameter.getJSONObject("production2");
					    ydpid2=	    Parameter2.getString("ydpid");		
					    ltpid2=     Parameter2.getString("ltpid");		
					    dxpid2=	    Parameter2.getString("dxpid");		
					    ServerChannelPid2=Parameter2.getString("channelpid");	
					    Serverpricefloat2=Parameter2.getString("pricefloat");	
					    ServerDesc2=		Parameter2.getString("desc");		
					    
					    JSONObject  Parameter3 = (JSONObject)Parameter.getJSONObject("production3");
					    ydpid3=	    Parameter3.getString("ydpid");		
					    ltpid3=     Parameter3.getString("ltpid");		
					    dxpid3=	    Parameter3.getString("dxpid");		
					    ServerChannelPid3=Parameter3.getString("channelpid");	
					    Serverpricefloat3=Parameter3.getString("pricefloat");	
					    ServerDesc3=		Parameter3.getString("desc");		
					    
					    JSONObject  Parameter4 = (JSONObject)Parameter.getJSONObject("production4");
					    ydpid4=	    Parameter4.getString("ydpid");		
					    ltpid4=     Parameter4.getString("ltpid");		
					    dxpid4=	    Parameter4.getString("dxpid");		
					    ServerChannelPid4=Parameter4.getString("channelpid");	
					    Serverpricefloat4=Parameter4.getString("pricefloat");	
					    ServerDesc4=		Parameter4.getString("desc");		
					    
					    JSONObject  Parameter5 = (JSONObject)Parameter.getJSONObject("production5");
					    ydpid5=	    Parameter5.getString("ydpid");		
					    ltpid5=     Parameter5.getString("ltpid");		
					    dxpid5=	    Parameter5.getString("dxpid");		
					    ServerChannelPid5=Parameter5.getString("channelpid");	
					    Serverpricefloat5=Parameter5.getString("pricefloat");	
					    ServerDesc5=		Parameter5.getString("desc");		
					    
					    JSONObject  Parameter6 = (JSONObject)Parameter.getJSONObject("production6");
					    ydpid6=	    Parameter6.getString("ydpid");		
					    ltpid6=     Parameter6.getString("ltpid");		
					    dxpid6=	    Parameter6.getString("dxpid");		
					    ServerChannelPid6=Parameter6.getString("channelpid");	
					    Serverpricefloat6=Parameter6.getString("pricefloat");	
					    ServerDesc6=		Parameter6.getString("desc");		
					    
					    JSONObject  Parameter7 = (JSONObject)Parameter.getJSONObject("production7");
					    ydpid7=	    Parameter7.getString("ydpid");		
					    ltpid7=     Parameter7.getString("ltpid");		
					    dxpid7=	    Parameter7.getString("dxpid");		
					    ServerChannelPid7=Parameter7.getString("channelpid");	
					    Serverpricefloat7=Parameter7.getString("pricefloat");	
					    ServerDesc7=		Parameter7.getString("desc");		
					    
					    JSONObject  Parameter8 = (JSONObject)Parameter.getJSONObject("production8");
					    ydpid8=	    Parameter8.getString("ydpid");		
					    ltpid8=     Parameter8.getString("ltpid");		
					    dxpid8=	    Parameter8.getString("dxpid");		
					    ServerChannelPid8=Parameter8.getString("channelpid");	
					    Serverpricefloat8=Parameter8.getString("pricefloat");	
					    ServerDesc8=		Parameter8.getString("desc");		
					     
					    JSONObject  Parameter9 = (JSONObject)Parameter.getJSONObject("production9");
					    ydpid9=	    Parameter9.getString("ydpid");		
					    ltpid9=     Parameter9.getString("ltpid");		
					    dxpid9=	    Parameter9.getString("dxpid");		
					    ServerChannelPid9=Parameter9.getString("channelpid");	
					    Serverpricefloat9=Parameter9.getString("pricefloat");	
					    ServerDesc9=		Parameter9.getString("desc");		
					    
					    JSONObject   Parameter10 = (JSONObject)Parameter.getJSONObject("production10");
					    ydpid10=	 Parameter10.getString("ydpid");		
					    ltpid10=     Parameter10.getString("ltpid");		
					    dxpid10=	 Parameter10.getString("dxpid");		
					    ServerChannelPid10=Parameter10.getString("channelpid");	
					    Serverpricefloat10=Parameter10.getString("pricefloat");
					    ServerDesc10=		 Parameter10.getString("desc");		   
					    
					    JSONObject   Parameter11 = (JSONObject)Parameter.getJSONObject("production11");
					    ydpid11=	 Parameter11.getString("ydpid");		
					    ltpid11=     Parameter11.getString("ltpid");		
					    dxpid11=	 Parameter11.getString("dxpid");		
					    ServerChannelPid11=Parameter11.getString("channelpid");	
					    Serverpricefloat11=Parameter11.getString("pricefloat");	
					    ServerDesc11=		 Parameter11.getString("desc");			
					    
					    JSONObject   Parameter12 = (JSONObject)Parameter.getJSONObject("production12");
					    ydpid12=	 Parameter12.getString("ydpid");		
					    ltpid12=     Parameter12.getString("ltpid");		
					    dxpid12=	 Parameter12.getString("dxpid");		
					    ServerChannelPid12=Parameter12.getString("channelpid");	
					    Serverpricefloat12=Parameter12.getString("pricefloat");	
					    ServerDesc12=		 Parameter12.getString("desc");			
					    
					    JSONObject   Parameter13 = (JSONObject)Parameter.getJSONObject("production13");
					    ydpid13=	 Parameter13.getString("ydpid");		
					    ltpid13=     Parameter13.getString("ltpid");		
					    dxpid13=	 Parameter13.getString("dxpid");		
					    ServerChannelPid13=Parameter13.getString("channelpid");	
					    Serverpricefloat13=Parameter13.getString("pricefloat");	
					    ServerDesc13=		 Parameter13.getString("desc");
					    
					    JSONObject   Parameter14 = (JSONObject)Parameter.getJSONObject("production14");
					    ydpid14=	 Parameter14.getString("ydpid");		
					    ltpid14=     Parameter14.getString("ltpid");		
					    dxpid14=	 Parameter14.getString("dxpid");		
					    ServerChannelPid14=Parameter14.getString("channelpid");	
					    Serverpricefloat14=Parameter14.getString("pricefloat");
					    ServerDesc14=		 Parameter14.getString("desc");
					    
					    JSONObject   Parameter15 = (JSONObject)Parameter.getJSONObject("production15");
					    ydpid15=	 Parameter15.getString("ydpid");		
					    ltpid15=     Parameter15.getString("ltpid");		
					    dxpid15=	 Parameter15.getString("dxpid");		
					    ServerChannelPid15=Parameter15.getString("channelpid");	
					    Serverpricefloat15=Parameter15.getString("pricefloat");	
					    ServerDesc15=		 Parameter15.getString("desc");	
					    
					    JSONObject   Parameter16 = (JSONObject)Parameter.getJSONObject("production16");
					    ydpid16=	 Parameter16.getString("ydpid");		
					    ltpid16=     Parameter16.getString("ltpid");		
					    dxpid16=	 Parameter16.getString("dxpid");		
					    ServerChannelPid16=Parameter16.getString("channelpid");	
					    Serverpricefloat16=Parameter16.getString("pricefloat");	
					    ServerDesc16=		 Parameter16.getString("desc");	
					    
					    
					    
					    JSONObject   Parameter17 = (JSONObject)Parameter.getJSONObject("production17");
					    ydpid17=	 Parameter17.getString("ydpid");		
					    ltpid17=     Parameter17.getString("ltpid");		
					    dxpid17=	 Parameter17.getString("dxpid");		
					    ServerChannelPid17=Parameter17.getString("channelpid");	
					    Serverpricefloat17=Parameter17.getString("pricefloat");	
					    ServerDesc17=		 Parameter17.getString("desc");	
					    
					    
					    JSONObject   Parameter18 = (JSONObject)Parameter.getJSONObject("production18");
					    ydpid18=	 Parameter18.getString("ydpid");		
					    ltpid18=     Parameter18.getString("ltpid");		
					    dxpid18=	 Parameter18.getString("dxpid");		
					    ServerChannelPid18=Parameter18.getString("channelpid");	
					    Serverpricefloat18=Parameter18.getString("pricefloat");	
					    ServerDesc18=		 Parameter18.getString("desc");	
						
						
						JSONObject   Parameter19 = (JSONObject)Parameter.getJSONObject("production19");
					    ydpid19=	 Parameter19.getString("ydpid");		
					    ltpid19=     Parameter19.getString("ltpid");		
					    dxpid19=	 Parameter19.getString("dxpid");		
					    ServerChannelPid19=Parameter19.getString("channelpid");	
					    Serverpricefloat19=Parameter19.getString("pricefloat");	
					    ServerDesc19=		 Parameter19.getString("desc");	
					    
					    
					    JSONObject   Parameter20 = (JSONObject)Parameter.getJSONObject("production20");
					    ydpid20=	 Parameter20.getString("ydpid");		
					    ltpid20=     Parameter20.getString("ltpid");		
					    dxpid20=	 Parameter20.getString("dxpid");		
					    ServerChannelPid20=Parameter20.getString("channelpid");	
					    Serverpricefloat20=Parameter20.getString("pricefloat");	
					    ServerDesc20=		 Parameter20.getString("desc");	
					    
					    
					    
					    JSONObject   Parameter21 = (JSONObject)Parameter.getJSONObject("production21");
					    ydpid21=	 Parameter21.getString("ydpid");		
					    ltpid21=     Parameter21.getString("ltpid");		
					    dxpid21=	 Parameter21.getString("dxpid");		
					    ServerChannelPid21=Parameter21.getString("channelpid");	
					    Serverpricefloat21=Parameter21.getString("pricefloat");	
					    ServerDesc21=		 Parameter21.getString("desc");	
					    
					    
					    JSONObject   Parameter22 = (JSONObject)Parameter.getJSONObject("production22");
					    ydpid22=	 Parameter22.getString("ydpid");		
					    ltpid22=     Parameter22.getString("ltpid");		
					    dxpid22=	 Parameter22.getString("dxpid");		
					    ServerChannelPid22=Parameter22.getString("channelpid");	
					    Serverpricefloat22=Parameter22.getString("pricefloat");	
					    ServerDesc22=		 Parameter22.getString("desc");	
					    
					    
					    JSONObject   Parameter23 = (JSONObject)Parameter.getJSONObject("production23");
					    ydpid23=	 Parameter23.getString("ydpid");		
					    ltpid23=     Parameter23.getString("ltpid");		
					    dxpid23=	 Parameter23.getString("dxpid");		
					    ServerChannelPid23=Parameter23.getString("channelpid");	
					    Serverpricefloat23=Parameter23.getString("pricefloat");	
					    ServerDesc23=		 Parameter23.getString("desc");	
					    
					    
					    JSONObject   Parameter24 = (JSONObject)Parameter.getJSONObject("production24");
					    ydpid24=	 Parameter24.getString("ydpid");		
					    ltpid24=     Parameter24.getString("ltpid");		
					    dxpid24=	 Parameter24.getString("dxpid");		
					    ServerChannelPid24=Parameter24.getString("channelpid");	
					    Serverpricefloat24=Parameter24.getString("pricefloat");	
					    ServerDesc24=		 Parameter24.getString("desc");	
					    
					    
					    JSONObject   Parameter25 = (JSONObject)Parameter.getJSONObject("production25");
					    ydpid25=	 Parameter25.getString("ydpid");		
					    ltpid25=     Parameter25.getString("ltpid");		
					    dxpid25=	 Parameter25.getString("dxpid");		
					    ServerChannelPid25=Parameter25.getString("channelpid");	
					    Serverpricefloat25=Parameter25.getString("pricefloat");	
					    ServerDesc25=		 Parameter25.getString("desc");	
					    
				    } 
				    catch (JSONException e) 
				    {	
					    // TODO Auto-generated catch block
					    e.printStackTrace();
				    }
	    		}
    		
    		}
    	}.start();
    	InAppBaseOperation functest= new InAppBaseOperation();
		functest.LoadConfiguration();
    }
    
    public static void GetLocalSettingData()
    {

    	String str = getFromAssets(SdkApplication.msg);
    	if(str.equals("empty"))
    	{
    		//SdkApplication.LogLocal("Can't find assets");
    		return;
    	}
    	SdkApplication.LogLocal("[QinConst][GetLocalSettingData] str="+str);
    	//SdkApplication.LogLocal("[QinConst][GetLocalSettingData] SdkApplication.msg="+SdkApplication.msg);
    	if(!str.equals(""))
	    {
	    	JSONTokener jsonParser = new JSONTokener(str);
		    JSONObject Parameter;
		    try 
		    {
			    Parameter = (JSONObject) jsonParser.nextValue();
			    APPID = Parameter.getString("APPID");
			    APPKEY = Parameter.getString("APPKEY");
			    ADParamList = ADParamSplit(Parameter.getString("ADChannel"));			    
			    ADChannel = ADParamList[0];
			    Log.e("IAP", "Parameter.getString(\"ADChannel\")="+Parameter.getString("ADChannel"));
			    Log.e("IAP", "ADChannel="+ADChannel);
			    SDKPay = Parameter.getString("SDKPay");

				if (Parameter.isNull("VerifyKey")==false)
				{
					Log.e("IAP",Parameter.getString("VerifyKey"));
					VerifyKey = Parameter.getString("VerifyKey");
				}
			    Log.e("IAP", "APPID="+APPID);
			    Log.e("IAP", "APPKEY="+APPKEY);
			    Log.e("IAP", "ADChannel="+ADChannel);
			    Log.e("IAP", "SDKPay="+SDKPay);
			    
			    JSONObject  Parameter1 = (JSONObject)Parameter.getJSONObject("production1");
			    ydpid1=	    Parameter1.getString("ydpid");		//SdkApplication.LogLocal("ydpid1="+ydpid1);
			    ltpid1=     Parameter1.getString("ltpid");		//SdkApplication.LogLocal("ltpid1="+ltpid1);
			    dxpid1=	    Parameter1.getString("dxpid");		//SdkApplication.LogLocal("dxpid1="+dxpid1);
			    ChannelPid1=Parameter1.getString("channelpid");	//SdkApplication.LogLocal("channelpid1="+ChannelPid1);
			    pricefloat1=Parameter1.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat1="+pricefloat1);
			    desc1=		Parameter1.getString("desc");		//SdkApplication.LogLocal("desc1="+desc1);
			    
			    JSONObject  Parameter2 = (JSONObject)Parameter.getJSONObject("production2");
			    ydpid2=	    Parameter2.getString("ydpid");		//SdkApplication.LogLocal("ydpid2="+ydpid2);
			    ltpid2=     Parameter2.getString("ltpid");		//SdkApplication.LogLocal("ltpid2="+ltpid2);
			    dxpid2=	    Parameter2.getString("dxpid");		//SdkApplication.LogLocal("dxpid2="+dxpid2);
			    ChannelPid2=Parameter2.getString("channelpid");	//SdkApplication.LogLocal("channelpid2="+ChannelPid2);
			    pricefloat2=Parameter2.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat2="+pricefloat2);
			    desc2=		Parameter2.getString("desc");		//SdkApplication.LogLocal("desc2="+desc2);
			    
			    JSONObject  Parameter3 = (JSONObject)Parameter.getJSONObject("production3");
			    ydpid3=	    Parameter3.getString("ydpid");		//SdkApplication.LogLocal("ydpid3="+ydpid3);
			    ltpid3=     Parameter3.getString("ltpid");		//SdkApplication.LogLocal("ltpid3="+ltpid3);
			    dxpid3=	    Parameter3.getString("dxpid");		//SdkApplication.LogLocal("dxpid3="+dxpid3);
			    ChannelPid3=Parameter3.getString("channelpid");	//SdkApplication.LogLocal("channelpid3="+ChannelPid3);
			    pricefloat3=Parameter3.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat3="+pricefloat3);
			    desc3=		Parameter3.getString("desc");		//SdkApplication.LogLocal("desc3="+desc3);
			    
			    JSONObject  Parameter4 = (JSONObject)Parameter.getJSONObject("production4");
			    ydpid4=	    Parameter4.getString("ydpid");		//SdkApplication.LogLocal("ydpid4="+ydpid4);
			    ltpid4=     Parameter4.getString("ltpid");		//SdkApplication.LogLocal("ltpid4="+ltpid4);
			    dxpid4=	    Parameter4.getString("dxpid");		//SdkApplication.LogLocal("dxpid4="+dxpid4);
			    ChannelPid4=Parameter4.getString("channelpid");	//SdkApplication.LogLocal("channelpid4="+ChannelPid4);
			    pricefloat4=Parameter4.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat4="+pricefloat4);
			    desc4=		Parameter4.getString("desc");		//SdkApplication.LogLocal("desc4="+desc4);
			    
			    JSONObject  Parameter5 = (JSONObject)Parameter.getJSONObject("production5");
			    ydpid5=	    Parameter5.getString("ydpid");		//SdkApplication.LogLocal("ydpid5="+ydpid5);
			    ltpid5=     Parameter5.getString("ltpid");		//SdkApplication.LogLocal("ltpid5="+ltpid5);
			    dxpid5=	    Parameter5.getString("dxpid");		//SdkApplication.LogLocal("dxpid5="+dxpid5);
			    ChannelPid5=Parameter5.getString("channelpid");	//SdkApplication.LogLocal("channelpid5="+ChannelPid5);
			    pricefloat5=Parameter5.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat5="+pricefloat5);
			    desc5=		Parameter5.getString("desc");		//SdkApplication.LogLocal("desc5="+desc5);
			    
			    JSONObject  Parameter6 = (JSONObject)Parameter.getJSONObject("production6");
			    ydpid6=	    Parameter6.getString("ydpid");		//SdkApplication.LogLocal("ydpid6="+ydpid6);
			    ltpid6=     Parameter6.getString("ltpid");		//SdkApplication.LogLocal("ltpid6="+ltpid6);
			    dxpid6=	    Parameter6.getString("dxpid");		//SdkApplication.LogLocal("dxpid6="+dxpid6);
			    ChannelPid6=Parameter6.getString("channelpid");	//SdkApplication.LogLocal("channelpid6="+ChannelPid6);
			    pricefloat6=Parameter6.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat6="+pricefloat6);
			    desc6=		Parameter6.getString("desc");		//SdkApplication.LogLocal("desc6="+desc6);
			    
			    JSONObject  Parameter7 = (JSONObject)Parameter.getJSONObject("production7");
			    ydpid7=	    Parameter7.getString("ydpid");		//SdkApplication.LogLocal("ydpid7="+ydpid7);
			    ltpid7=     Parameter7.getString("ltpid");		//SdkApplication.LogLocal("ltpid7="+ltpid7);
			    dxpid7=	    Parameter7.getString("dxpid");		//SdkApplication.LogLocal("dxpid7="+dxpid7);
			    ChannelPid7=Parameter7.getString("channelpid");	//SdkApplication.LogLocal("channelpid7="+ChannelPid7);
			    pricefloat7=Parameter7.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat7="+pricefloat7);
			    desc7=		Parameter7.getString("desc");		//SdkApplication.LogLocal("desc7="+desc7);
			    
			    JSONObject  Parameter8 = (JSONObject)Parameter.getJSONObject("production8");
			    ydpid8=	    Parameter8.getString("ydpid");		//SdkApplication.LogLocal("ydpid8="+ydpid8);
			    ltpid8=     Parameter8.getString("ltpid");		//SdkApplication.LogLocal("ltpid8="+ltpid8);
			    dxpid8=	    Parameter8.getString("dxpid");		//SdkApplication.LogLocal("dxpid8="+dxpid8);
			    ChannelPid8=Parameter8.getString("channelpid");	//SdkApplication.LogLocal("channelpid8="+ChannelPid8);
			    pricefloat8=Parameter8.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat8="+pricefloat8);
			    desc8=		Parameter8.getString("desc");		//SdkApplication.LogLocal("desc8="+desc8);
			     
			    JSONObject  Parameter9 = (JSONObject)Parameter.getJSONObject("production9");
			    ydpid9=	    Parameter9.getString("ydpid");		//SdkApplication.LogLocal("ydpid9="+ydpid9);
			    ltpid9=     Parameter9.getString("ltpid");		//SdkApplication.LogLocal("ltpid9="+ltpid9);
			    dxpid9=	    Parameter9.getString("dxpid");		//SdkApplication.LogLocal("dxpid9="+dxpid9);
			    ChannelPid9=Parameter9.getString("channelpid");	//SdkApplication.LogLocal("channelpid9="+ChannelPid9);
			    pricefloat9=Parameter9.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat9="+pricefloat9);
			    desc9=		Parameter9.getString("desc");		//SdkApplication.LogLocal("desc9="+desc9);
			    
			    JSONObject   Parameter10 = (JSONObject)Parameter.getJSONObject("production10");
			    ydpid10=	 Parameter10.getString("ydpid");		//SdkApplication.LogLocal("ydpid10="+ydpid10);
			    ltpid10=     Parameter10.getString("ltpid");		//SdkApplication.LogLocal("ltpid10="+ltpid10);
			    dxpid10=	 Parameter10.getString("dxpid");		//SdkApplication.LogLocal("dxpid10="+dxpid10);
			    ChannelPid10=Parameter10.getString("channelpid");	//SdkApplication.LogLocal("channelpid10="+ChannelPid10);
			    pricefloat10=Parameter10.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat10="+pricefloat10);
			    desc10=		 Parameter10.getString("desc");		    //SdkApplication.LogLocal("desc10="+desc10);
			    
			    JSONObject   Parameter11 = (JSONObject)Parameter.getJSONObject("production11");
			    ydpid11=	 Parameter11.getString("ydpid");		//SdkApplication.LogLocal("ydpid11="+ydpid11);
			    ltpid11=     Parameter11.getString("ltpid");		//SdkApplication.LogLocal("ltpid11="+ltpid11);
			    dxpid11=	 Parameter11.getString("dxpid");		//SdkApplication.LogLocal("dxpid11="+dxpid11);
			    ChannelPid11=Parameter11.getString("channelpid");	//SdkApplication.LogLocal("channelpid11="+ChannelPid11);
			    pricefloat11=Parameter11.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat11="+pricefloat11);
			    desc11=		 Parameter11.getString("desc");			//SdkApplication.LogLocal("desc11="+desc11);
			    
			    JSONObject   Parameter12 = (JSONObject)Parameter.getJSONObject("production12");
			    ydpid12=	 Parameter12.getString("ydpid");		//SdkApplication.LogLocal("ydpid12="+ydpid12);
			    ltpid12=     Parameter12.getString("ltpid");		//SdkApplication.LogLocal("ltpid12="+ltpid12);
			    dxpid12=	 Parameter12.getString("dxpid");		//SdkApplication.LogLocal("dxpid12="+dxpid12);
			    ChannelPid12=Parameter12.getString("channelpid");	//SdkApplication.LogLocal("channelpid12="+ChannelPid12);
			    pricefloat12=Parameter12.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat12="+pricefloat12);
			    desc12=		 Parameter12.getString("desc");			//SdkApplication.LogLocal("desc12="+desc12);
			    
			    JSONObject   Parameter13 = (JSONObject)Parameter.getJSONObject("production13");
			    ydpid13=	 Parameter13.getString("ydpid");		//SdkApplication.LogLocal("ydpid13="+ydpid13);
			    ltpid13=     Parameter13.getString("ltpid");		//SdkApplication.LogLocal("ltpid13="+ltpid13);
			    dxpid13=	 Parameter13.getString("dxpid");		//SdkApplication.LogLocal("dxpid13="+dxpid13);
			    ChannelPid13=Parameter13.getString("channelpid");	//SdkApplication.LogLocal("channelpid13="+ChannelPid13);
			    pricefloat13=Parameter13.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat13="+pricefloat13);
			    desc13=		 Parameter13.getString("desc");		    //SdkApplication.LogLocal("desc13="+desc13);
			    
			    JSONObject   Parameter14 = (JSONObject)Parameter.getJSONObject("production14");
			    ydpid14=	 Parameter14.getString("ydpid");		//SdkApplication.LogLocal("ydpid14="+ydpid14);
			    ltpid14=     Parameter14.getString("ltpid");		//SdkApplication.LogLocal("ltpid14="+ltpid14);
			    dxpid14=	 Parameter14.getString("dxpid");		//SdkApplication.LogLocal("dxpid14="+dxpid14);
			    ChannelPid14=Parameter14.getString("channelpid");	//SdkApplication.LogLocal("channelpid14="+ChannelPid14);
			    pricefloat14=Parameter14.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat14="+pricefloat14);
			    desc14=		 Parameter14.getString("desc");			//SdkApplication.LogLocal("desc14="+desc14);
			    
			    JSONObject   Parameter15 = (JSONObject)Parameter.getJSONObject("production15");
			    ydpid15=	 Parameter15.getString("ydpid");		//SdkApplication.LogLocal("ydpid15="+ydpid15);
			    ltpid15=     Parameter15.getString("ltpid");		//SdkApplication.LogLocal("ltpid15="+ltpid15);
			    dxpid15=	 Parameter15.getString("dxpid");		//SdkApplication.LogLocal("dxpid15="+dxpid15);
			    ChannelPid15=Parameter15.getString("channelpid");	//SdkApplication.LogLocal("channelpid15="+ChannelPid15);
			    pricefloat15=Parameter15.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat15="+pricefloat15);
			    desc15=		 Parameter15.getString("desc");			//SdkApplication.LogLocal("desc15="+desc15);
			    
			    JSONObject   Parameter16 = (JSONObject)Parameter.getJSONObject("production16");
			    ydpid16=	 Parameter16.getString("ydpid");		//SdkApplication.LogLocal("ydpid16="+ydpid16);
			    ltpid16=     Parameter16.getString("ltpid");		//SdkApplication.LogLocal("ltpid16="+ltpid16);
			    dxpid16=	 Parameter16.getString("dxpid");		//SdkApplication.LogLocal("dxpid16="+dxpid16);
			    ChannelPid16=Parameter16.getString("channelpid");	//SdkApplication.LogLocal("channelpid16="+ChannelPid16);
			    pricefloat16=Parameter16.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat16="+pricefloat16);
			    desc16=		 Parameter16.getString("desc");		//	SdkApplication.LogLocal("desc16="+desc16);
			    
			    JSONObject   Parameter17 = (JSONObject)Parameter.getJSONObject("production17");
			    ydpid17=	 Parameter17.getString("ydpid");		//SdkApplication.LogLocal("ydpid17="+ydpid17);
			    ltpid17=     Parameter17.getString("ltpid");		//SdkApplication.LogLocal("ltpid17="+ltpid17);
			    dxpid17=	 Parameter17.getString("dxpid");		//SdkApplication.LogLocal("dxpid17="+dxpid17);
			    ChannelPid17=Parameter17.getString("channelpid");	//SdkApplication.LogLocal("channelpid17="+ChannelPid17);
			    pricefloat17=Parameter17.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat17="+pricefloat17);
			    desc17=		 Parameter17.getString("desc");		//	SdkApplication.LogLocal("desc17="+desc17);
			    
			    
			    JSONObject   Parameter18 = (JSONObject)Parameter.getJSONObject("production18");
			    ydpid18=	 Parameter18.getString("ydpid");		//SdkApplication.LogLocal("ydpid18="+ydpid18);
			    ltpid18=     Parameter18.getString("ltpid");		//SdkApplication.LogLocal("ltpid18="+ltpid18);
			    dxpid18=	 Parameter18.getString("dxpid");		//SdkApplication.LogLocal("dxpid18="+dxpid18);
			    ChannelPid18=Parameter18.getString("channelpid");	//SdkApplication.LogLocal("channelpid18="+ChannelPid18);
			    pricefloat18=Parameter18.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat18="+pricefloat18);
			    desc18=		 Parameter18.getString("desc");		//	SdkApplication.LogLocal("desc18="+desc18);
				
				JSONObject   Parameter19 = (JSONObject)Parameter.getJSONObject("production19");
			    ydpid19=	 Parameter19.getString("ydpid");		//SdkApplication.LogLocal("ydpid19="+ydpid19);
			    ltpid19=     Parameter19.getString("ltpid");		//SdkApplication.LogLocal("ltpid19="+ltpid19);
			    dxpid19=	 Parameter19.getString("dxpid");		//SdkApplication.LogLocal("dxpid19="+dxpid19);
			    ChannelPid19=Parameter19.getString("channelpid");	//SdkApplication.LogLocal("channelpid19="+ChannelPid19);
			    pricefloat19=Parameter19.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat19="+pricefloat19);
			    desc19=		 Parameter19.getString("desc");			//SdkApplication.LogLocal("desc19="+desc19);
			    
			    
			    JSONObject   Parameter20 = (JSONObject)Parameter.getJSONObject("production20");
			    ydpid20=	 Parameter20.getString("ydpid");		//SdkApplication.LogLocal("ydpid20="+ydpid20);
			    ltpid20=     Parameter20.getString("ltpid");		//SdkApplication.LogLocal("ltpid20="+ltpid20);
			    dxpid20=	 Parameter20.getString("dxpid");		//SdkApplication.LogLocal("dxpid20="+dxpid20);
			    ChannelPid20=Parameter20.getString("channelpid");	//SdkApplication.LogLocal("channelpid20="+ChannelPid20);
			    pricefloat20=Parameter20.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat20="+pricefloat20);
			    desc20=		 Parameter20.getString("desc");			//SdkApplication.LogLocal("desc20="+desc20);
			    
			    
			    JSONObject   Parameter21 = (JSONObject)Parameter.getJSONObject("production21");
			    ydpid21=	 Parameter21.getString("ydpid");		//SdkApplication.LogLocal("ydpid21="+ydpid21);
			    ltpid21=     Parameter21.getString("ltpid");		//SdkApplication.LogLocal("ltpid21="+ltpid21);
			    dxpid21=	 Parameter21.getString("dxpid");		//SdkApplication.LogLocal("dxpid21="+dxpid21);
			    ChannelPid21=Parameter21.getString("channelpid");	//SdkApplication.LogLocal("channelpid21="+ChannelPid21);
			    pricefloat21=Parameter21.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat21="+pricefloat21);
			    desc21=		 Parameter21.getString("desc");			//SdkApplication.LogLocal("desc21="+desc21);
			    
			    
			    JSONObject   Parameter22 = (JSONObject)Parameter.getJSONObject("production22");
			    ydpid22=	 Parameter22.getString("ydpid");		//SdkApplication.LogLocal("ydpid22="+ydpid22);
			    ltpid22=     Parameter22.getString("ltpid");		//SdkApplication.LogLocal("ltpid22="+ltpid22);
			    dxpid22=	 Parameter22.getString("dxpid");		//SdkApplication.LogLocal("dxpid22="+dxpid22);
			    ChannelPid22=Parameter22.getString("channelpid");	//SdkApplication.LogLocal("channelpid22="+ChannelPid22);
			    pricefloat22=Parameter22.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat22="+pricefloat22);
			    desc22=		 Parameter22.getString("desc");			//SdkApplication.LogLocal("desc22="+desc22);
			    
			    
			    
			    JSONObject   Parameter23 = (JSONObject)Parameter.getJSONObject("production23");
			    ydpid23=	 Parameter23.getString("ydpid");		//SdkApplication.LogLocal("ydpid23="+ydpid23);
			    ltpid23=     Parameter23.getString("ltpid");		//SdkApplication.LogLocal("ltpid23="+ltpid23);
			    dxpid23=	 Parameter23.getString("dxpid");		//SdkApplication.LogLocal("dxpid23="+dxpid23);
			    ChannelPid23=Parameter23.getString("channelpid");	//SdkApplication.LogLocal("channelpid23="+ChannelPid23);
			    pricefloat23=Parameter23.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat23="+pricefloat23);
			    desc23=		 Parameter23.getString("desc");			//SdkApplication.LogLocal("desc23="+desc23);
			    
			    
			    JSONObject   Parameter24 = (JSONObject)Parameter.getJSONObject("production24");
			    ydpid24=	 Parameter24.getString("ydpid");		//SdkApplication.LogLocal("ydpid24="+ydpid24);
			    ltpid24=     Parameter24.getString("ltpid");		//SdkApplication.LogLocal("ltpid24="+ltpid24);
			    dxpid24=	 Parameter24.getString("dxpid");		//SdkApplication.LogLocal("dxpid24="+dxpid24);
			    ChannelPid24=Parameter24.getString("channelpid");	//SdkApplication.LogLocal("channelpid24="+ChannelPid24);
			    pricefloat24=Parameter24.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat24="+pricefloat24);
			    desc24=		 Parameter24.getString("desc");			//SdkApplication.LogLocal("desc24="+desc24);
			    
			    JSONObject   Parameter25 = (JSONObject)Parameter.getJSONObject("production25");
			    ydpid25=	 Parameter25.getString("ydpid");		//SdkApplication.LogLocal("ydpid25="+ydpid25);
			    ltpid25=     Parameter25.getString("ltpid");		//SdkApplication.LogLocal("ltpid25="+ltpid25);
			    dxpid25=	 Parameter25.getString("dxpid");		//SdkApplication.LogLocal("dxpid25="+dxpid25);
			    ChannelPid25=Parameter25.getString("channelpid");	//SdkApplication.LogLocal("channelpid25="+ChannelPid25);
			    pricefloat25=Parameter25.getString("pricefloat");	//SdkApplication.LogLocal("pricefloat25="+pricefloat25);
			    desc25=		 Parameter25.getString("desc");			//SdkApplication.LogLocal("desc25="+desc25);
		    }
		    catch (JSONException e) 
		    {	
			    // TODO Auto-generated catch block
			    e.printStackTrace();
		    }
    		}
    }
    public static void GetGameSettingData()
    {	
    	String str = getFromAssets("GameConfiguration");
    	if(str.equals("empty"))
    	{
    		SdkApplication.LogLocal("Can't find assets");
    		return;
    	}
    	//SdkApplication.LogLocal("[QinConst][GetGameSettingData] str="+str);
    	if(!str.equals(""))
	    {
	    	JSONTokener jsonParser = new JSONTokener(str);
		    JSONObject Parameter;
		    try 
		    {
			    Parameter = (JSONObject) jsonParser.nextValue();
			    APPChineseName = Parameter.getString("APPChineseName");
			    exchangeID = Parameter.getString("exchangeID");
			    exchangeKEY = Parameter.getString("exchangeKEY");
			    appid = Parameter.getString("appid");
			    Restoreappid = Parameter.getString("Restoreappid");
			    accesstoken = Parameter.getString("accesstoken");
				TalkingDataID = Parameter.getString("TalkingDataID");
				if(VerifyKey.equals(""))
				{
					VerifyKey = Parameter.getString("VerifyKey");
				}
				WXShareID = Parameter.getString("WXShareID");
			    DataFileName = Parameter.getString("DataFileName");
			    GameId = Parameter.getString("GameId");
			    ServerLocation = Parameter.getString("ServerLocation");
			    key = Parameter.getString("key");
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] APPChineseName="+APPChineseName);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] exchangeID="+exchangeID);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] exchangeKEY="+exchangeKEY);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] appid="+appid);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] Restoreappid="+Restoreappid);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] accesstoken="+accesstoken);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] DataFileName="+DataFileName);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] GameId="+GameId);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] ServerLocation="+ServerLocation);
//			    SdkApplication.LogLocal("[QinConst][GetGameSettingData] SDKPay="+SDKPay);
		
		    }
		    catch (JSONException e) 
		    {	
			    // TODO Auto-generated catch block
			    e.printStackTrace();
		    }
    	}
    }
    public static String ProductMapData(String pid)
    {

    	String str = getFromAssets("ProductMap");
    	 String Qinid = "";
    	//Log.e(QinConst.TAG, "[QinConst][GetLocalSettingData] str="+str);
    	if(!str.equals("empty"))
	    {
	    	JSONTokener jsonParser = new JSONTokener(str);
	    
	    JSONObject Parameter;
	    
	    try 
	    {
		    Parameter = (JSONObject) jsonParser.nextValue();
		    Qinid = Parameter.getString(pid);  
	    }
	    catch (JSONException e) 
	    {	
		    // TODO Auto-generated catch block
		    e.printStackTrace();
	    }
    		}
		return Qinid;
    }
    public static String HttpUrlpost(String URL)
    {
            // 第一步，创建HttpPost对象 
            HttpPost httpPost = new HttpPost(URL);
            String result = "";
            // 设置HTTP POST请求参数必须用NameValuePair对象 
            List<NameValuePair> params = new ArrayList<NameValuePair>(); 

            HttpResponse httpResponse = null; 
            try { 
                HttpClient client = new DefaultHttpClient();
                // 请求超时
                client.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 5000);
                // 读取超时
                client.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 5000);
                // 设置httpPost请求参数 
                httpPost.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8)); 

                httpResponse = client.execute(httpPost); 
                //System.out.println(httpResponse.getStatusLine().getStatusCode()); 
                if (httpResponse.getStatusLine().getStatusCode() == 200) 
                { 
                	
                    // 第三步，使用getEntity方法活得返回结果 
                    result = EntityUtils.toString(httpResponse.getEntity());
                   
                } 
            } catch (ClientProtocolException e) { 

                e.printStackTrace(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
            } 

            return result;
    }


    public static void PayInfo(String SavePid)
    {
    	  String production = ProductMapData(SavePid);
    	  String strProductId="";
    	  if (production.equals("")==false)
    		  production = ProductMapData(SavePid);
    	  else 
    		  production = SavePid;
    	  SdkApplication.LogLocal("SavePid="+SavePid);
    	  SdkApplication.LogLocal("production="+production);
		  switch (production)
	      {
	      case "production1":	ydpid = ydpid1;  ChannelPid = ChannelPid1;   desc = desc1;  pricefloat = pricefloat1;  ServerChannelPid=ServerChannelPid1;   Serverpricefloat=Serverpricefloat1; ServerDesc=ServerDesc1;break;
          case "production2":	ydpid = ydpid2;  ChannelPid = ChannelPid2;   desc = desc2;  pricefloat = pricefloat2;  ServerChannelPid=ServerChannelPid2;	 Serverpricefloat=Serverpricefloat2;ServerDesc=ServerDesc2;break;
          case "production3":	ydpid = ydpid3;  ChannelPid = ChannelPid3;   desc = desc3;  pricefloat = pricefloat3;  ServerChannelPid=ServerChannelPid3;	 Serverpricefloat=Serverpricefloat3;ServerDesc=ServerDesc3;break;
          case "production4":	ydpid = ydpid4;  ChannelPid = ChannelPid4;   desc = desc4;  pricefloat = pricefloat4;  ServerChannelPid=ServerChannelPid4;	 Serverpricefloat=Serverpricefloat4;ServerDesc=ServerDesc4;break;
          case "production5":	ydpid = ydpid5;  ChannelPid = ChannelPid5;   desc = desc5;  pricefloat = pricefloat5;  ServerChannelPid=ServerChannelPid5;	 Serverpricefloat=Serverpricefloat5;ServerDesc=ServerDesc5;break;
          case "production6":	ydpid = ydpid6;  ChannelPid = ChannelPid6;   desc = desc6;  pricefloat = pricefloat6;  ServerChannelPid=ServerChannelPid6;	 Serverpricefloat=Serverpricefloat6;ServerDesc=ServerDesc6;break;
          case "production7":	ydpid = ydpid7;  ChannelPid = ChannelPid7;   desc = desc7;  pricefloat = pricefloat7;  ServerChannelPid=ServerChannelPid7;	 Serverpricefloat=Serverpricefloat7;ServerDesc=ServerDesc7;break;
          case "production8":	ydpid = ydpid8;  ChannelPid = ChannelPid8;   desc = desc8;  pricefloat = pricefloat8;  ServerChannelPid=ServerChannelPid8;	 Serverpricefloat=Serverpricefloat8;ServerDesc=ServerDesc8;break;
          case "production9":	ydpid = ydpid9;  ChannelPid = ChannelPid9;   desc = desc9;  pricefloat = pricefloat9;  ServerChannelPid=ServerChannelPid9;	 Serverpricefloat=Serverpricefloat9;ServerDesc=ServerDesc9;break;
          case "production10":	ydpid = ydpid10; ChannelPid = ChannelPid10;  desc = desc10; pricefloat = pricefloat10;  ServerChannelPid=ServerChannelPid10; Serverpricefloat=Serverpricefloat10;ServerDesc=ServerDesc10;break;
          case "production11":	ydpid = ydpid11; ChannelPid = ChannelPid11;  desc = desc11; pricefloat = pricefloat11;  ServerChannelPid=ServerChannelPid11; Serverpricefloat=Serverpricefloat11;ServerDesc=ServerDesc11;break;
          case "production12":	ydpid = ydpid12; ChannelPid = ChannelPid12;  desc = desc12; pricefloat = pricefloat12;  ServerChannelPid=ServerChannelPid12; Serverpricefloat=Serverpricefloat12;ServerDesc=ServerDesc12;break;
          case "production13":	ydpid = ydpid13; ChannelPid = ChannelPid13;  desc = desc13; pricefloat = pricefloat13;  ServerChannelPid=ServerChannelPid13; Serverpricefloat=Serverpricefloat13;ServerDesc=ServerDesc13;break;
          case "production14":	ydpid = ydpid14; ChannelPid = ChannelPid14;  desc = desc14; pricefloat = pricefloat14;  ServerChannelPid=ServerChannelPid14; Serverpricefloat=Serverpricefloat14;ServerDesc=ServerDesc14;break;
          case "production15":	ydpid = ydpid15; ChannelPid = ChannelPid15;  desc = desc15; pricefloat = pricefloat15;  ServerChannelPid=ServerChannelPid15; Serverpricefloat=Serverpricefloat15;ServerDesc=ServerDesc15;break;
          case "production16":	ydpid = ydpid16; ChannelPid = ChannelPid16;  desc = desc16; pricefloat = pricefloat16;  ServerChannelPid=ServerChannelPid16; Serverpricefloat=Serverpricefloat16;ServerDesc=ServerDesc16;break;
          case "production17":	ydpid = ydpid17; ChannelPid = ChannelPid17;  desc = desc17; pricefloat = pricefloat17;  ServerChannelPid=ServerChannelPid17; Serverpricefloat=Serverpricefloat17;ServerDesc=ServerDesc17;break;
          case "production18":	ydpid = ydpid18; ChannelPid = ChannelPid18;  desc = desc18; pricefloat = pricefloat18;  ServerChannelPid=ServerChannelPid18; Serverpricefloat=Serverpricefloat18;ServerDesc=ServerDesc18;break;
		  case "production19":	ydpid = ydpid19; ChannelPid = ChannelPid19;  desc = desc19; pricefloat = pricefloat19;  ServerChannelPid=ServerChannelPid19; Serverpricefloat=Serverpricefloat19;ServerDesc=ServerDesc19;break;
          case "production20":	ydpid = ydpid20; ChannelPid = ChannelPid20;  desc = desc20; pricefloat = pricefloat20;  ServerChannelPid=ServerChannelPid20; Serverpricefloat=Serverpricefloat20;ServerDesc=ServerDesc20;break;
          case "production21":	ydpid = ydpid21; ChannelPid = ChannelPid21;  desc = desc21; pricefloat = pricefloat21;  ServerChannelPid=ServerChannelPid21; Serverpricefloat=Serverpricefloat21;ServerDesc=ServerDesc21;break;
          case "production22":	ydpid = ydpid22; ChannelPid = ChannelPid22;  desc = desc22; pricefloat = pricefloat22;  ServerChannelPid=ServerChannelPid22; Serverpricefloat=Serverpricefloat22;ServerDesc=ServerDesc22;break;
          case "production23":	ydpid = ydpid23; ChannelPid = ChannelPid23;  desc = desc23; pricefloat = pricefloat23;  ServerChannelPid=ServerChannelPid23; Serverpricefloat=Serverpricefloat23;ServerDesc=ServerDesc23;break;
          case "production24":	ydpid = ydpid24; ChannelPid = ChannelPid24;  desc = desc24; pricefloat = pricefloat24;  ServerChannelPid=ServerChannelPid24; Serverpricefloat=Serverpricefloat24;ServerDesc=ServerDesc24;break;
          case "production25":	ydpid = ydpid25; ChannelPid = ChannelPid25;  desc = desc25; pricefloat = pricefloat25;  ServerChannelPid=ServerChannelPid25; Serverpricefloat=Serverpricefloat25;ServerDesc=ServerDesc25;break;
 
		default:
	              break;	
	      }
		  E2WApp.LogLocal("[QinConst PayInfo] ChannelPid="+ChannelPid);
		  E2WApp.LogLocal("[QinConst PayInfo] ServerChannelPid="+ServerChannelPid);
		  if(!ServerChannelPid.equals(""))
		  {
			  ChannelPid=ServerChannelPid;
		  }
		  E2WApp.LogLocal("[QinConst PayInfo] pricefloat="+pricefloat);
		  E2WApp.LogLocal("[QinConst PayInfo] Serverpricefloat="+Serverpricefloat);
		  if(!Serverpricefloat.equals(""))
		  {
			  pricefloat= Serverpricefloat;
		  }
		  E2WApp.LogLocal("[QinConst PayInfo] desc="+desc);
		  E2WApp.LogLocal("[QinConst PayInfo] ServerDesc="+ServerDesc);
		  if(!ServerDesc.equals(""))
		  {
			  desc=ServerDesc;
		  }
		  switch (SdkApplication.mSimOperatorId)
	      {
	          case 1: strProductId = ydpid; break;
	          case 2: strProductId = ltpid; break;
	          case 3: strProductId = dxpid; break;
	          default:
	              strProductId = ydpid;break;
		  }
		  QinPid = strProductId + ","+ChannelPid+"," + SDKPay;
		  Qindesc= desc;
		  Qinpricefloat= Float.parseFloat(pricefloat);
		  E2WApp.LogLocal("[QinConst PayInfo] QinPid="+QinPid+" Qindesc="+Qindesc+" Qinpricefloat="+Qinpricefloat);
    }

    public static String getFromAssets(String fileName){ 
        try 
        { 
            InputStreamReader inputReader = new InputStreamReader(SdkApplication.Acontext.getResources().getAssets().open(fileName),"utf-8"); 
            BufferedReader bufReader = new BufferedReader(inputReader);
            String line="";
            String Result="";
            while((line = bufReader.readLine()) != null)
                Result += line;
            return Result;
        } catch (Exception e) { 
            e.printStackTrace(); 
        }
		return "empty";
} 




	public void ExitGame()
	{
		E2WApp.LogLocal("[QinConst] SdkApplication.mSimOperatorId="+SdkApplication.mSimOperatorId);
		((Activity) E2WApp.mContext).finish();
		android.os.Process.killProcess(android.os.Process.myPid());
//		if(SdkApplication.iscarriersneed.equals("open")&&SdkApplication.mSimOperatorId!=QinConst.ChinaMobile)
//		{
//			E2WApp.LogLocal("[InAppBase] Android Exit With Mobile Code");
//			// exit
//			AlertDialog.Builder builder = new Builder(E2WApp.mContext);
//			builder.setMessage("确认退出吗?");
//			builder.setTitle("提示");
//			builder.setPositiveButton("确认", new OnClickListener() {
//				@Override
//				public void onClick(DialogInterface dialog, int which) {
//					((Activity) E2WApp.mContext).finish();
//					android.os.Process.killProcess(android.os.Process.myPid());
//				}
//			});
//			builder.setNegativeButton("取消", new OnClickListener() {
//				@Override
//				public void onClick(DialogInterface dialog, int which) {
//					dialog.dismiss();
//				}
//			});
//			builder.create().show();
//		}
//		else
//		{
//			E2WApp.LogLocal("[QinConst] Kill Process");
//			((Activity) E2WApp.mContext).finish();
//			android.os.Process.killProcess(android.os.Process.myPid());
//		}
	}
	
	public void onPurchaseSuccess(String message,InAppBase inbase,String mProductId) 
	{

		E2WApp.LogLocal("[QinConst] onPurchaseSuccess callback->strProductId="+mProductId+" message->"+message+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());
		if(message!="3"||"exchange"!=message)
		{
			
		}
		else
		{
			E2WApp.LogLocal("[QinConst] onPurchaseSuccess");
		}
		if(SdkApplication.getExtSDKId()==QinConst.ChinaTencent)
		{
			E2WApp.LogLocal("[QinConst] onPurchaseSuccess->wxgame:"+message);
		}
		else
			inbase.appinterface.onPurchaseSuccessCallBack(message);
	}
	public void onPurchaseFailed(String strError,InAppBase inbase,String mProductId) {		
		E2WApp.LogLocal("[QinConst] onPurchaseFailed callback->strError="+strError+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());
		
		if(SdkApplication.getExtSDKId()==QinConst.ChinaTencent)
		{
			E2WApp.LogLocal("[QinConst] onPurchaseFailed->wxgame:"+strError);
		}
		else
			inbase.appinterface.onPurchaseFailedCallBack(strError);
	}
	public void onPurchaseCanceled(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onPurchaseCanceled callback->strError="+strError+" inbase->"+inbase+" SdkApplication.msg="+SdkApplication.getExtSDKId());	
		
		if(SdkApplication.getExtSDKId()==QinConst.ChinaTencent)
		{
			E2WApp.LogLocal("[QinConst] onPurchaseFailed->wxgame:"+strError);
		}
		else
			inbase.appinterface.onPurchaseCancelCallBack(strError);
	}
	public void onLoginSuccess(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onLoginSuccess callback->strError="+strError+" inbase->"+inbase);	
		
		inbase.appinterface.onLoginSuccessCallBack(strError);	
	}
	public void onLoginCancel(String strError,InAppBase inbase) {
		E2WApp.LogLocal("[QinConst] onLoginCancel callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoginCancelCallBack(strError);
	}
	public void onLoginFailed(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onLoginFailed callback->strError="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoginFailedCallBack(strError);	
	}
	public void onFunctionCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onFunctionCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onFunctionCallBack(strError);	
	}
	
	
	public void onLoadSuccessfulCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onLoadSuccessfulCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoadSuccessfulCallBack(strError);	
	}
	public void onLoadFailedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onLoadFailedCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onLoadFailedCallBack(strError);	
	}
	
	public void onSaveSuccessfulCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onSaveSuccessfulCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onSaveSuccessfulCallBack(strError);	
	}
	public void onSaveFailedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onSaveFailedCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onSaveFailedCallBack(strError);	
	}
	
	public void onOnVideoCompletedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onOnVideoCompletedCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onOnVideoCompletedCallBack(strError);	
	}
	public void onOnVideoFailedCallBack(String strError,InAppBase inbase) {		
		E2WApp.LogLocal("[QinConst] onOnVideoFailedCallBack callback->str="+strError+" inbase->"+inbase);	
		inbase.appinterface.onOnVideoFailedCallBack(strError);	
	}
	
	
	
	public void QinUnityMessage(String ObjectName,String MethodName,String QinMessage)
	{

	}
	public void ShareResult(int result )
	{

	}
	public void Exchange(String text) {
		// TODO Auto-generated method stub

	}
	public void Exchange(final InAppBase inbase) {
		// TODO Auto-generated method stub
			E2WApp.LogLocal("[QinConst Unity] Exchange->"+inbase);
			E2WApp.LogLocal("[QinConst Unity] Exchange->Android");
			final EditText inputServer = new EditText(((Activity) E2WApp.mContext));
			inputServer.setFilters(new InputFilter[] { new InputFilter.LengthFilter(10) });
			AlertDialog.Builder builder = new AlertDialog.Builder(((Activity) E2WApp.mContext));
			builder.setTitle("兑换中心").setView(inputServer).setNegativeButton("取消", null);
			builder.setPositiveButton("确定",new DialogInterface.OnClickListener() 
			{
						public void onClick(DialogInterface dialog,
								int which) {
							new Thread(new Runnable() 
							{
								
								@Override
								public void run() 
								{
									Looper.prepare();
									// TODO Auto-generated method stub

									String text = inputServer.getText().toString();
									String prKey = exchangeKEY+text;
									String sign = MD5(prKey);
									String list = "appid="+exchangeID+"&cdkey="+text+"&sign="+sign;							
									String log = postDownloadJson("http://101.200.214.15/wk/e2wcdkey/public/index.php/createcdkey/index/use_key ",list);
									JSONTokener jsonParser = new JSONTokener(log);
									Log.e("IAP", log);
									JSONObject Parameter;
									try 
									{
										Parameter = (JSONObject) jsonParser.nextValue();
										String errorcodeString = Parameter.getString("code");
										Log.e("IAP","[QinConst][errorcodeString]="+errorcodeString);
										if(errorcodeString.equalsIgnoreCase("0"))
										{												
											
											JSONArray jArroy = Parameter.getJSONArray("msg");
											int nNum = jArroy.length();
						
											for(int i= 0;i<nNum;i++)
											{
												String strkey = jArroy.getString(i);
										        JSONObject jsonObject = new org.json.JSONObject(strkey);  
										        Iterator iterator = jsonObject.keys();  
										        while(iterator.hasNext())
										        {  
										          String key = (String) iterator.next();  
										          String num = jsonObject.getString(key);
										          int keyNum = Integer.parseInt(num); 
										          for(int j=0;j<keyNum;j++)
										          {
										        	  Log.e("IAP","[QinConst][Exchange]="+key+":"+QinConst.Restoreappid);
										        	  Log.e("IAP","[QinConst][Exchange]=isTrueOrFalse:"+Restoreappid.equals("Machinarium"));

													  if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium")||QinConst.Restoreappid.equals("TWOM"))
													  {
										        		  Log.e("IAP","[QinConst][onPurchaseSuccessCallBack]="+key+":"+QinConst.Restoreappid);
										        		  inbase.appinterface.onPurchaseSuccessCallBack(key);
														  Toast.makeText(E2WApp.mContext, "兑换成功", Toast.LENGTH_SHORT).show();
										        	  }
										        	  else
										        	  {
														  inbase.appinterface.onFunctionCallBack(key);
														  Toast.makeText(E2WApp.mContext, "兑换成功", Toast.LENGTH_SHORT).show();

										        	  }

										        	  
										          }
										        }

											}			
											
										}
										else
										{
											if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium")||QinConst.Restoreappid.equals("TWOM"))
											{

											}
											else {
												inbase.appinterface.onFunctionCallBack("ExchangeFailed");

											}
											Toast.makeText(E2WApp.mContext, "兑换失败", Toast.LENGTH_SHORT).show();
										}
									} 
									catch (JSONException e) 
									{
										if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium")||QinConst.Restoreappid.equals("TWOM"))
										{

										}
										else {
											// TODO Auto-generated catch block
											inbase.appinterface.onPurchaseFailedCallBack("");
										}
										Toast.makeText(E2WApp.mContext, "兑换失败", Toast.LENGTH_SHORT).show();
										e.printStackTrace();
									}
									Looper.loop();
								}
							}).start();
							
						}
					});
			builder.show();		
	}
	private Handler handler = new Handler()
    {
		  @Override
		  public void handleMessage(Message msg)
		  {
			  Toast.makeText(E2WApp.mContext, "兑换成功", Toast.LENGTH_SHORT).show();
		  }
    };
	private static String MD5(String sourceStr) {
        String result = "";
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(sourceStr.getBytes());
            byte b[] = md.digest();
            int i;
            StringBuffer buf = new StringBuffer("");
            for (int offset = 0; offset < b.length; offset++) {
                i = b[offset];
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(i));
            }
            result = buf.toString();
        } catch (NoSuchAlgorithmException e) {
            
        }
        return result;
    }
	public static String postDownloadJson(String path,String post){
        URL url = null;
        try {
            url = new URL(path);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");// 提交模式
            // conn.setConnectTimeout(10000);//连接超时 单位毫秒
            // conn.setReadTimeout(2000);//读取超时 单位毫秒
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            // 发送POST请求必须设置如下两行
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            // 获取URLConnection对象对应的输出流
            PrintWriter printWriter = new PrintWriter(httpURLConnection.getOutputStream());
            // 发送请求参数
            printWriter.write(post);//post的参数 xx=xx&yy=yy
            // flush输出流的缓冲
            printWriter.flush();
            //开始获取数据
            BufferedInputStream bis = new BufferedInputStream(httpURLConnection.getInputStream());
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            int len;
            byte[] arr = new byte[1024];
            while((len=bis.read(arr))!= -1){
                bos.write(arr,0,len);
                bos.flush();
            }
            bos.close();
            return bos.toString("utf-8");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
	public static String sendPost(String strUrl, String param) {
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		Log.e("IAP", param);
		try {
			URL realUrl = new URL(strUrl);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 获取URLConnection对象对应的输出流
			out = new PrintWriter(conn.getOutputStream());
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream()));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			Log.e("IAP","发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (out != null) {
					out.close();
				}
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return result;
	}
}
