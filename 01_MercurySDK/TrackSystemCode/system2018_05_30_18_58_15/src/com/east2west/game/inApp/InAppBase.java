package com.east2west.game.inApp;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.List;

import org.apache.http.HttpEntity;
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
import com.east2west.game.util.Base64;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.Menu;
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
	public void ShowTencentAd()
	{
	}

	public void FunctionL(String number)
	{
		qc.FunctionL(number);
	}
	public void ExitGame()
	{
		qc.ExitGame();
	}
	
	public void onPurchaseSuccess(String message) {
		qc.onPurchaseSuccess(message,this,mProductId);
		
	}	
	public void onPurchaseFailed(String strError) {	
		qc.onPurchaseFailed(strError,this,mProductId);
	}	
	public void onPurchaseCanceled(String strError) {
		qc.onPurchaseFailed(strError,this,mProductId);		
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

	public static String signal(String content, String privateKey) {
		String charset = "utf-8";
		try {
			PKCS8EncodedKeySpec priPKCS8 = new PKCS8EncodedKeySpec(
					Base64.decode(privateKey));
			KeyFactory keyf = KeyFactory.getInstance("RSA");
			PrivateKey priKey = keyf.generatePrivate(priPKCS8);

			java.security.Signature signature = java.security.Signature
					.getInstance("SHA1WithRSA");

			signature.initSign(priKey);
			signature.update(content.getBytes(charset));

			byte[] signed = signature.sign();

			return Base64.encode(signed);
		} catch (Exception e) {
			e.printStackTrace();
			Log.e("test","sign err:"+e);
		}

		return null;
	}

	
	
	
	public  static String HttpUrlpost(String URL,List<NameValuePair> params)
	{		
		
		E2WApp.LogLocal("[InAppBase]-HttpUrlpost url:"+URL);
		E2WApp.LogLocal("[InAppBase]-HttpUrlpost params:"+params);
        // 第一步，创建HttpPost对象 
        HttpPost httpPost = new HttpPost(URL); 

        String result = "";
        HttpResponse httpResponse = null;     
        try { 
            HttpEntity entity = new UrlEncodedFormEntity(params);
            httpPost.setEntity(entity);
            HttpClient client = new DefaultHttpClient();
            // 请求超时
            client.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 5000);
            // 读取超时
            client.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 5000);
            // 设置httpPost请求参数 
            httpPost.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8)); 
            httpResponse = client.execute(httpPost); 

            if (httpResponse.getStatusLine().getStatusCode() == 200) { 
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
	
	 public void writeFileData(String fileName,String message)
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
	 public void writeNullData(String fileName)
	 {
		 String message="";
		 try{
			 //E2WApp.LogLocal("[E2WApp]->writeNullData fileName="+fileName+",message="+message+"-"+E2WApp.mContext);
			 FileOutputStream fout = E2WApp.mContext.openFileOutput(fileName, E2WApp.mContext.MODE_PRIVATE);
			 byte [] bytes = message.getBytes();
			 fout.write(bytes);
			 fout.close();	
			 //E2WApp.LogLocal("[E2WApp]->writeNullData Success");
			 }
		 	 catch(Exception e){
		 		e.printStackTrace();
			 }
	  }
	public String readFileData(String fileName)
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

	public void onNewIntent(Intent intent) {
		// TODO Auto-generated method stub
		
	}

	public void logout() {
		// TODO Auto-generated method stub
		
	}

	public void setExtraParam(String strParam, String strValue) {
		// TODO Auto-generated method stub
		
	}

	public void login(int kind) {
		// TODO Auto-generated method stub
		
	}

	public void onRestart() {
		// TODO Auto-generated method stub
		
	}

	public void onStop() {
		// TODO Auto-generated method stub
		
	}

	public boolean onCreateOptionsMenu(Menu menu) {
		// TODO Auto-generated method stub
		return false;
	}

	public void letUserLogin() {
		// TODO Auto-generated method stub
		
	}

	public void show_banner() {
		// TODO Auto-generated method stub
		
	}

	public void show_insert() {
		// TODO Auto-generated method stub
		
	}

	public void show_push() {
		// TODO Auto-generated method stub
		
	}

	public void show_out() {
		// TODO Auto-generated method stub
		
	}

	public void show_video() {
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

	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		// TODO Auto-generated method stub
		
	}
	public void TencentLoginOutOnly()
	{
		
	}









}
