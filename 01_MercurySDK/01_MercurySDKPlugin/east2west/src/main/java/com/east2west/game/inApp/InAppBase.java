package com.east2west.game.inApp;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EncodingUtils;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import sun.misc.BASE64Encoder;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.System.InAppBaseRestore;
import com.east2west.game.util.Base64;
import com.east2west.game.util.Base64Util;
import com.east2west.game.util.MD5E2W;
import com.unity3d.player.UnityPlayer;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Looper;
import android.text.InputFilter;
import android.util.Log;
import android.view.Menu;
import android.widget.EditText;
import android.widget.Toast;

public class InAppBase{
	protected Activity mContext;
	protected String mProductId;
	protected String mProductDescription;
	protected float mProductPrice;
	protected Context mAppContext;
	protected InAppBase mInstance;
	public static APPBaseInterface appinterface;
	public static boolean sTestMode = false;
	public static QinConst qc;
	public static Context forbassonly;
	public static String OrderID="";
	public static boolean isOldGameExchange = false;
	public static String key = "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBALnMsImln+S8fxJt" +
		 			    		"f7NDqQhh8EA318buO6ScnyzNbaBkVmu4oL97ggRrgmI7z1YKYkPNs6ymufqjHDAA" +
		 			    		"qqyMm+KgNYodKsr+LtWOxwHVYEI7rdZL6ioNoOyv396pGQjoyXDB6FfP+dGXGN/W" +
		 			    		"MSyJrcXn2tdY025S+dBbQaMTnqhvAgMBAAECgYEAiaTJN//aF1NJdDZofz5lsA8W" +
		 			    		"NAzqrrX4u3dIOKGrUEJk/4KUm6Z86JdYzTtv21bv+zkdnY8agkJp9GnaBuBX7mVE" +
		 			    		"g3tHqzZrOCq5nVX9OHJoMytGwLxlHvejBZPVS1PmkfFnEYRAkBcti5nmsY+fCV5/" +
		 			    		"lxVScrYGdzfrf1vio1ECQQDpxHmicfwYCTb0ZcUIKU0CQvfD9Te/94TIxr82EKcq" +
		 			    		"/pPfoU3vQY+Ks7LI41Zc2kRYhT1dXezzKf/r2FjAMid3AkEAy3hXmEUZYdg+SPVU" +
		 			    		"RzrQt6PGjvLv/5Uxe75t8Ovx2JxHRgCD5j7IArzDg7ACMNn50xMHfQUD4QVdEG2v" +
		 			    		"tvK0yQJBAJp/wiw8zXJNVMa+JDS6pyzhecNHZGs5eccApAtlgjaGPtFEWK/SUr5G" +
		 			    		"+diPd9qyXw1qMh5tH1eu4HfNawrLmw0CQBRZ3hEJ4EcMFPbBKwPQ2y1zARotLFoY" +
		 			    		"9xEUc/Sj9NWgk/Rpesfdwa2cacXTJfTy6Gz3O0mC5eds3OkWv3uB/RkCQQCEkR2M" +
		 			    		"+vdStNq08KV7g+bOZKXElvnYjpUHMdVkO+oeXHPhLf9ltlpBOynA7WA60Jdg0OJa" +
		 			    		"14ngZcu2loawd+q2";

	public void init(Context appContext, Activity context, String strAppKey,String strAppSecret, APPBaseInterface appcall) {
		// TODO Auto-generated method stub
		mContext = context;
		mAppContext = appContext;
		mInstance = this;
		
		this.appinterface=appcall;
		forbassonly=context;
		
		E2WApp.LogLocal("[InAppBase]->init:InAppBase.appinterface="+appcall);
		InAppBaseRestore repair = new InAppBaseRestore();
		repair.repairindentRequest();
	}
	

	public void purchase(String strProductId, String strProductDescription,float fPrice) {
		// TODO Auto-generated method stub
		mProductId = strProductId;
		mProductDescription = strProductDescription;
		mProductPrice = fPrice;		
		
	}
	
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("[InAppBase]->init:InAppBase.ApplicationInit="+appcontext);
	}
	public boolean isPurchase()
	{
		return true;
	}
	
	public void onPause()
	{
		
	}	
	public void onResume()
	{
		
	}	
	public void onDestroy()
	{
		
	}
	public void onStart()
	{
		
	}
	public void onRestart() 
	{
		
	}
	public void onStop() 
	{
				
	}
	public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {

	}
	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub
		
	}
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		
	}
	public void ShowTencentAd()
	{
	}

	public void ExitGame()
	{
		Log.e("IAP","[InAppBase][ExitGame]");

		if (QinConst.Restoreappid.equals("TWOM"))
		{
			onPurchaseSuccess("3");
		}
		else {
			((Activity) E2WApp.mContext).finish();
			android.os.Process.killProcess(android.os.Process.myPid());
		}
	}
	
	public void onPurchaseSuccess(String message) {
		if(QinConst.Restoreappid.equals("Shadowmatic"))
		{
			message=E2WApp.SavePidName;
		}
		qc.onPurchaseSuccess(message,this,mProductId);	
	 	if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium"))
 		{
	 		if(isOldGameExchange==false)
	 		{
	 			InAppBaseRestore repair = new InAppBaseRestore();
				repair.respondCPserver(OrderID);
	 		}
	 		else
	 		{
	 			isOldGameExchange=true;
	 		}
   	  	}
	 	else
	 	{
	 		InAppBaseRestore repair = new InAppBaseRestore();
			repair.respondCPserver(OrderID);
	 	}
		SdkApplication.myStatistics.onChargeSuccess(InAppBase.OrderID);
	}	
	public void onPurchaseFailed(String strError) {	
		qc.onPurchaseFailed(strError,this,mProductId);
	}	
	public void onPurchaseCanceled(String strError) {
		qc.onPurchaseCanceled(strError,this);
	}
	public void onLoginSuccess(String strError) {
		qc.onLoginSuccess(strError,this);
	}
	public void onLoginCancel(String strError) {
		qc.onLoginCancel(strError,this);
	}
	public void onLoginFailed(String strError) {
		qc.onLoginFailed(strError,this);
	}
	public void onFunctionCallBack(String strError) {
		qc.onFunctionCallBack(strError,this);
	}	
	
	public void onLoadSuccessful(String strError) {
		qc.onLoadSuccessfulCallBack(strError,this);
	}
	public void onLoadFailed(String strError) {
		qc.onLoadFailedCallBack(strError,this);
	}
	
	public void onSaveSuccessful(String strError) {
		qc.onSaveSuccessfulCallBack(strError,this);
	}
	public void onSaveFailed(String strError) {
		qc.onSaveFailedCallBack(strError,this);
	}
	
	public void onOnVideoCompleted(String strError) {
		qc.onOnVideoCompletedCallBack(strError,this);
	}
	public void onOnVideoFailed(String strError) {
		qc.onOnVideoFailedCallBack(strError,this);
	}
	public void onLoadSuccessfulCallBack(String returndata) {
		// TODO Auto-generated method stub
		qc.onLoadSuccessfulCallBack(returndata,this);
	}
	public void onLoadFailedCallBack(String string) {
		// TODO Auto-generated method stub
		qc.onLoadFailedCallBack(string,this);
	}
	public void onSaveSuccessfulCallBack(String string) {
		// TODO Auto-generated method stub
		qc.onSaveSuccessfulCallBack(string,this);
	}
	public void onSaveFailedCallBack(String string) {
		// TODO Auto-generated method stub
		qc.onSaveFailedCallBack(string,this);
	}
	public void QinUnityMessage(String ObjectName,String MethodName,String QinMessage) {
		E2WApp.LogLocal("[E2WApp]->QinUnityMessage "+"UnityPlayer.UnitySendMessage("+ObjectName+","+MethodName+","+QinMessage+")");
		qc.QinUnityMessage(ObjectName,MethodName,QinMessage);	
	}
	protected void ShowToast(String strMessage)
	{
		Toast.makeText(forbassonly, strMessage, Toast.LENGTH_LONG).show();
	}	
	public void ShareResult(int result )
	{
		qc.ShareResult(result);
	}
	public void Exchange(String text) {
		qc.Exchange(text);
	}
	public void Exchange() {
		qc.Exchange(this);
	}
	public void Exchange(APPBaseInterface appinterface)
	{
		//Log.d(Const.TAG, "showToast: " + strMessage + ", " + iDuration);

		this.appinterface=appinterface;
		
		final EditText inputServer = new EditText(((Activity) E2WApp.mContext));
		inputServer
				.setFilters(new InputFilter[] { new InputFilter.LengthFilter(
						10) });
		AlertDialog.Builder builder = new AlertDialog.Builder(((Activity) E2WApp.mContext));
		builder.setTitle("兑换中心")
		// .setIcon(android.R.drawable.ic_dialog_info)
				.setView(inputServer).setNegativeButton("取消", null);
		builder.setPositiveButton("确定",
				new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog,
							int which) {
						new Thread(new Runnable() {
							
							@Override
							public void run() {
								// TODO Auto-generated method stub
								Looper.prepare();
								String text = inputServer.getText().toString();
								String prKey = QinConst.exchangeKEY+text;
								String sign = MD5(prKey);
								String list = "appid="+QinConst.exchangeID+"&cdkey="+text+"&sign="+sign;							
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
									        	  Log.e("IAP","[Exchange]onFunctionCallBack="+key+":"+QinConst.Restoreappid);

									        	  if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium")||QinConst.Restoreappid.equals("TWOM"))
									        	  {
									        		  isOldGameExchange=true;
									        		  //Log.e("IAP","[Exchange]onFunctionCallBack->QinConst.Restoreappid.equals(\"Machinarium\")"+QinConst.Restoreappid.equals("Machinarium"));
									        		  onPurchaseSuccess(key);
									        	  }
									        	  else
									        	  {
									        		  //Log.e("IAP","[Exchange]onFunctionCallBack->QinConst.Restoreappid.equals(\"Machinarium\")"+QinConst.Restoreappid.equals("Machinarium"));
									        		  onFunctionCallBack(key);
									        	  }
									        	  Toast.makeText(E2WApp.mContext, "兑换成功", Toast.LENGTH_SHORT).show();
									          }
									        }
										}

									}
									else
									{
										 if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium")||QinConst.Restoreappid.equals("TWOM"))
							        	  {

							        	  }
										 else
										 {
											 onFunctionCallBack("ExchangeFailed");
										 }
										Toast.makeText(E2WApp.mContext, "兑换失败", Toast.LENGTH_SHORT).show();
									}
								}
								catch (JSONException e)
								{

									// TODO Auto-generated catch block
									onPurchaseFailed("");
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
	public void show_cp()
	{

	}
	public void show_tt()
	{

	}
	public void show_wt()
	{

	}
	public void show_ts(boolean isopen)
	{
	}

	public void attachBaseContext(Context base) {
		// TODO Auto-generated method stub
		
	}

	public void purchaseSuper(String mProductId2, String mProductDescription2,
			float mProductPrice2) {
		// TODO Auto-generated method stub
		
	}

	public void SharePicture(String imagePath, boolean istimeline) {
		// TODO Auto-generated method stub
		
	}



	public void logout() {
		// TODO Auto-generated method stub
		
	}

	public void setExtraParam(String strParam, String strValue) {
		// TODO Auto-generated method stub
		
	}

	public void TencentLogin(int kind) {
		// TODO Auto-generated method stub
		
	}


	public boolean onCreateOptionsMenu(Menu menu) {
		// TODO Auto-generated method stub
		return false;
	}

	public void letUserLogin() {
		// TODO Auto-generated method stub
		
	}



	public void uploadclick() {
		// TODO Auto-generated method stub
		
	}

	public void showDiffLogin() {
		// TODO Auto-generated method stub
		
	}

	public void showMessageDialog() {
		// TODO Auto-generated method stub
		
	}

	public void swtichuser() {
		// TODO Auto-generated method stub
		
	}

	public void onLoadLib() {
		// TODO Auto-generated method stub
		
	}

	public void stopWaiting() {
		// TODO Auto-generated method stub
		
	}

	public void letUserLogout() {
		// TODO Auto-generated method stub
		
	}

	public void onActivityResult() {
		// TODO Auto-generated method stub
		
	}


	public void TencentLoginOutOnly()
	{
		
	}


    public void show_push(String scenes) {
    }

    public void show_out(String scenes) {
    }

    public void show_video(String scenes) {
    }

    public void show_insert(String scenes) {
    }
	public void show_banner(String scenes) {
	}
}
