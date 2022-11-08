package com.east2west.game.System;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
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

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.Base64;
import com.east2west.game.util.MD5E2W;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

public class InAppBaseRestore{
	protected String mProductId;
	protected String mProductDescription;
	protected float mProductPrice;
	protected InAppBaseRestore mInstance;
	public static boolean sTestMode = false;
	public static QinConst qc;
	public static Context forbassonly;
	public static String OrderID="";
	public static String LogName="InAppBaseRestore";
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
	
	public void init(Context appContext, Activity context) 
	{
		//如下是使用函数
		//repairindentRequest();     //恢复购买回调
		//respondCPserver(OrderID); // 购买成功回调
	}

	public void repairindentRequest()//补单
	{
		LogLocalRestore("["+LogName+"][init]->E2WApp.mContext1 = "+E2WApp.mContext);
		new Thread(new Runnable() 
		{		
			@Override
			public void run() 
			{
				Looper.prepare();
				if(readFileData("PayList").equals(""))
				{
					LogLocalRestore("[E2WApp]->RepairindentRequest:E2WApp.DeviceId="+E2WApp.DeviceId+",url=http://pay.east2west.cn/cdkey/index.php/Clipay/add");
					// TODO Auto-generated method stub			
					try 
					{
						List<NameValuePair> list = new ArrayList<NameValuePair>();	
					    list.add(new BasicNameValuePair("userId",E2WApp.DeviceId));
					    MD5E2W m = new MD5E2W();	    
					   // String tmp =  m.getMD5ofStr(E2WApp.DeviceId+"e2w");
					    //E2WApp.LogLocal("[E2WApp]->md5="+tmp);
					    
					    java.util.Random r = new java.util.Random(); 
					    
					    int num = r.nextInt();
					    String rand = String.valueOf(num);    
					    list.add(new BasicNameValuePair("rand",rand));
					    list.add(new BasicNameValuePair("channel",SdkApplication.msg));
					    list.add(new BasicNameValuePair("appid",QinConst.exchangeID));
					    String content = "userId="+E2WApp.DeviceId +"&"+ rand;
		 			    String tmp = signal(content,  key);					    				    
					    
					    list.add(new BasicNameValuePair("sign",tmp));
					    
					    String log = HttpUrlpost("http://pay.east2west.cn/cdkey/index.php/Clipay/add",list);
					    LogLocalRestore("[E2WApp]->RepairindentRequest:log="+log);
					    JSONTokener jsonParser = new JSONTokener(log);
						
						JSONObject Parameter;
						Parameter = (JSONObject) jsonParser.nextValue();
						String errorcodeString = Parameter.getString("code");					
						if(errorcodeString.equalsIgnoreCase("0"))
						{
							JSONArray jArroy = Parameter.getJSONArray("msg");
							int nNum = jArroy.length();
		
							for(int i= 0;i<nNum;i++)
							{
								String strID = jArroy.getString(i);
								InAppBase mInApp = new InAppBase();
								if(QinConst.Restoreappid.equals("Samorost3")||QinConst.Restoreappid.equals("Machinarium"))
						 		{
									mInApp.onPurchaseSuccess(strID);
						 		}
								else
								{
									mInApp.onFunctionCallBack(strID);//根据道具ID 补发道具 方法自己完成
								}
								 Toast.makeText(E2WApp.mContext, "兑换成功", Toast.LENGTH_SHORT).show();
							}					
						}
					} 
					catch (JSONException e) 
					{
						// TODO Auto-generated catch block
						LogLocalRestore("[E2WApp]->RepairindentRequest e="+e);
						e.printStackTrace();
					}
				}
				else
				{
					LogLocalRestore("[E2WApp]->readFileData('PayList')!=null->"+readFileData("PayList"));
					respondCPserver(readFileData("PayList"));
				}
				Looper.loop();
			}
		}).start();

	}
//	public void respondChannelServer()
//	{
//			
//		Formula: http://pay.east2west.cn/cdkey/index.php/Callback/"channelName"
//				 userid,productid,requestid,appid,version
//		Example:
//				 http://pay.east2west.cn/cdkey/index.php/Callback/oppo
//				 E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg
//	}
	public void respondCPserver(final String strID)//通知cp客户端完成订单
	{
		LogLocalRestore("["+LogName+"][init]->E2WApp.mContext="+E2WApp.mContext);
		new Thread(new Runnable() {		
			@Override
			public void run() {
				
				// TODO Auto-generated method stub			
			    List<NameValuePair> list = new ArrayList<NameValuePair>();
			    list.add(new BasicNameValuePair("userId",E2WApp.DeviceId));
			    list.add(new BasicNameValuePair("channel",SdkApplication.msg));
			    list.add(new BasicNameValuePair("requestId",strID));
			    list.add(new BasicNameValuePair("E2WChannel",SdkApplication.e2wnumber));	
			    MD5E2W m = new MD5E2W();	    
			    //String tmp =  m.getMD5ofStr(E2WApp.DeviceId+"e2w");
			    java.util.Random r = new java.util.Random(); 			    
			    int num = r.nextInt();
			    String rand = String.valueOf(num);    
			    list.add(new BasicNameValuePair("rand",rand));
			    String content = "requestId="+strID+"&userId="+E2WApp.DeviceId +"&"+ rand;
 			    String tmp = signal(content,  key);
			    //E2WApp.LogLocal("[E2WApp]->md5="+tmp);
 			    		   
			    list.add(new BasicNameValuePair("sign",tmp));
			    
				String feedback =HttpUrlpost("http://pay.east2west.cn/cdkey/index.php/Clipay/respond",list);			
				LogLocalRestore("[InAppBaseRestore][respondCPserver]->url:["+"http://pay.east2west.cn/cdkey/index.php/Clipay/respond"+"]");
				LogLocalRestore("[InAppBaseRestore][respondCPserver]->list="+list);
				JSONTokener jsonParser = new JSONTokener(feedback);
				JSONObject Parameter;
				try 
				{
					Parameter = (JSONObject) jsonParser.nextValue();
					String errorcodeString = Parameter.getString("code");
					
					if(errorcodeString.equalsIgnoreCase("0"))
					{
						writeNullData("PayList");
						LogLocalRestore("[InAppBaseRestore][respondCPserver]->respondCPserver: code=0; PayList=["+readFileData("PayList")+"]");
					}
					else
					{
						writeFileData("PayList",strID);
						LogLocalRestore("[InAppBaseRestore][respondCPserver]->respondCPserver: code!=0; PayList=["+readFileData("PayList")+"]");
					}
				} 
				catch (JSONException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
					writeFileData("PayList",strID);
					LogLocalRestore("[InAppBaseRestore][respondCPserver]->respondCPserver: code=error; PayList=["+readFileData("PayList")+"]");
				}
			}

			
		}).start();

	}
	/*
			生成RSA签名
	
	*/
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
		
		LogLocalRestore("[InAppBase]-HttpUrlpost url:"+URL);
		LogLocalRestore("[InAppBase]-HttpUrlpost params:"+params);
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
	
	public static void LogLocalRestore(final String news)
	{				
		if(E2WApp.isLogOpen.equals("1")||SdkApplication.isAntLogOpen.equals("open"))
		{
			Log.e(LogName,news);
		}
	}



}
