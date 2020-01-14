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
import android.util.Log;

public class InAppBaseOperation{
	protected String mProductId;
	protected String mProductDescription;
	protected float mProductPrice;
	protected InAppBaseOperation mInstance;
	public static boolean sTestMode = false;
	public static QinConst qc;
	public static Context forbassonly;
	public static String OrderID="";
	public static String LogName="InAppBaseOperation";
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

	public void LoadConfiguration()//下载配置
	{
		new Thread()
		{
    		@Override
    		public void run()
    		{
			    String str = HttpUrlpost("http://101.200.214.15/setting/jsonServerSetting.php?name="+SdkApplication.msg+"Config"+"&appid="+QinConst.appid);
			    LogLocalSystem("------[GetSeverSettingDate]http://101.200.214.15/setting/jsonServerSetting.php?name="+SdkApplication.msg+"&appid="+QinConst.appid);
			    LogLocalSystem("------[QinConst][GetSeverSettingDate]str="+str);
			    if(!str.equals(""))
			    {
			    	//LogLocalSystem("------[QinConst][GetSeverSettingDate]SdkApplication.msg+\"Config\"="+SdkApplication.msg+"Config");
			    	writeFileData(SdkApplication.msg+"Config",str);
		    	}
    		}
    	}.start();

	}
	public String GetConfiguration()
	{
		String myconfig = "";
		//LogLocalSystem(readFileData(SdkApplication.msg+"Config"));	
		myconfig = readFileData(SdkApplication.msg+"Config");
		return myconfig;
	}
	public boolean IsRatingAvailable()
	{
		JSONTokener jsonParser = new JSONTokener(GetConfiguration());    
	    JSONObject Parameter; 
	    try 
	    {
			Parameter = (JSONObject) jsonParser.nextValue();
			JSONObject  Parameter1 = (JSONObject)Parameter.getJSONObject("ratingSettings");
		    String url = Parameter1.getString("ratingURL");		
			if (!url.equals(""))
			{
				return true;
			}
			else
			{
				return false;
			}
			
			
		} 
	    catch (JSONException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public String GetRatingURL()
	{
		JSONTokener jsonParser = new JSONTokener(GetConfiguration());    
	    JSONObject Parameter; 
	    try 
	    {
			Parameter = (JSONObject) jsonParser.nextValue();
			JSONObject  Parameter1 = (JSONObject)Parameter.getJSONObject("ratingSettings");
		    String url = Parameter1.getString("ratingURL");		
			if (!url.equals(""))
			{
				return url;
			}
			else
			{
				return "";
			}
		} 
	    catch (JSONException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
	}
	public String[] GetIAPs()
	{
		JSONTokener jsonParser = new JSONTokener(GetConfiguration());    
	    JSONObject Parameter; 
	    String[] ADParamList= null;
		try 
		{
			Parameter = (JSONObject) jsonParser.nextValue();
			//LogLocalSystem("------[QinConst][GetIAPs]Parameter="+Parameter);
			JSONArray jArroy = Parameter.getJSONArray("iaps");
			int nNum = jArroy.length();
			//LogLocalSystem("------[QinConst][GetIAPs]nNum="+nNum);
			ADParamList = new String[nNum];
			for(int i= 0;i<nNum;i++)
			{
				ADParamList[i] = jArroy.getString(i);
				//LogLocalSystem("------[QinConst][GetIAPs]ADParamList["+i+"]="+ADParamList[i]);
			}			
			return ADParamList;
		} 
		catch (JSONException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	
	}
	public String GetRemoteValue(String key)
	{
		JSONTokener jsonParser = new JSONTokener(GetConfiguration());    
	    JSONObject Parameter; 
	    try 
	    {
			Parameter = (JSONObject) jsonParser.nextValue();
			JSONObject  Parameter1 = (JSONObject)Parameter.getJSONObject("configuration");
		    String url = Parameter1.getString(key);		
			if (!url.equals(""))
			{
				return url;
			}
			else
			{
				return "";
			}
		} 
	    catch (JSONException e) 
	    {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "";
		}
		
	}
	public String[] GetRemoteValuesWithPrefix(String key)
	{
		JSONTokener jsonParser = new JSONTokener(GetConfiguration());    
	    JSONObject Parameter;    
	    String ValueString = "";
	    String [] ContainOffers = {"creditPackOffers","heroOffers","specialOffers","powerOffers","contentOffers"};
	    ArrayList al=new ArrayList();
	    String [] MYlist =null;
		try 
		{
			Parameter = (JSONObject) jsonParser.nextValue();
			for(int i = 0 ; i<ContainOffers.length;i++)
		    {
			 	
			 	//LogLocalSystem("[GetRemoteValuesWithPrefix]1 "+ContainOffers[i]+":"+key+":"+i);
				//LogLocalSystem("------[QinConst][GetIAPs]Parameter="+Parameter);
				JSONArray jArroy = Parameter.getJSONArray(ContainOffers[i]);
				int nNum = jArroy.length();
				//LogLocalSystem("[GetRemoteValuesWithPrefix]2 jArroy="+jArroy);
				//LogLocalSystem("[GetRemoteValuesWithPrefix]3 nNum="+nNum);
				for(int i2= 0;i2<nNum;i2++)
				{
					JSONTokener jsonParserList = new JSONTokener(jArroy.getString(i2));  
					JSONObject ParameterList = (JSONObject) jsonParserList.nextValue();
					//LogLocalSystem("[GetRemoteValuesWithPrefix]------ParameterList="+ParameterList);
					//JSONObject  ParameterSingal = (JSONObject)ParameterList.getJSONObject("identifier");	
					String str = ParameterList.getString("identifier");
					//LogLocalSystem("[GetRemoteValuesWithPrefix]str="+str);
					if (str.indexOf(key)!=-1)
					{
						
						//LogLocalSystem("[GetRemoteValuesWithPrefix]ParameterList="+ParameterList);
						ValueString =  ParameterList.toString();
						al.add(ValueString);
					}
					else
						//LogLocalSystem("[GetRemoteValuesWithPrefix]ParameterList=null");
						continue;
				}
		    }
		} 	
		catch (JSONException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		MYlist = new String[al.size()];
		
		for(int i = 0 ;i<al.size() ; i++)
		{
			MYlist[i] = (String)al.get(i);
			//LogLocalSystem("[GetRemoteValuesWithPrefix]MYlist["+i+"]="+MYlist[i]);
		}
		return MYlist;
		
	}
    public static String HttpUrlpost(String URL)
    {
            // 第一步，创建HttpPost对象 
            HttpPost httpPost = new HttpPost(URL); 
            LogLocalSystem("[HttpUrlpost]URL="+URL);
            String result = "";
            // 设置HTTP POST请求参数必须用NameValuePair对象 
            List<NameValuePair> params = new ArrayList<NameValuePair>(); 
            //LogLocalSystem("------[QinConst][HttpUrlpost] 1");
            HttpResponse httpResponse = null; 
            //LogLocalSystem("------[QinConst][HttpUrlpost] 2");
            try { 
                HttpClient client = new DefaultHttpClient();
                //LogLocalSystem("------[QinConst][HttpUrlpost] 3");
                // 请求超时
                client.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 5000);
                //LogLocalSystem("------[QinConst][HttpUrlpost] 4");
                // 读取超时
                client.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 5000);
                //LogLocalSystem("------[QinConst][HttpUrlpost] 5");
                // 设置httpPost请求参数 
                httpPost.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8)); 
                //LogLocalSystem("------[QinConst][HttpUrlpost] 6");
                httpResponse = client.execute(httpPost); 
                //System.out.println(httpResponse.getStatusLine().getStatusCode()); 
                if (httpResponse.getStatusLine().getStatusCode() == 200) 
                { 
                	
                    // 第三步，使用getEntity方法活得返回结果 
                	//LogLocalSystem("------[QinConst][HttpUrlpost] result finished="+result);
                    result = EntityUtils.toString(httpResponse.getEntity());
                    //LogLocalSystem("------[QinConst][HttpUrlpost] result finished="+result);
                   
                } 
            } catch (ClientProtocolException e) { 
            	//LogLocalSystem("------[QinConst][HttpUrlpost] ClientProtocolException="+e.toString());
                e.printStackTrace(); 
            } catch (IOException e) { 
            	//LogLocalSystem("------[QinConst][HttpUrlpost] IOException="+e.toString());
                e.printStackTrace(); 
            } 
            //LogLocalSystem("------[QinConst][HttpUrlpost] result finished="+result);
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
	
	public static void LogLocalSystem(final String news)
	{				
		if(E2WApp.isLogOpen.equals("1")||SdkApplication.isAntLogOpen.equals("open"))
		{
			Log.e(LogName,news);
		}
	}



}
