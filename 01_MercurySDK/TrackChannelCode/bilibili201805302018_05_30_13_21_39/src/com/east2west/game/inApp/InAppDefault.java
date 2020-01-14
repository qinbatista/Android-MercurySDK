package com.east2west.game.inApp;
import com.east2west.game.inApp.InAppBase;

//comment
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

import com.bsgamesdk.android.BSGameSdk;
import com.bsgamesdk.android.callbacklistener.AccountCallBackListener;
import com.bsgamesdk.android.callbacklistener.BSGameSdkError;
import com.bsgamesdk.android.callbacklistener.CallbackListener;
import com.bsgamesdk.android.callbacklistener.InitCallbackListener;
import com.bsgamesdk.android.callbacklistener.OrderCallbackListener;
import com.bsgamesdk.android.dc.DataCollect;
import com.bsgamesdk.android.utils.LogUtils;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
//end

import org.apache.http.util.EncodingUtils;


public class InAppDefault extends InAppBase {
	
	//comment
	private InAppBase mBaseInApp = null;
	private String Channelname="InAppDefault";
	public static final int OK = 1;
	
	private SharedPreferences preferences;
	private BSGameSdk gameSdk;
	private String merchant_id= "204";
	private String app_id= "803";
	private String server_id= "1027";
	private String app_key= "aa4ced7ed95f45d68982905eb65098bf";
	private String secret_key= "918de624d6b4483f803982061688832d";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppSecret,appinterface);	
		new Handler(E2WApp.mContext.getMainLooper()).post(new Runnable() {
			@Override
			public void run() {
						E2WApp.LogLocal("["+Channelname+"] 1strAppKey="+strAppId);
						E2WApp.LogLocal("["+Channelname+"] 1strAppSecret="+strAppSecret);
						
						mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
						
						BSGameSdk.initialize(true, mContext, merchant_id, app_id,
								server_id, app_key, new InitCallbackListener() {
				                    @Override
				                    public void onSuccess() {
				                       makeToast("initialize onSuccess" );
				                    }

				                    @Override
				                    public void onFailed() {
				                        makeToast("initialize onFailed" );
				                    }
				                });
						gameSdk = BSGameSdk.getInstance();
						
						gameSdk.setAccountListener(new AccountCallBackListener() {
							
							@Override
							public void onAccountInvalid() {
								Toast.makeText(mContext, "账号已登出", Toast.LENGTH_SHORT)
								.show();
							}
						});
						preferences = mContext.getSharedPreferences("demouser",Context.MODE_PRIVATE);
						
		
			  }
					});
	 	
		ShowTime();

	}
	
	public void ApplicationInit(Application appcontext)
	{
		mAppContext=appcontext;
		E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
	}
	
	private int count=0;
	  public void ShowTime()
	  {
		 
	    new Thread(new Runnable()
	    {
	      public void run()
	      {
	    	 
	    	  while(true)
	    	  {
		        try
		        {
		        	count++;
		            Thread.sleep(1000L);
		          	Log.e("IAP", "count="+count);
		          	if(count==6&&QinConst.Restoreappid.equals("Machinarium"))
		          	{
		          		gameSdk.login(new CallbackListener() {

		        			@Override
		        			public void onSuccess(Bundle arg0) {
		        				// 此处为操作成功时执行，返回值通过Bundle传回
		        				
		        				LogUtils.d("onSuccess");
		        				String uid = arg0.getString("uid");
		        				String userName = arg0.getString("username");
		        				String access_token = arg0.getString("access_token");
		        				String expire_times = arg0.getString("expire_times");
		        				String refresh_token = arg0.getString("refresh_token");
		        				String nickname = arg0.getString("nickname");

		        				E2WApp.LogLocal("["+Channelname+"]- uid="+uid);
		        				E2WApp.LogLocal("["+Channelname+"]- userName="+userName);
		        				E2WApp.LogLocal("["+Channelname+"]- access_token="+access_token);
		        				E2WApp.LogLocal("["+Channelname+"]- expire_times="+expire_times);
		        				E2WApp.LogLocal("["+Channelname+"]- refresh_token="+refresh_token);
		        				E2WApp.LogLocal("["+Channelname+"]- nickname="+nickname);
		        				preferences.edit().clear().commit();
		        				preferences.edit().putString("username", userName)
		        						.commit();
		        				preferences.edit().putString("uid", uid).commit();
		        				preferences.edit().putString("nickname", nickname).commit();
		        				makeToast("uid: " + uid + " nickname: " + nickname
		        						+ " access_token: " + access_token
		        						+ " expire_times: " + expire_times
		        						+ " refresh_token: " + refresh_token);
		        				
		        				if(readFileData("bilibili")==""||readFileData("bilibili")!=uid)
		        				{
		        					gameSdk.createRole(userName, uid);
		        					writeFileData("bilibili",uid);
		        				}
		        				
		        				gameSdk.notifyZone(server_id, "bilibili区", uid, userName);
		        				
		        				/*DataParamsModel dataParamsModel = new DataParamsModel();
				                dataParamsModel.setMerchant_id(merchant_id);
				                dataParamsModel.setApp_id(app_id);
				                dataParamsModel.setServer_id(server_id);
				                dataParamsModel.setUid(uid);
				        		DataCollect.getInstance().dCInit(mContext,dataParamsModel);*/
		        			}

		        			@Override
		        			public void onFailed(BSGameSdkError arg0) {
		        				// 此处为操作失败时执行，返回值为BSGameSdkError类型变量，其中包含ErrorCode和ErrorMessage
		        				LogUtils.d("onFailed\nErrorCode : "
		        						+ arg0.getErrorCode() + "\nErrorMessage : "
		        						+ arg0.getErrorMessage());
		        				makeToast("onFailed\nErrorCode : "
		        						+ arg0.getErrorCode() + "\nErrorMessage : "		     
		        						+ arg0.getErrorMessage());
		        			}

		        			@Override
		        			public void onError(BSGameSdkError arg0) {
		        				// 此处为操作异常时执行，返回值为BSGameSdkError类型变量，其中包含ErrorCode和ErrorMessage
		        				LogUtils.d("onError\nErrorCode : "
		        						+ arg0.getErrorCode() + "\nErrorMessage : "
		        						+ arg0.getErrorMessage());
		        				makeToast("onError\nErrorCode : " + arg0.getErrorCode()
		        						+ "\nErrorMessage : " + arg0.getErrorMessage());
		        			}
		        		});
		          		
		          		break;
		          	}
		          	else
		          	{
		          		gameSdk.login(new CallbackListener() {

		        			@Override
		        			public void onSuccess(Bundle arg0) {
		        				// 此处为操作成功时执行，返回值通过Bundle传回
		        				
		        				LogUtils.d("onSuccess");
		        				String uid = arg0.getString("uid");
		        				String userName = arg0.getString("username");
		        				String access_token = arg0.getString("access_token");
		        				String expire_times = arg0.getString("expire_times");
		        				String refresh_token = arg0.getString("refresh_token");
		        				String nickname = arg0.getString("nickname");
		        				
		        				E2WApp.LogLocal("["+Channelname+"]- uid="+uid);
		        				E2WApp.LogLocal("["+Channelname+"]- userName="+userName);
		        				E2WApp.LogLocal("["+Channelname+"]- access_token="+access_token);
		        				E2WApp.LogLocal("["+Channelname+"]- expire_times="+expire_times);
		        				E2WApp.LogLocal("["+Channelname+"]- refresh_token="+refresh_token);
		        				E2WApp.LogLocal("["+Channelname+"]- nickname="+nickname);
		        				
		        				preferences.edit().clear().commit();
		        				preferences.edit().putString("username", userName)
		        						.commit();
		        				preferences.edit().putString("uid", uid).commit();
		        				preferences.edit().putString("nickname", nickname).commit();
		        				makeToast("uid: " + uid + " nickname: " + nickname
		        						+ " access_token: " + access_token
		        						+ " expire_times: " + expire_times
		        						+ " refresh_token: " + refresh_token);
		        				
		        				if(readFileData("bilibili")==""||readFileData("bilibili")!=uid)
		        				{
		        					gameSdk.createRole(userName, uid);
		        					writeFileData("bilibili",uid);
		        				}
		        				
		        				gameSdk.notifyZone(server_id, "bilibili区", uid, userName);
		        				
		        				/*DataParamsModel dataParamsModel = new DataParamsModel();
				                dataParamsModel.setMerchant_id(merchant_id);
				                dataParamsModel.setApp_id(app_id);
				                dataParamsModel.setServer_id(server_id);
				                dataParamsModel.setUid(uid);
				        		DataCollect.getInstance().dCInit(mContext,dataParamsModel);*/
		        			}

		        			@Override
		        			public void onFailed(BSGameSdkError arg0) {
		        				// 此处为操作失败时执行，返回值为BSGameSdkError类型变量，其中包含ErrorCode和ErrorMessage
		        				LogUtils.d("onFailed\nErrorCode : "
		        						+ arg0.getErrorCode() + "\nErrorMessage : "
		        						+ arg0.getErrorMessage());
		        				makeToast("onFailed\nErrorCode : "
		        						+ arg0.getErrorCode() + "\nErrorMessage : "
		        						+ arg0.getErrorMessage());
		        			}

		        			@Override
		        			public void onError(BSGameSdkError arg0) {
		        				// 此处为操作异常时执行，返回值为BSGameSdkError类型变量，其中包含ErrorCode和ErrorMessage
		        				LogUtils.d("onError\nErrorCode : "
		        						+ arg0.getErrorCode() + "\nErrorMessage : "
		        						+ arg0.getErrorMessage());
		        				makeToast("onError\nErrorCode : " + arg0.getErrorCode()
		        						+ "\nErrorMessage : " + arg0.getErrorMessage());
		        			}
		        		});
		          		
		          		break;
		          	}
		        }
		        catch (InterruptedException e)
		        {
		          e.printStackTrace();
		        }
	    	  }
	      }
	    }).start();
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
	private Handler mHandler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);

			switch (msg.what) {
			case InAppDefault.OK:
				Toast.makeText(mContext, (String) msg.obj, Toast.LENGTH_SHORT)
						.show();
				
				break;
			}
		}
	}; 
	
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
	{
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();
	}
	@Override
	public void onPause()
	{		
		E2WApp.LogLocal("["+Channelname+"] onPause");
	}
	
	
	@Override
	public void onStart() 
	{
		E2WApp.LogLocal("["+Channelname+"] onStart");
	}
	@Override
	public void onRestart()
	{
		E2WApp.LogLocal("["+Channelname+"] onRestart");
		
	}
	@Override
	public void onResume()
	{
		   super.onResume();
		E2WApp.LogLocal("["+Channelname+"] onResume");
		 DataCollect.getInstance().appOnline();
	}
	
	@Override
	public void onDestroy()
	{
		 super.onDestroy();
		E2WApp.LogLocal("["+Channelname+"] onDestroy");
		DataCollect.getInstance().appDestory();
		
	}
	@Override
	public void onStop()
	{
		   super.onStop();
		E2WApp.LogLocal("["+Channelname+"] onStop");
		DataCollect.getInstance().appOffline();
	}
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) 
	{
		E2WApp.LogLocal("["+Channelname+"] onActivityResult(int requestCode, int resultCode, Intent data)");
	}
	@Override
	public void onNewIntent(Intent intent) 
	{
		E2WApp.LogLocal("["+Channelname+"] onNewIntent(Intent intent) ");
	}
	
	

	@Override
	public void ExitGame()
	{

		AlertDialog.Builder builder = new Builder(E2WApp.mContext);
		builder.setMessage("确认退出吗?");
		builder.setTitle("提示");
		builder.setPositiveButton("确认", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
  				mBaseInApp.ExitGame();
			}
		});
		builder.setNegativeButton("取消", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				dialog.dismiss();
			}
		});
		builder.create().show();
	}


	private void purchaseProduct()
	{
		E2WApp.LogLocal("["+Channelname+"] CarriersPayLock="+QinConst.CarriersPayLock);
		E2WApp.LogLocal("["+Channelname+"] SDKPayLock="+QinConst.SDKPayLock);
		
		if(QinConst.CarriersPayLock.equals("0")&&QinConst.SDKPayLock.equals("0"))
		{
			
		}
		else if(QinConst.CarriersPayLock.equals("1")&&QinConst.SDKPayLock.equals("0"))
		{
			 CarriersPay();
		}
		else if(QinConst.CarriersPayLock.equals("0")&&QinConst.SDKPayLock.equals("1"))
		{
			ChannelPay();
		}
		else if(QinConst.CarriersPayLock.equals("1")&&QinConst.SDKPayLock.equals("1"))
		{
			DoublePay();
		}
	}
	public void CarriersPay()
	{
		if (mBaseInApp != null&&SdkApplication.iscarriersneed.equals("open")) 
		{
			mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
		}
		else
		{
			E2WApp.LogLocal("["+Channelname+"] MOBILE_SPLASH Closed...Can't Use Carrier's Pay");
		}
	}

	public void ChannelPay()
	{
		
		String userName = preferences.getString("username", "test");
		String payUid = preferences.getString("uid", "88");
		String nickname = preferences.getString("nickname", "默认昵称");
		String out_trade_number = String.valueOf(System.currentTimeMillis());
		String notify_url = "";//不为空的话支付后异步通知到此地址，否则异步通知到正式地址，此字段可用于沙盒支付，正式上线前请置空
		String data = String.valueOf((int) (mProductPrice*100)) + String.valueOf((int) mProductPrice*100) + notify_url + out_trade_number;
		//秘钥为服务端secretKey
		String order_sign = sign(data,secret_key);
		
		E2WApp.LogLocal("["+Channelname+"] -uid="+payUid);
		E2WApp.LogLocal("["+Channelname+"] -data="+data);
		E2WApp.LogLocal("["+Channelname+"] -secret_key="+secret_key);
		E2WApp.LogLocal("["+Channelname+"] -userName="+userName);
		E2WApp.LogLocal("["+Channelname+"] -nickname="+nickname);
		E2WApp.LogLocal("["+Channelname+"] -server_id="+server_id);
		E2WApp.LogLocal("["+Channelname+"] -(int) (mProductPrice*100)="+(int) (mProductPrice*100));
		E2WApp.LogLocal("["+Channelname+"] -out_trade_number="+out_trade_number);
		E2WApp.LogLocal("["+Channelname+"] -mProductDescription="+mProductDescription);
		E2WApp.LogLocal("["+Channelname+"] -secret_key="+secret_key);
		E2WApp.LogLocal("["+Channelname+"] -mProductDescription="+mProductDescription);
		E2WApp.LogLocal("["+Channelname+"] -MessageToServer:"+E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID); 
		E2WApp.LogLocal("["+Channelname+"] -notify_url="+notify_url);
		E2WApp.LogLocal("["+Channelname+"]- order_sign="+order_sign);
		int uid = Integer.valueOf(payUid);
		
		// 支付操作
		gameSdk.pay(uid, userName, nickname, server_id, (int) (mProductPrice*100),
		/* 注意这里fee是以分为单位的，以元为单位换算时要先除以100.0 */(int) ((mProductPrice) * 100),
				out_trade_number, mProductDescription, mProductDescription,
				E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID,notify_url, order_sign, new OrderCallbackListener() {
					@Override
					public void onSuccess(String out_trade_no, String bs_trade_no) {
						// 此处为操作成功时执行，返回值通过Bundle传回
						LogUtils.d("onSuccess");
						makeToast("CPTradeNo: " + out_trade_no +
								  "\nBSTradeNo: " + bs_trade_no );
						onPurchaseSuccess("onSuccess");
					}

					@Override
					public void onFailed(String out_trade_no,
							BSGameSdkError arg0) {
						// 此处为操作失败时执行，返回值为BSGameSdkError类型变量，其中包含ErrorCode和ErrorMessage
						LogUtils.d("onFailed\n" + "payOutTradeNo: "
								+ out_trade_no + "\nErrorCode : "
								+ arg0.getErrorCode() + "\nErrorMessage : "
								+ arg0.getErrorMessage());
						makeToast("onFailed\n" + "payOutTradeNo: "
								+ out_trade_no + "\nErrorCode : "
								+ arg0.getErrorCode() + "\nErrorMessage : "
								+ arg0.getErrorMessage());
						onPurchaseFailed("arg0="+arg0);
					}

					@Override
					public void onError(String out_trade_no, BSGameSdkError arg0) {
						// 此处为操作异常时执行，返回值为BSGameSdkError类型变量，其中包含ErrorCode和ErrorMessage
						LogUtils.d("onError\n" + "payOutTradeNo: "
								+ out_trade_no + "\nErrorCode : "
								+ arg0.getErrorCode() + "\nErrorMessage : "
								+ arg0.getErrorMessage());
						makeToast("onError\n" + "payOutTradeNo: "
								+ out_trade_no + "\nErrorCode : "
								+ arg0.getErrorCode() + "\nErrorMessage : "
								+ arg0.getErrorMessage());
						onPurchaseFailed("arg0="+arg0);
					}
				});
	}
	private void makeToast(String result) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		msg.what = InAppDefault.OK;
		msg.obj = result;
		mHandler.sendMessage(msg);
	}
	
	
	public void DoublePay()
	{
		try {
			AlertDialog.Builder builder = new Builder(mContext);
			builder.setMessage("选择支付方式");
			builder.setTitle("提示");
			builder.setPositiveButton("小米支付", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					ChannelPay();
				}
			});
			builder.setNeutralButton("短信支付", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					CarriersPay();
				}
			});
			builder.setNegativeButton("取消", new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					dialog.dismiss();
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	  //-------MD5-------	
		private static final char HEX_DIGITS[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd',
				'e', 'f' };

		public static String toHexString(byte[] b) {
			// String to byte
			StringBuilder sb = new StringBuilder(b.length * 2);
			for (int i = 0; i < b.length; i++) {
				sb.append(HEX_DIGITS[(b[i] & 0xf0) >>> 4]);
				sb.append(HEX_DIGITS[b[i] & 0x0f]);
			}
			return sb.toString();
		}

		public final static String hash(String s) {
			try {
				// Create MD5 Hash
				MessageDigest digest = MessageDigest.getInstance("MD5");
				digest.update(s.getBytes());
				byte messageDigest[] = digest.digest();

				return toHexString(messageDigest);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			return "";
		}

		public final static String sign(String s, String key) {
			try {
				String text = s + key;
				// Create MD5 Hash
				MessageDigest digest = MessageDigest.getInstance("MD5");
				digest.update(text.getBytes());
				byte messageDigest[] = digest.digest();

				return toHexString(messageDigest);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			return "";
		}
		//-------END MD5-------	
	
	//end
}
