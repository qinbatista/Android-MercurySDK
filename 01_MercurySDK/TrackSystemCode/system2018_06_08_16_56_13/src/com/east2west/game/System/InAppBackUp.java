package com.east2west.game.System;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EncodingUtils;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.Base64Utils;
import com.east2west.game.util.PackageUtils;
import com.east2west.game.util.RSAUtils;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;

public class InAppBackUp{
	protected String mProductId;
	protected String mProductDescription;
	protected float mProductPrice;
	public static String LogName="InAppBackUp";
	public static String sessionidLocal="";
	public static int ThreadCountGetGuestID=0;
	public static int ThreadCountCheckBackUp=0;
	public static String BackupTime="";
	
	public static String  DatFormat="";
	public static boolean isenter=false;
	public static String  DatFile="";
	public static boolean isSteam=true;
	
	public static String DataFileName = "";
	public static String GameId = "";
	public static String ServerLocation="";
	public static String DataLocation="";
	
	public void init(Context appContext, Activity context) {
		//如下是使用函数
		//BackUpThread();		
	}
	public void ConfigurationSetting()
	{
		//填写各种参数
		isSteam=true;//是否用字节流
		DataLocation=E2WApp.mContext.getFilesDir().getAbsolutePath()+"/";//存档路径
		DataFileName = "machinarium_save.bin";//存档文件名
		GameId = "e2w25e3847c9ed078e1";//游戏服务器ID
		ServerLocation="101.201.101.114:9000";//存档远程服务器IP
	}

	//直接调用即可，在qinconst写入相关参数isSteam调节是否用字节流
	public void BackUpThread()
	{
		ConfigurationSetting();
		LogLocalServer("["+LogName+"][init] DataLocation1 = "+DataLocation);
	    new Thread(new Runnable()
	    {
	      public void run()
	      {
	    	if(E2WApp.imei.equals(""))
	    	{

	    	}
	    	while(true)
	    	{
	    	  try 
	    	  {
	    		if(sessionidLocal==""&&ThreadCountGetGuestID<3)
	    		{
	    			GetGuestID();
	    			ThreadCountGetGuestID++;
	    		}
	    		if(sessionidLocal!=""&&ThreadCountCheckBackUp<3)
	    		{
	    			LogLocalServer("["+LogName+"][BackUpThread]->CheckBackUp()");
	    			CheckBackUp(DataLocation);
	    			ThreadCountCheckBackUp++;
	    		}
	    		//LogLocalServer("["+LogName+"][BackUpThread] sessionidLocal="+sessionidLocal+" ThreadCountGetGuestID="+ThreadCountGetGuestID+" ThreadCountCheckBackUp="+ThreadCountCheckBackUp );
				Thread.sleep(5000L);
				
	    	  }
	    	  catch (InterruptedException e) 
	    	  {
				// TODO Auto-generated catch block
				e.printStackTrace();
	    	  }
	    	}
	      }
	    }).start();
	}
	
	public static void GetGuestID()
	{
		new Thread(new Runnable(){
            @Override  
            public void run() {
               Looper.prepare(); 
                
		        if(!E2WApp.DeviceId.equals(""))
		        {
		        	//E2WApp.LogLocalServer("["+LogName+"][GetGuestID]--------");	  
					try
					{
						PackageInfo packageInfo = E2WApp.mContext.getPackageManager().getPackageInfo(E2WApp.mContext.getPackageName(), PackageManager.GET_SIGNATURES);
						String digest = PackageUtils.getInstance().getSignatureDigest(packageInfo);  
			     		String packSign = digest.toUpperCase(); 

				        JSONObject resJsonObj = new JSONObject();  
				        resJsonObj.put("deviceid", E2WApp.DeviceId);  
				        resJsonObj.put("appid",GameId);
				        resJsonObj.put("channel",SdkApplication.msg);
				        resJsonObj.put("sign",packSign);
				        LogLocalServer("["+LogName+"][GetGuestID] deviceid="+E2WApp.DeviceId);	
				        LogLocalServer("["+LogName+"][GetGuestID] appid="+QinConst.Restoreappid);	
				        LogLocalServer("["+LogName+"][GetGuestID] channel="+SdkApplication.msg);	
				       
				        String JsonData = resJsonObj.toString(); 				       
				        InputStream  inPublic = E2WApp.mContext.getResources().getAssets().open("rsa_public_key.pem");  
						PublicKey publicKey = RSAUtils.loadPublicKey(inPublic);  
				        byte[] encryptByte = RSAUtils.encryptData(JsonData.getBytes(), publicKey); 
				        LogLocalServer("["+LogName+"][GetGuestID] publicKey="+publicKey.toString());	
				        LogLocalServer("["+LogName+"][GetGuestID] channel="+SdkApplication.msg);	
				        LogLocalServer("["+LogName+"][GetGuestID] packSign="+packSign);	
				        LogLocalServer("["+LogName+"][GetGuestID] encryptByte="+encryptByte);
						String encryData = Base64Utils.encode(encryptByte); 
				        //Log.e("MAX","[" + LogName + "][FileToBytes] back_data="+ FileToBytes(DataLocation+DatFile+"_backup"+DatFormat).length);
						List<NameValuePair> list = new ArrayList<NameValuePair>();	
					    list.add(new BasicNameValuePair("data",encryData.toString()));
					    String url = "http://"+ServerLocation+"/Auth/guestauth";

					    HttpPost Http_Post= new HttpPost(url);
					    HttpClient httpClient = new DefaultHttpClient();
					    Http_Post.addHeader("Client-Agent","EAST2WEST.COM");
					    Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
						HttpResponse response = httpClient.execute(Http_Post);			
						int code = response.getStatusLine().getStatusCode();
						LogLocalServer("["+LogName+"][GetGuestID]response="+response);
						String strResult = EntityUtils.toString(response.getEntity());
						LogLocalServer("["+LogName+"][GetGuestID]recv strResult="+strResult);
						LogLocalServer("["+LogName+"][GetGuestID]code="+code);
	
			            if (code == 200) 
			            {   

			            	JSONObject myJsonObject = new JSONObject(strResult);
			            	LogLocalServer("["+LogName+"][GetGuestID]strResult="+strResult);
			            	String ret = myJsonObject.getString("ret");
			            	String errMsg = myJsonObject.getString("msg");
			            	String retData = myJsonObject.getString("data"); 
			            	LogLocalServer("["+LogName+"][GetGuestID]data="+retData);
			            	sessionidLocal=retData;
			            	writeFileData("sessionid",retData);
			            	LogLocalServer("["+LogName+"][GetGuestID] retData  ="+retData);
			            	ThreadCountGetGuestID=99;
			            	InAppBase mInApp = new InAppBase();
			            	mInApp.onLoginSuccess(E2WApp.DeviceId);
			            		                    
			            } 
			            else
			            {
			            	InAppBase mInApp = new InAppBase();
			            	mInApp.onLoginFailed(E2WApp.DeviceId);
			            	LogLocalServer("["+LogName+"][GetGuestID] Internet unaccessable:code="+code);
			            	
			            }
					}
					catch(Exception e)
					{
						InAppBase mInApp = new InAppBase();
						mInApp.onLoginFailed(e.toString());
						LogLocalServer("["+LogName+"][GetGuestID] error="+e.toString());
						
					}
		        }
		        else
		        {
		        	InAppBase mInApp = new InAppBase();
		        	mInApp.onLoginSuccess(E2WApp.DeviceId);
		        	LogLocalServer("["+LogName+"][GetGuestID] Already have sessionid="+sessionidLocal);
		        	ThreadCountGetGuestID=99;
		        }
		        Looper.loop(); 
            }  
        }).start();
		
	}
	public static void writeFileData(String fileName,String message)
	 {
		 try{
			 LogLocalServer("[E2WApp]->writeFileData fileName="+fileName+",message="+message+"-"+E2WApp.mContext);
			 FileOutputStream fout = E2WApp.mContext.openFileOutput(fileName, E2WApp.mContext.MODE_PRIVATE);
			 byte [] bytes = message.getBytes();
			 fout.write(bytes);
			 fout.close();	
			 LogLocalServer("[E2WApp]->writeFileData Success");
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
	 		  LogLocalServer("[E2WApp]->readFileData:"+fileName+"-"+E2WApp.mContext);
	 		  FileInputStream fin = E2WApp.mContext.openFileInput(fileName);
	 		  int length = fin.available();
	 		  byte [] buffer = new byte[length];
	 		  fin.read(buffer);
	 		  res = EncodingUtils.getString(buffer, "UTF-8");
	 		  fin.close();
	 		  LogLocalServer("[E2WApp]->readFileData Success");
	 		}
	 		catch(Exception e)
	 		{
	 			e.printStackTrace();
	 		}
	 		return res;
	}
	public static void CheckBackUp(final String Location)
	{ 
        new Thread(new Runnable(){
            @Override  
            public void run() {
               Looper.prepare(); 

			   File[] files = new File(Location).listFiles(); 
			   if(files != null && files.length > 0) 
			   {
	               
	               if(DataFileName=="")
	               {
	            	   LogLocalServer("["+LogName+"]"+"[CheckBackUp] your DataFileName is null");
	            	   return;
	               }
	               else
	               {
	            	   String[] s = DataFileName.split("\\.");
	            	   if (s.length>0 && s[0] != null&&DatFile=="")
	            	   {
							DatFile = s[0];
	            	   }
	            	   if (s.length>1 && s[1] != null&&DatFormat=="")
					   {
							DatFormat = "." + s[1];
					   }
	            	   if(DatFile=="")
	            	   {
	            		  LogLocalServer("["+LogName+"]"+"[CheckBackUp] Can't get file name");
	            	   }
	            	   else
	            	   {
	            		  LogLocalServer("["+LogName+"]"+"[CheckBackUp] DatFile="+DatFile+",DatFormat="+DatFormat);
	            	   }
	            	  
	               }
	               
				   for (File file : files) 
				   { 
					
					 if(file.isDirectory()
							 &&(
							   //!file.getAbsolutePath().toString().contains("/cust")&&
							   //!file.getAbsolutePath().toString().contains("/sdcard")&&
							   //!file.getAbsolutePath().toString().contains("/storage")&&
							   //!file.getAbsolutePath().toString().contains("/mnt")&&
							   //!file.getAbsolutePath().toString().contains("/config")&&
							   //!file.getAbsolutePath().toString().contains("/cache")&&
							   //!file.getAbsolutePath().toString().contains("/vendor")&&
								 !file.getAbsolutePath().toString().contains("/d")&&
							   //!file.getAbsolutePath().toString().contains("/etc")&&
							   //!file.getAbsolutePath().toString().contains("/var")&&
							   //!file.getAbsolutePath().toString().contains("/dsp")&&
							   //!file.getAbsolutePath().toString().contains("/firmware")&&
							  
							   //!file.getAbsolutePath().toString().contains("/sbin")&&
							   //!file.getAbsolutePath().toString().contains("/res")&&
							   	 !file.getAbsolutePath().toString().contains("/proc")&&
							   //!file.getAbsolutePath().toString().contains("/oem")&&
							   //!file.getAbsolutePath().toString().contains("/data")&&
							   //!file.getAbsolutePath().toString().contains("/bin")&&
							   //!file.getAbsolutePath().toString().contains("/root")&&
							   //!file.getAbsolutePath().toString().contains("/acct")&&
							   //!file.getAbsolutePath().toString().contains("/dev")&&
								 !file.getAbsolutePath().toString().contains("/system")&&
								 !file.getAbsolutePath().toString().contains("/sys")
									   )
							   )
					 {
						 CheckBackUp(file.getAbsolutePath()+"/");
					 }
					 else
					 {
						 final File f1_org =new File(DataLocation+DatFile+DatFormat);
						 final File f1_backup =new File(DataLocation+DatFile+"_backup"+DatFormat);
						 final File f1_old =new File(DataLocation+DatFile+"_backup_old"+DatFormat);	
						 int _pathIndex= file.getAbsolutePath().toString().indexOf(DatFile + DatFormat);
						 int _allPathLength=_pathIndex+DatFile.length()+DatFormat.length();
						 if (_pathIndex!=1&&(file.getAbsolutePath().toString().length()==_allPathLength)) //原始文件存在
						 {
							 
							 File DataBackUp =new File(E2WApp.mContext.getFilesDir().getAbsolutePath()+"/"+DatFile+"_backup"+DatFormat); 
								
							 if(DataBackUp.exists())//if orignal data is here and backup is here
							 {
								 LogLocalServer("["+LogName+"]"+"[CheckBackUp]regular backup data,f1_org->f1_backup");
								 try
								 {
									copyFileUsingFileStreams(f1_org,f1_backup);
									int resultofupdate=UploadData();
									if(resultofupdate==1)
									{
										LogLocalServer("["+LogName+"][CheckBackUp] Upload Successfully");
									}
									else if(resultofupdate==2)
									{
										LogLocalServer("["+LogName+"][CheckBackUp] Server refuse");
									}
									else if(resultofupdate == 3)
									{
										LogLocalServer("["+LogName+"][CheckBackUp] Can't access server");
									}
									else
									{
										LogLocalServer("["+LogName+"][CheckBackUp] Unknow reason");
									}
								 }
								 catch (IOException e) 
								 {
									// TODO Auto-generated catch block
									 LogLocalServer("["+LogName+"][CheckBackUp]Write backup failed:"+e.toString());
								 }
							 }
							 else if(!DataBackUp.exists())//if orignal data is here but backup is not here
							 {
								 LogLocalServer("["+LogName+"][CheckBackUp]"+"missing backup");
								 int message=DownloadData();
											
								 writeFileData("BackUpData","");
								 if(message==1)
								 {
									    boolean result = f1_org.renameTo(f1_old);
									    if(result==true)
									    {
									    	f1_org.delete();
									    }
										AlertDialog.Builder builder = new Builder(E2WApp.mContext);
										builder.setTitle("发现您在["+BackupTime+"]保存过备份");
										builder.setMessage("提示！【覆盖本地】本地进度将会丢失且会关闭游戏");
										builder.setPositiveButton("覆盖本地", new OnClickListener() 
										{
											@Override
											public void onClick(DialogInterface dialog, int which) 
											{
												
												
												try 
												{
													LogLocalServer("["+LogName+"][CheckBackUp] Copying backup to current data:");	
													f1_org.delete();
													if(!f1_org.exists())
													{
														LogLocalServer("["+LogName+"][CheckBackUp] Copyed backup to current data.f1_backup->f1_org");
														copyFileUsingFileStreams(f1_backup,f1_org);
													}
													else
													{
														LogLocalServer("["+LogName+"][CheckBackUp] Copy backup to current data failed");
													}
												}
												catch (IOException e) 
												{
													// TODO Auto-generated catch block								
													handler.sendEmptyMessage(0);
													e.printStackTrace();
													LogLocalServer("["+LogName+"][CheckBackUp]Copy backup to current data failed, try to restored your old data:"+e.toString());	
													try 
													{
														LogLocalServer("["+LogName+"][CheckBackUp]restored your old data success");	
														copyFileUsingFileStreams(f1_old,f1_org);
													} 
													catch (IOException e1) 
													{
														// TODO Auto-generated catch block
														LogLocalServer("["+LogName+"][CheckBackUp]restored your old data failed:"+e1.toString());	
													}
												}
												f1_old.delete();
												if(!f1_old.exists())
												{
													LogLocalServer("["+LogName+"][CheckBackUp] f1_old deleted");
												}
												RestartApp();
											}
										});
										builder.setNegativeButton("继续游戏", new OnClickListener() 
										{
											@Override
											public void onClick(DialogInterface dialog, int which) 
											{
												try 
												{
													copyFileUsingFileStreams(f1_old,f1_org);
													LogLocalServer("["+LogName+"][CheckBackUp]Backup orignal data");
													copyFileUsingFileStreams(f1_org,f1_backup);
												} 
												catch (IOException e) 
												{
													// TODO Auto-generated catch block
													LogLocalServer("["+LogName+"][CheckBackUp]Backup orignal data failed:"+e.toString());
												}
											}
										});
										AlertDialog alertDialog;
										alertDialog = builder.create();//AlertDialog.Builder.create(); 
										alertDialog.setCancelable(false);
										alertDialog.setCanceledOnTouchOutside(false);
										alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
										alertDialog.show();

										alertDialog.getWindow().getDecorView().setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow().getDecorView().getSystemUiVisibility());
										alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
								 }
								 else if(message == 2)
								 {
									 LogLocalServer("["+LogName+"][CheckBackUp]Don't have backup on server");
									 File f1 =new File(E2WApp.mContext.getFilesDir().getAbsolutePath()+"/"+DatFile+"_backup"+DatFormat);
									 try 
									 {
										copyFileUsingFileStreams(file,f1);
										LogLocalServer("["+LogName+"][CheckBackUp]Current data has been backuped at local");
										int resultofupdate=UploadData();
										if(resultofupdate==1)
										{
											LogLocalServer("["+LogName+"][CheckBackUp] Upload Successfully");
										}
										else if(resultofupdate==2)
										{
											LogLocalServer("["+LogName+"][CheckBackUp] Server refuse");
										}
										else if(resultofupdate == 3)
										{
											LogLocalServer("["+LogName+"][CheckBackUp] Can't access server");
										}
										else
										{
											LogLocalServer("["+LogName+"][CheckBackUp] Unknow reason");
										}
									 } 
									 catch (IOException e) 
									 {
										// TODO Auto-generated catch block
										LogLocalServer("["+LogName+"][CheckBackUp]Current data has error when try to backup, error is:"+e.toString());
										if(f1.exists())
										{
											LogLocalServer("["+LogName+"][CheckBackUp]Delete broken backup");
											f1.delete();
										}
									 }
								 }
								 else if(message ==3)
								 {
									 LogLocalServer("["+LogName+"][CheckBackUp]Server is unreadble");	
								 }
								 //check internet
								 //if have remote backup, download and recommend replace. agree:replace and restart game, disagree:continue game, create backup.
								 //no backup on remote, continue game, create backup.
							 }		
						 }
						 else if(file.getAbsolutePath().toString().indexOf(DatFile+"_backup"+DatFormat)!=-1)
						 {
							 File OriginalData =new File(E2WApp.mContext.getFilesDir().getAbsolutePath()+"/"+DatFile+DatFormat);
							 if(!OriginalData.exists()) //if orignal data is not here, but backup is here.
							 {
								 LogLocalServer("["+LogName+"][CheckBackUp]"+"Local data is missing, restart to use backup");					 
								 //local data abnormal, restart to fix				 

									 AlertDialog.Builder builder = new Builder(E2WApp.mContext);
										builder.setTitle("数据异常");
										builder.setMessage("提示！【关闭游戏】将会恢复您的数据");
										builder.setPositiveButton("关闭游戏", new OnClickListener() 
										{
											@Override
											public void onClick(DialogInterface dialog, int which) 
											{
												 try 
												 {
													 copyFileUsingFileStreams(f1_backup,f1_org);
													 RestartApp();
												 } 
												 catch (IOException e) 
												 {
													// TODO Auto-generated catch block
													e.printStackTrace();
												 }	
											}
										});

										AlertDialog alertDialog;
										alertDialog = builder.create();//AlertDialog.Builder.create(); 
										alertDialog.setCancelable(false);
										alertDialog.setCanceledOnTouchOutside(false);
										alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
										alertDialog.show();
										alertDialog.getWindow().getDecorView().setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow().getDecorView().getSystemUiVisibility());
										alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
							 }
						 }
						 else if(!f1_org.exists()&&!f1_backup.exists()&&isenter==false)
						 {
							 isenter=true;
							 
							 int message=DownloadData();	
							 if(message==1)
							 {
		
									AlertDialog.Builder builder = new Builder(E2WApp.mContext);
									builder.setTitle("发现您在["+BackupTime+"]保存过备份");
									builder.setMessage("提示！【覆盖本地】本地进度将会丢失且会关闭游戏");
									
									builder.setPositiveButton("覆盖本地", new OnClickListener() 
									{
										@Override
										public void onClick(DialogInterface dialog, int which) 
										{
											
											
											try 
											{	
													
												if(!f1_org.exists()&&f1_backup.exists())
												{			
													f1_org.createNewFile();
													
													if(f1_org.exists())
													{
														copyFileUsingFileStreams(f1_backup,f1_org);
														LogLocalServer("["+LogName+"][CheckBackUp] Copyed backup to current data.");
													}
													else
													{
														LogLocalServer("["+LogName+"][CheckBackUp] Create f1_org failed.");
													}
												}
												else
												{
													LogLocalServer("["+LogName+"][CheckBackUp] Copy backup to current data failed");
												}
											}
											catch (IOException e) 
											{
												// TODO Auto-generated catch block								
												LogLocalServer("["+LogName+"][CheckBackUp]restored your old data failed:"+e.toString());	
											}

											RestartApp();
										}
									});
									builder.setNegativeButton("继续游戏", new OnClickListener() 
									{
										@Override
										public void onClick(DialogInterface dialog, int which) 
										{
											LogLocalServer("["+LogName+"][CheckBackUp] Do nothing");
										}
									});
									AlertDialog alertDialog;
									alertDialog = builder.create();//AlertDialog.Builder.create(); 
									alertDialog.setCancelable(false);
									alertDialog.setCanceledOnTouchOutside(false);
									alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
									alertDialog.show();

									alertDialog.getWindow().getDecorView().setSystemUiVisibility(((Activity) E2WApp.mContext).getWindow().getDecorView().getSystemUiVisibility());
									alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
							 }
							 else if(message == 2)
							 {
								 if(f1_backup.exists())
									 f1_backup.delete();
								 LogLocalServer("["+LogName+"][CheckBackUp]Don't have backup on server, do nothing");
								
							 }
							 else if(message ==3)
							 {
								LogLocalServer("["+LogName+"][CheckBackUp]Server is unreadble, do nothing");	
							 }

						 }
						 else
						 {
							 //check internet
							 //if have remote backup, download and recommend replace. agree:replace and restart game, disagree:continue game, create backup.
							 //no backup on remote, continue game.
							 //E2WApp.LogLocalServer("["+LogName+"][CheckBackUp] Serching...Current Checking File:"+file.getAbsolutePath().toString());
							 
						 }
					 }
				   } 
			   }
			   else
			   {
				   LogLocalServer("["+LogName+"] Location:"+Location+"=null");
			   }
			   Looper.loop(); 
            }  
        }).start();  
	}
	public static void RestartApp()
	{
		((Activity) E2WApp.mContext).finish();
		android.os.Process.killProcess(android.os.Process.myPid());
	}
	private static Handler handler = new Handler()
	{
	  @Override
	  public void handleMessage(Message msg)
	  {
		  Toast.makeText(E2WApp.mContext, "覆盖失败", Toast.LENGTH_SHORT).show();
	  }
	};

	public static int UploadData()
	{
		if(isSteam==true)
		{
			return UploadStream();
		}
		else
		{
			return UploadFile();
		}
	}
	public static int DownloadData()
	{
		if(isSteam==true)
		{
			return DownloadStream();
		}
		else
		{
			return DownloadFile();
		}
	}
	public static int UploadFile()
	{		
				
	   	 FTPClient ftpClient = new FTPClient();  
	     FileInputStream fis = null;    
    
	     try
	     {
	    	 ftpClient.connect("101.201.101.114", 21);    
	         boolean loginResult = ftpClient.login("east2west", "gaoke123");    
	         int returnCode = ftpClient.getReplyCode();    
	         if (loginResult && FTPReply.isPositiveCompletion(returnCode)) 
	         { 
	        	  Log.e("E2W", "login succ");	
	             ftpClient.setBufferSize(1024);    
	             ftpClient.setControlEncoding("UTF-8");    
	             ftpClient.setFileType(FTP.BINARY_FILE_TYPE);  
	             ftpClient.enterLocalPassiveMode();//enterLocalPassiveMode();  
	             ftpClient.setFileTransferMode(FTP.STREAM_TRANSFER_MODE);
	             String fileNamePath = E2WApp.mContext.getFilesDir().getAbsolutePath()+"/"+DatFile+DatFormat; 
	             LogLocalServer("["+LogName+"][UploadData] fileNamePath="+fileNamePath);
	             String fileName ="/home/ftp/"+E2WApp.DeviceId+"/"+DatFile+DatFormat;
	             LogLocalServer("["+LogName+"][UploadData] fileName="+fileName);
				 if(! ftpClient.changeWorkingDirectory("/home/ftp/"+E2WApp.DeviceId + "/"))
				 {
						boolean flagIn = ftpClient.makeDirectory("/home/ftp/"+E2WApp.DeviceId + "/");
						if(flagIn)
						{
							fis = new FileInputStream(fileNamePath);
							boolean flag = ftpClient.storeFile(fileName, fis);

							if (flag) {
								return 1;
							} else {
								// 上传失败，服务器拒绝
								return 2;
							}
						}
						else
						{
							LogLocalServer("[" + LogName + "]No folder in server");
						}
				 }
				 else
				 {
					 	LogLocalServer("[" + LogName + "]Create folder and upload in server");
						fis = new FileInputStream(fileNamePath);
						boolean flag = ftpClient.storeFile(fileName, fis);

						if (flag) 
						{
							return 1;
						} 
						else 
						{
							// 上传失败，服务器拒绝
							return 2;
						}
				 }
		      } 
	          else 
	          {
				// 上传失败，服务器没有相应
				return 3;
	          }
			} 
	        catch (Exception e) 
	        {
				// 上传失败，服务器没有相应
	        	LogLocalServer("[" + LogName + "][UploadData] update error="+ e.toString());
				return 3;
			}
			return 3;
	     
	}

	public static int DownloadFile()
	{
		LogLocalServer("["+LogName+"] DownloadData");
	 	BufferedOutputStream buffOut = null;          
        FTPClient ftpClient = new FTPClient();    
        try
        {
        	 ftpClient.connect("101.201.101.114", 21);    
             boolean loginResult = ftpClient.login("east2west", "gaoke123");    
             int returnCode = ftpClient.getReplyCode();    
             if (loginResult && FTPReply.isPositiveCompletion(returnCode)) {// 如果登录成功   
                 ftpClient.setBufferSize(1024);    
                 ftpClient.setControlEncoding("UTF-8");  
                 ftpClient.enterLocalPassiveMode();    
                 ftpClient.setFileType(FTP.BINARY_FILE_TYPE);  
                 ftpClient.setFileTransferMode(FTP.STREAM_TRANSFER_MODE);
                 String filePath = E2WApp.mContext.getFilesDir().getAbsolutePath()+"/";
                 String SD_file=DatFile+"_backup"+DatFormat;
                 String FTP_file="/home/ftp/"+E2WApp.DeviceId+"/"+DatFile+DatFormat;
                 ftpClient.changeWorkingDirectory("/home/ftp/");
                 buffOut = new BufferedOutputStream(new FileOutputStream(filePath+SD_file),8*1024);  
                 boolean flag = ftpClient.retrieveFile(FTP_file, buffOut);
                 buffOut.flush();  
                 buffOut.close();     
                 ftpClient.logout();  
                 ftpClient.disconnect();
                 if(flag)
                 {
                	 LogLocalServer("retrieveFile suc");	
                	 
                	 File f=new File( E2WApp.mContext.getFilesDir().getAbsolutePath()+"/"+DatFile+"_backup"+DatFormat);
	            	 if(f.exists())
	            	 {
	            		 return 1;//接收成功
	            	 }
	            	 else
	            	 {
	            		 return 3;
	            	 }
                 }
                 else
                 {
                	 
                	 LogLocalServer("retrieveFile failed");			
	                 return 2; //接收失败，因为服务器没有
                 }
             } else {// 如果登录失败    
   
            	 LogLocalServer("download failed");
                 //服务器无法连接，不确定服务器有没有
                 return 3;
             }   
        }catch(Exception e)
        {
        	//服务器无法连接，不确定服务器有没有
        	LogLocalServer("["+LogName+"] e="+e.toString());
        	return 3;
        }
	}
	public static int UploadStream()
	{

		E2WApp.LogLocal("["+LogName+"][UploadStream]--------");	  
		try
		{
	        JSONObject resJsonObj = new JSONObject();  
	        resJsonObj.put("sessionid", sessionidLocal);  
	        resJsonObj.put("version","1.0");
	        resJsonObj.put("gameid", GameId);
	        resJsonObj.put("tag", DataFileName);
	        String encryData = Base64Utils.encode(FileToBytes(DataLocation+DatFile+"_backup"+DatFormat)); 
	        LogLocalServer("["+LogName+"][UploadStream] Backup byte.length="+FileToBytes(DataLocation+DatFile+"_backup"+DatFormat).length);
	        LogLocalServer("["+LogName+"][UploadStream] encryData.length()="+encryData.length());
	        resJsonObj.put("back_data",encryData);	        
	        LogLocalServer("[" + LogName + "][FileToBytes] back_data="+ FileToBytes(DataLocation+DatFile+"_backup"+DatFormat).length);
			List<NameValuePair> list = new ArrayList<NameValuePair>();	
		    list.add(new BasicNameValuePair("data",resJsonObj.toString())); 
		    String url = "http://"+ServerLocation+"/Auth/upload"; 
		    HttpPost Http_Post= new HttpPost(url);
		    HttpClient httpClient = new DefaultHttpClient();
		    Http_Post.addHeader("Client-Agent","EAST2WEST.COM");
		    Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
			HttpResponse response = httpClient.execute(Http_Post);			
			int code = response.getStatusLine().getStatusCode();
            if (code == 200) 
            {   
            	String strResult = EntityUtils.toString(response.getEntity());
            	LogLocalServer("["+LogName+"][UploadStream]recv register"+strResult);
            	JSONObject myJsonObject = new JSONObject(strResult);
            	String ret = myJsonObject.getString("ret");
            	String errMsg = myJsonObject.getString("msg");
            	String retData = myJsonObject.getString("data"); 
            	BackupTime = myJsonObject.getString("tm"); 
            	LogLocalServer("["+LogName+"][UploadStream] msg="+code+" ret="+ret +" BackupTime="+BackupTime);
            	ThreadCountCheckBackUp=99;
            	return 1;//上傳成功
            		                    
            } 
            else
            {
            	LogLocalServer("["+LogName+"][UploadStream] Internet unaccessable:code="+code);
            	return 2;//有網但是上傳失敗
            }
		}
		catch(Exception e)
		{
			
			LogLocalServer("["+LogName+"][UploadStream] error="+e.toString());
			return 3;//無網上傳失敗
		}
		
	}	
	public static int DownloadStream()
	{
		LogLocalServer("["+LogName+"][UploadStream]");	  
		try
		{
			JSONObject obj = new JSONObject();  
			obj.put("sessionid",sessionidLocal);   
			obj.put("version", "1.0");   
			obj.put("gameid", GameId);   
			obj.put("tag", DataFileName);   
			String JsonData = obj.toString();  
			Log.e("E2W","send register"+JsonData);  
			List<NameValuePair> list = new ArrayList<NameValuePair>();	
            list.add(new BasicNameValuePair("data", JsonData));   
            String url ="http://"+ServerLocation+"/Auth/upload";	 
            HttpPost Http_Post = new HttpPost("http://101.201.101.114:9000/Auth/getcloudstorage");
            HttpClient httpClient = new DefaultHttpClient();
            Http_Post.addHeader("Client-Agent", "EAST2WEST.COM"); 
            Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
			HttpResponse response = httpClient.execute(Http_Post); 
			int code = response.getStatusLine().getStatusCode();
            if (code == 200) 
            {   
            	String strResult = EntityUtils.toString(response.getEntity());
            	LogLocalServer("["+LogName+"][DownloadStream]recv register"+strResult);
            	JSONObject myJsonObject = new JSONObject(strResult);
            	String ret = myJsonObject.getString("ret");
            	String errMsg = myJsonObject.getString("msg");
            	String retData = myJsonObject.getString("data");   
            	String time_mark = myJsonObject.getString("tm");
            	BackupTime = time_mark; 
            	LogLocalServer("["+LogName+"][UploadStream] msg="+code+" ret="+ret +" BackupTime="+BackupTime);
        		writeFileData("BackupData",TimeToStick(time_mark)+"");
        		LogLocalServer("[" + LogName + "][FileToBytes] retData="+retData); 
        		LogLocalServer("[" + LogName + "][FileToBytes] retData.length()="+retData.length()); 
            	byte[] GetBtye= Base64Utils.decode(retData);   
            	LogLocalServer("[" + LogName + "][FileToBytes] GetBtye.length="+GetBtye.length); 
            	ByteToFile(GetBtye,DataLocation,DatFile+"_backup"+DatFormat);
            	LogLocalServer("["+LogName+"][UploadStream] msg="+code+" ret="+ret);
            	ThreadCountCheckBackUp=99;
            	return 1;//下載成功

            } 
            else
            {
            	LogLocalServer("["+LogName+"][UploadStream] Internet unaccessable:code="+code);
            	return 2;//有網下載失敗
            }

		}
		catch(Exception e)
		{
			
			LogLocalServer("["+LogName+"][UploadStream] error="+e.toString());
			return 3;//無網下載失敗
		}
		
		
	}
	public static void GetGuestIDByKeyWord(final String SaveName)
	{
		new Thread(new Runnable(){
            @Override  
            public void run() {
               Looper.prepare(); 
                
		        if(!E2WApp.DeviceId.equals(""))
		        {
		        	//E2WApp.LogLocalServer("["+LogName+"][GetGuestID]--------");	  
					try
					{
						PackageInfo packageInfo = E2WApp.mContext.getPackageManager().getPackageInfo(E2WApp.mContext.getPackageName(), PackageManager.GET_SIGNATURES);
						String digest = PackageUtils.getInstance().getSignatureDigest(packageInfo);  
			     		String packSign = digest.toUpperCase(); 

				        JSONObject resJsonObj = new JSONObject();  
				        resJsonObj.put("deviceid", SaveName);  
				        resJsonObj.put("appid",GameId);
				        resJsonObj.put("channel",SdkApplication.msg);
				        resJsonObj.put("sign",packSign);
				        LogLocalServer("["+LogName+"][GetGuestID] deviceid="+E2WApp.DeviceId);	
				        LogLocalServer("["+LogName+"][GetGuestID] appid="+QinConst.Restoreappid);	
				        LogLocalServer("["+LogName+"][GetGuestID] channel="+SdkApplication.msg);	
				       
				        String JsonData = resJsonObj.toString(); 				       
				        InputStream  inPublic = E2WApp.mContext.getResources().getAssets().open("rsa_public_key.pem");  
						PublicKey publicKey = RSAUtils.loadPublicKey(inPublic);  
				        byte[] encryptByte = RSAUtils.encryptData(JsonData.getBytes(), publicKey); 
				        LogLocalServer("["+LogName+"][GetGuestID] publicKey="+publicKey.toString());	
				        LogLocalServer("["+LogName+"][GetGuestID] channel="+SdkApplication.msg);	
				        LogLocalServer("["+LogName+"][GetGuestID] packSign="+packSign);	
				        LogLocalServer("["+LogName+"][GetGuestID] encryptByte="+encryptByte);
						String encryData = Base64Utils.encode(encryptByte); 
				        //Log.e("MAX","[" + LogName + "][FileToBytes] back_data="+ FileToBytes(DataLocation+DatFile+"_backup"+DatFormat).length);
						List<NameValuePair> list = new ArrayList<NameValuePair>();	
					    list.add(new BasicNameValuePair("data",encryData.toString()));
					    String url = "http://"+ServerLocation+"/Auth/guestauth";

					    HttpPost Http_Post= new HttpPost(url);
					    HttpClient httpClient = new DefaultHttpClient();
					    Http_Post.addHeader("Client-Agent","EAST2WEST.COM");
					    Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
						HttpResponse response = httpClient.execute(Http_Post);			
						int code = response.getStatusLine().getStatusCode();
						LogLocalServer("["+LogName+"][GetGuestID]response="+response);
						String strResult = EntityUtils.toString(response.getEntity());
						LogLocalServer("["+LogName+"][GetGuestID]recv strResult"+strResult);
						LogLocalServer("["+LogName+"][GetGuestID]code"+code);
	
			            if (code == 200) 
			            {   

			            	JSONObject myJsonObject = new JSONObject(strResult);
			            	LogLocalServer("["+LogName+"][GetGuestID]strResult="+strResult);
			            	String ret = myJsonObject.getString("ret");
			            	String errMsg = myJsonObject.getString("msg");
			            	String retData = myJsonObject.getString("data"); 
			            	LogLocalServer("["+LogName+"][GetGuestID]data="+retData);
			            	sessionidLocal=retData;
			            	writeFileData("sessionid",retData);
			            	LogLocalServer("["+LogName+"][GetGuestID] retData="+retData);
			            	ThreadCountGetGuestID=99;
			            		                    
			            } 
			            else
			            {
			            	LogLocalServer("["+LogName+"][GetGuestID] Internet unaccessable:code="+code);
			            	
			            }
					}
					catch(Exception e)
					{
						
						LogLocalServer("["+LogName+"][GetGuestID] error="+e.toString());
						
					}
		        }
		        else
		        {
		        	E2WApp.getDeviceId(E2WApp.mContext);
		        	LogLocalServer("["+LogName+"][GetGuestID] Already have sessionid="+sessionidLocal);
		        	ThreadCountGetGuestID=99;
		        }
		        Looper.loop(); 
            }  
        }).start();
		
	}
	public void Login()
	{
		ConfigurationSetting();
		LogLocalServer("["+LogName+"][Login]");
	    new Thread(new Runnable()
	    {
	      public void run()
	      {
	    	  try 
	    	  {
	    		GetGuestID();
	    		//LogLocalServer("["+LogName+"][BackUpThread] sessionidLocal="+sessionidLocal+" ThreadCountGetGuestID="+ThreadCountGetGuestID+" ThreadCountCheckBackUp="+ThreadCountCheckBackUp );			
	    	  }
	    	  catch (Exception e) 
	    	  {
				// TODO Auto-generated catch block
				e.printStackTrace();
	    	  }
	      }
	    }).start();
	}
	public void Load(String name)
	{
		LogLocalServer("["+LogName+"][Load]");
	    new Thread(new Runnable()
	    {
	      public void run()
	      {
	    	  try 
	    	  {
	    		  if(sessionidLocal!="")
	    		  {
	    			  DownLoadDataWithID();
	    		  }
	    	  }
	    	  catch (Exception e) 
	    	  {
				// TODO Auto-generated catch block
				e.printStackTrace();
	    	  }
	      }
	    }).start();
	}
	public void Save(final String name, final String data)
	{
		ConfigurationSetting();
	    new Thread(new Runnable()
	    {
	      public void run()
	      {
	    	  if(sessionidLocal!="")
    		  {
	    		  SaveDataWithID(name, data);
    		  }
	      }
	    }).start();
	}
	public static String DownLoadDataWithID()
	{
	
		LogLocalServer("["+LogName+"][Load]");	  
		try
		{
			JSONObject obj = new JSONObject();  
			obj.put("sessionid",sessionidLocal);   
			obj.put("version", "1.0");   
			obj.put("gameid", GameId);   
			obj.put("tag", DataFileName);   
			String JsonData = obj.toString();  
			LogLocalServer("send register"+JsonData);  
			List<NameValuePair> list = new ArrayList<NameValuePair>();	
            list.add(new BasicNameValuePair("data", JsonData));   
            String url ="http://"+ServerLocation+"/Auth/upload";	 
            HttpPost Http_Post = new HttpPost("http://101.201.101.114:9000/Auth/getcloudstorage");
            HttpClient httpClient = new DefaultHttpClient();
            Http_Post.addHeader("Client-Agent", "EAST2WEST.COM"); 
            Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
			HttpResponse response = httpClient.execute(Http_Post); 
			int code = response.getStatusLine().getStatusCode();
            if (code == 200) 
            {   
            	String strResult = EntityUtils.toString(response.getEntity());
            	LogLocalServer("["+LogName+"][Load]recv register"+strResult);
            	JSONObject myJsonObject = new JSONObject(strResult);
            	String ret = myJsonObject.getString("ret");
            	String errMsg = myJsonObject.getString("msg");
            	String retData = myJsonObject.getString("data");   
            	String time_mark = myJsonObject.getString("tm");
            	BackupTime = time_mark; 
            	LogLocalServer("["+LogName+"][Load] msg="+code+" ret="+ret +" BackupTime="+BackupTime);
        		writeFileData("BackupData",TimeToStick(time_mark)+"");
        		LogLocalServer("[" + LogName + "][FileToBytes] retData="+retData); 
        		LogLocalServer("[" + LogName + "][FileToBytes] retData.length()="+retData.length()); 
            	byte[] GetBtye= Base64Utils.decode(retData);   
            	LogLocalServer("[" + LogName + "][FileToBytes] GetBtye.length="+GetBtye.length); 
            	String returndata =ByteToString(GetBtye);
            	LogLocalServer("["+LogName+"][Load] msg="+code+" ret="+ret+" returndata="+returndata);
            	ThreadCountCheckBackUp=99;
            	InAppBase mInApp = new InAppBase();
            	mInApp.onLoadSuccessfulCallBack(returndata);
            	return returndata;//下載成功

            } 
            else
            {
            	InAppBase mInApp = new InAppBase();
            	mInApp.onLoadFailedCallBack(code+"");
            	LogLocalServer("["+LogName+"][Load] Internet unaccessable:code="+code);
            	return "";//有網下載失敗
            }

		}
		catch(Exception e)
		{
			InAppBase mInApp = new InAppBase();
        	mInApp.onLoadFailedCallBack(e.toString());
			LogLocalServer("["+LogName+"][Load] error="+e.toString());
			return "";//無網下載失敗
		}
		
	}
	public static int SaveDataWithID(String name, String data)
	{
		E2WApp.LogLocal("["+LogName+"][UploadStream]--------");	  
		try
		{
	        JSONObject resJsonObj = new JSONObject();  
	        resJsonObj.put("sessionid", sessionidLocal);  
	        resJsonObj.put("version","1.0");
	        resJsonObj.put("gameid", GameId);
	        resJsonObj.put("tag", DataFileName);
	        String encryData = Base64Utils.encode(data.getBytes()); 
	        LogLocalServer("["+LogName+"][Save] data="+data);
	        LogLocalServer("["+LogName+"][Save] Backup byte.length="+data.getBytes().length);
	        LogLocalServer("["+LogName+"][Save] encryData.length()="+encryData.length());
	        resJsonObj.put("back_data",encryData);	        
			List<NameValuePair> list = new ArrayList<NameValuePair>();	
		    list.add(new BasicNameValuePair("data",resJsonObj.toString())); 
		    String url = "http://"+ServerLocation+"/Auth/upload"; 
		    HttpPost Http_Post= new HttpPost(url);
		    HttpClient httpClient = new DefaultHttpClient();
		    Http_Post.addHeader("Client-Agent","EAST2WEST.COM");
		    Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
			HttpResponse response = httpClient.execute(Http_Post);			
			int code = response.getStatusLine().getStatusCode();
            if (code == 200) 
            {   
            	String strResult = EntityUtils.toString(response.getEntity());
            	LogLocalServer("["+LogName+"][UploadStream]recv register"+strResult);
            	JSONObject myJsonObject = new JSONObject(strResult);
            	String ret = myJsonObject.getString("ret");
            	String errMsg = myJsonObject.getString("msg");
            	String retData = myJsonObject.getString("data"); 
            	BackupTime = myJsonObject.getString("tm"); 
            	LogLocalServer("["+LogName+"][UploadStream] msg="+code+" ret="+ret +" BackupTime="+BackupTime);
            	ThreadCountCheckBackUp=99;
            	InAppBase mInApp = new InAppBase();
            	mInApp.onSaveSuccessfulCallBack(code+"");
            	return 0;//上傳成功
            		                    
            } 
            else
            {
            	InAppBase mInApp = new InAppBase();
            	mInApp.onSaveFailedCallBack(code+"");
            	LogLocalServer("["+LogName+"][UploadStream] Internet unaccessable:code="+code);
            	return 1;//有網但是上傳失敗
            }
		}
		catch(Exception e)
		{
			InAppBase mInApp = new InAppBase();
        	mInApp.onSaveFailedCallBack(e.toString());
			LogLocalServer("["+LogName+"][UploadStream] error="+e.toString());
			return 2;//無網上傳失敗
		}
	}
    public static long TimeToStick(String s) 
    {
    	String res="";
    	long ts=0;
    	try 
    	{        
	        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        Date date;
			date = simpleDateFormat.parse(s);
			 ts= date.getTime();
		    res = String.valueOf(ts);
		} 
        catch (ParseException e) 
    	{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return ts;
    }
    
    public static String StickToTime(String s)
    {
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long lt = new Long(s);
        Date date = new Date(lt);
        res = simpleDateFormat.format(date);
        return res;
    }
	public boolean UploadStreamByte(String key, byte[] data )
	{
		
		LogLocalServer("["+LogName+"][UploadStreamByte]--------");	  
		try
		{
	        JSONObject resJsonObj = new JSONObject();  
	        resJsonObj.put("sessionid", key);  
	        resJsonObj.put("version","1.0");
	        resJsonObj.put("gameid", GameId);
	        resJsonObj.put("tag", DataFileName);
	        String encryData = Base64Utils.encode(data); 
	        Log.e("MAX","["+LogName+"][UploadStreamByte] Backup byte.length="+FileToBytes(DataLocation+DatFile+"_backup"+DatFormat).length);
	        Log.e("MAX","["+LogName+"][UploadStreamByte] encryData.length()="+encryData.length());
	        resJsonObj.put("back_data",encryData);	        
	        LogLocalServer("[" + LogName + "][FileToBytes] back_data="+ FileToBytes(DataLocation+DatFile+"_backup"+DatFormat).length);
			List<NameValuePair> list = new ArrayList<NameValuePair>();	
		    list.add(new BasicNameValuePair("data",resJsonObj.toString())); 
		    String url = "http://"+ServerLocation+"/Auth/upload"; 
		    HttpPost Http_Post= new HttpPost(url);
		    HttpClient httpClient = new DefaultHttpClient();
		    Http_Post.addHeader("Client-Agent","EAST2WEST.COM");
		    Http_Post.setEntity(new UrlEncodedFormEntity(list,HTTP.UTF_8));
			HttpResponse response = httpClient.execute(Http_Post);			
			int code = response.getStatusLine().getStatusCode();
            if (code == 200) 
            {   
            	String strResult = EntityUtils.toString(response.getEntity());
            	LogLocalServer("["+LogName+"][UploadStreamByte]recv register"+strResult);
            	JSONObject myJsonObject = new JSONObject(strResult);
            	String ret = myJsonObject.getString("ret");
            	String errMsg = myJsonObject.getString("msg");
            	String retData = myJsonObject.getString("data"); 
            	LogLocalServer("["+LogName+"][UploadStreamByte] msg="+code+" ret="+ret);
            	return true;//上傳成功
            		                    
            } 
            else
            {
            	LogLocalServer("["+LogName+"][UploadStreamByte] Internet unaccessable:code="+code);
            	return false;//有網但是上傳失敗
            }
		}
		catch(Exception e)
		{
			
			LogLocalServer("["+LogName+"][UploadStream] error="+e.toString());
			return false;//無網上傳失敗
		}
	}
	public static byte[] FileToSteam(String FileLocation)
	{
		Log.e("MAX","[" + LogName + "][UploadData] FileLocation="+ FileLocation);
		try 
		{
			File inFile = new File(FileLocation); 
			//File outFile = new File(DataLocation+DatFile+"_backup_test"+DatFormat); 
			//最大的流为60Mb,当文件的容量大于60Mb的时候便分开流 
			final int MAX_BYTE =100;// 60000000; 
			long streamTotal = 0;  //接受流的容量 
			int streamNum = 0;  //流需要分开的数量 
			int leave = 0;  //文件剩下的字符数 
			byte[] inOutb;  //byte数组接受文件的数据 
			
			//创建流文件读入与写出类 
			FileInputStream inStream;
			
			inStream = new FileInputStream(inFile);
			 
			//FileOutputStream outStream = new FileOutputStream(outFile); 
			//通过available方法取得流的最大字符数 
			try 
			{
				streamTotal = inStream.available();
			} 
			catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			//取得流文件需要分开的数量 
			streamNum = (int)Math.floor(streamTotal/MAX_BYTE); 
			//分开文件之后,剩余的数量 
			leave = (int)streamTotal % MAX_BYTE; 
			byte[] inOutbAll= new byte[streamNum*MAX_BYTE+leave]; 
			//文件的容量大于60Mb时进入循环 
			if (streamNum > 0) 
			{ 
				for(int i = 0; i < streamNum; ++i)
				{ 
					inOutb = new byte[MAX_BYTE]; 							
					//读入流,保存在byte数组 			  
					try 
					{
						inStream.read(inOutb, 0, MAX_BYTE);
						
						System.arraycopy(inOutb,0,inOutbAll,MAX_BYTE*i,MAX_BYTE);

					} 
					catch (IOException e) 
					{
						// TODO Auto-generated catch block
						LogLocalServer("[" + LogName + "][ReadDataSteam] update error="+ e.toString());
					} 
				} 
			} 
			//写出剩下的流数据 
			inOutb = new byte[leave]; 
			try 
			{
				inStream.read(inOutb, 0, leave);
				System.arraycopy(inOutb,0,inOutbAll,MAX_BYTE*streamNum,leave);
				inStream.close(); 

			} 
			catch (IOException e) 
			{
				// TODO Auto-generated catch block
				LogLocalServer("[" + LogName + "][ReadDataSteam] update error="+ e.toString());
			} 
			LogLocalServer("[" + LogName + "][ReadDataSteam] inOutbAll.length="+inOutbAll.length);	
			return inOutbAll;
		} 
		catch (FileNotFoundException e) 
		{
			// TODO Auto-generated catch block
			LogLocalServer("[" + LogName + "][ReadDataSteam] inOutbAll.length="+ e.toString());
		}
		
		return null;
	}

	/** 
     * 获得指定文件的byte数组 
     */  
    private static byte[] FileToBytes(String filePath)
    {  
        byte[] buffer = null;  
        try 
        {  
        	
            File file = new File(filePath);  
            FileInputStream fis = new FileInputStream(file);              
            ByteArrayOutputStream bos = new ByteArrayOutputStream((int) file.length());                          
            byte[] b = new byte[(int) file.length()];  
            
            int n;  
            while ((n = fis.read(b)) != -1) 
            {  
                bos.write(b, 0, n);  
            }
            fis.close();
            bos.close();
            buffer = bos.toByteArray();
        } 
        catch (FileNotFoundException e) 
        {  
        	LogLocalServer("[" + LogName + "][FileToBytes] error1="+ e.toString());
        } 
        catch (IOException e) 
        {  
        	LogLocalServer("[" + LogName + "][FileToBytes] error2="+ e.toString()); 
        }
		return buffer;  
       
		
    }
    public static String ByteToString(byte[] bfile)
    {
    	String str = "";
    	try 
		{
			str = new String(bfile,"UTF-8");		
			LogLocalServer("[" + LogName + "][FileToBytes] str.length()="+str.length()); 
		} 
		catch (UnsupportedEncodingException e) 
		{
			// TODO Auto-generated catch block
			LogLocalServer("[" + LogName + "][FileToBytes] error1="+ e.toString()); 
			return "";
		}
        return str;  
    }
    public static void ByteToFile(byte[] bfile, String filePath,String fileName) 
    {  
    	LogLocalServer("[" + LogName + "][FileToBytes] bfile.length="+bfile.length); 
        BufferedOutputStream bos = null;  
        FileOutputStream fos = null;  
        File file = null;  
        try {  
            File dir = new File(filePath);  
            if(!dir.exists()&&dir.isDirectory()){//判断文件目录是否存在  
                dir.mkdirs();  
            }  
            file = new File(filePath+fileName);  
            fos = new FileOutputStream(file);  
            bos = new BufferedOutputStream(fos);  
            bos.write(bfile);  
           
            LogLocalServer("[" + LogName + "][FileToBytes] file.length()="+file.length()); 
        } 
        catch (Exception e) 
        {  
        	LogLocalServer("[" + LogName + "][ByteToFile] error1="+ e.toString());
        }
        finally 
        {  
            if (bos != null) 
            {  
                try 
                {  
                    bos.close();  
                } 
                catch (IOException e1) 
                {  
                	LogLocalServer("[" + LogName + "][ByteToFile] error2="+ e1.toString());
                }  
            }  
            if (fos != null)
            {  
                try
                {  
                    fos.close();  
                } 
                catch (IOException e1) 
                {  
                	LogLocalServer("[" + LogName + "][ByteToFile] error3="+ e1.toString());
                }  
            }  
        }  
    }
	private static void copyFileUsingFileStreams(File source, File dest)throws IOException 
	{    
		InputStream input = null;
		OutputStream output = null;
		try
		{
			input = new FileInputStream(source);
			output = new FileOutputStream(dest);
			byte[] buf = new byte[1024];
			int bytesRead;
			while ((bytesRead = input.read(buf)) > 0) 
			{
				output.write(buf, 0, bytesRead);
			}
		}
		catch(Exception ex)
		{
			LogLocalServer("[" + LogName + "] copyFileUsingFileStreams err=" + ex.toString());
		}
		finally 
		{
			if(input!=null)
			input.close();
			if(output!=null)
			output.close();
		}
	}

	public static void LogLocalServer(final String news)
	{		
		if(E2WApp.isLogOpen.equals("1")||SdkApplication.isAntLogOpen.equals("open"))
		{
			Log.e(LogName,news);
		}
	}



}
