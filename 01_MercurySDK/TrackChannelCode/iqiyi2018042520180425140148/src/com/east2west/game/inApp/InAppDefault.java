package com.east2west.game.inApp;

import com.east2west.game.inApp.InAppBase;
//comment
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.JSONException;
import org.json.JSONObject;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.iqiyi.iflex.iFlex;
import com.iqiyi.sdk.listener.LoginListener;
import com.iqiyi.sdk.listener.PayListener;
import com.iqiyi.sdk.platform.GamePlatform;
import com.iqiyi.sdk.platform.GamePlatformInitListener;
import com.iqiyi.sdk.platform.GameSDKResultCode;
import com.iqiyi.sdk.platform.GameUser;

//end
public class InAppDefault extends InAppBase {
	protected static final View image = null;
	// comment
	private InAppBase mBaseInApp = null;
	private String Channelname = "InAppDefault";
	protected int money;	
    private static GamePlatform platform;
    public static String UserName = "";
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,
		APPBaseInterface appinterface) {
		super.init(appContext, context, strAppId, strAppSecret, appinterface);
		E2WApp.LogLocal("[" + Channelname + "] strAppKey=" + strAppId);
		E2WApp.LogLocal("[" + Channelname + "] strAppSecret=" + strAppSecret);
		platform = GamePlatform.getInstance();
		E2WApp.LogLocal("[" + Channelname + "] strAppSecret=" + "-------------------");
        platform.initPlatform((Activity) mContext,strAppId, new GamePlatformInitListener() {
            @Override
            public void onSuccess() {                     
            	E2WApp.LogLocal("[" + Channelname + "] onSuccess=" +"onSuccess" );
                platform.addLoginListener(new LoginListener() {
                    @Override
                    public void loginResult(int arg0, GameUser arg1) {                  
                        if (GameSDKResultCode.SUCCESSLOGIN == arg0) {
                            platform.initSliderBar((Activity) mContext);                        
							Toast.makeText(mContext,
									"", Toast.LENGTH_LONG)
									.show();						
                            getUserInfo();       
                            UserName = arg1.name;
                        } else if (GameSDKResultCode.SUCCESSLOGOUT == arg0) {
                            Log.d("IAP", "Logout");
                        } else if (GameSDKResultCode.EXITGAME == arg0) {                        
                            System.exit(0);
                        }
                    }
                });
                E2WApp.LogLocal("[" + Channelname + "]   Hello=" + "onSuccess");
                platform.addPaymentListener(new PayListener() {
                    @Override
                    public void paymentResult(int arg0) {
                       
                        if (GameSDKResultCode.SUCCESSPAYMENT == arg0) {
                        	 E2WApp.LogLocal("[" + Channelname + "]   Hello=" +arg0 );
                        } else if (GameSDKResultCode.ERRORPAYMENT == arg0) {
                        	
                        } else if (GameSDKResultCode.CANCEL_BEFORE_ORDER_CREATED == arg0) {
                       
                        }
                    }
                });    
 
                platform.iqiyiUserLogin ((Activity) mContext);      
                E2WApp.LogLocal("[" + Channelname + "]   Hello=" + "iqiyiUserLogin");         
            
                platform.addLoginListener(new LoginListener(){
    				@Override	
    				public void loginResult(int resultCode, GameUser user){
    				if(resultCode == GameSDKResultCode.SUCCESSLOGIN && user != null){
    					 GamePlatform platform = GamePlatform.getInstance();
    		                platform.initSliderBar((Activity) mContext);
    					platform.initSliderBar((Activity) mContext);
    								System.out.println("uid : " + user.uid);
    								System.out.println("time : " + user.timestamp);
    								System.out.println("sign : " + user.sign);  
    								String  MD5 = md5(user.uid + "&" + user.timestamp + "&" + "74974bf301ff7e270d0e1e6860735f38");								
    								if(user.sign.equals(MD5)){	
    								Toast.makeText(mContext, "", Toast.LENGTH_SHORT).show();
    					}    				
    				}				
    			}
    		});	                             
                //Pay to monitor
                platform.addPaymentListener(new PayListener(){  		
                	@Override
                	public void paymentResult(int result){
                		if(result == GameSDKResultCode.SUCCESSPAYMENT){ 
                			E2WApp.LogLocal("[" + Channelname + "] hello"+"paymentResult");
                		System.out.println("充值成功");  					
                		Toast.makeText(mContext, "充值成功", Toast.LENGTH_SHORT).show();   					
                		onPurchaseSuccess(Channelname);		
                		}else{
                		System.out.println("充值失败");
                		Toast.makeText(mContext, "充值失败", Toast.LENGTH_SHORT).show();
                		E2WApp.LogLocal("[" + Channelname + "] hello"+"充值失败");
                		onPurchaseFailed(result+"");					
                	}
                	}	
                });	
            }
            @Override
            public void onFail(String msg) {
                
                System.out.println("" + msg);
                E2WApp.LogLocal("[" + Channelname + "]   Hello=" + msg);
            }
        });      
        
	}	

	 public String md5(String plainText) {
  	   try {
  	  
  	    MessageDigest md = MessageDigest.getInstance("MD5"); 
  	    
  	    md.update(plainText.getBytes());
  	   
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
  	    System.out.println("32位: " + buf.toString());// 32位的加密  	    
  	    System.out.println("16位: " + buf.toString().substring(8, 24));// 16位的加密，其实就是32位加密后的截取
  	    return buf.toString();
  	   } 
  	   catch (Exception e) {
  	    e.printStackTrace();
  	    return "";
  	   }
  	  }
	
	public void ApplicationInit(Application appcontext) {
		mAppContext = appcontext;
		E2WApp.LogLocal("[" + Channelname + "]->init:InAppBase.ApplicationInit=" + appcontext);	
		iFlex.init(appcontext);		
	}
	


	public void createRole(Context context) {
		GamePlatform platform = GamePlatform.getInstance();
		platform.createRole(mContext);		
	} 	
	@Override
	public void purchase(final String strProductId, final String strProductDescription, final float fPrice) {
		super.purchase(strProductId, strProductDescription, fPrice);
		purchaseProduct();	
	}	
	
	public void enterGame(Context context) {
		GamePlatform platform = GamePlatform.getInstance();
		 platform.enterGame(mContext);
	}
	
	public void back2Game(Activity activity) {
		GamePlatform platform = GamePlatform.getInstance();
		platform. back2Game ((Activity) mContext);

	}
	
	@Override
	public void onPause() {
	
	}	
	@Override
	public void onResume() {
		
	}

	@Override
	public void onDestroy() {
	}

	@Override
	public void ExitGame() {	
				platform.iqiyiUserLogout((Activity) mContext);
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
				mBaseInApp.ExitGame();
				
			}

	private void purchaseProduct() {
		E2WApp.LogLocal("[" + Channelname + "] CarriersPayLock=" + QinConst.CarriersPayLock);
		E2WApp.LogLocal("[" + Channelname + "] SDKPayLock=" + QinConst.SDKPayLock);

		if (QinConst.CarriersPayLock.equals("0") && QinConst.SDKPayLock.equals("0")) {

		} else if (QinConst.CarriersPayLock.equals("1") && QinConst.SDKPayLock.equals("0")) {
			CarriersPay();
		} else if (QinConst.CarriersPayLock.equals("0") && QinConst.SDKPayLock.equals("1")) {
			ChannelPay();	
			
		} else if (QinConst.CarriersPayLock.equals("1") && QinConst.SDKPayLock.equals("1")) {
			DoublePay();
		}
	}

	public void CarriersPay() {
		if (mBaseInApp != null && SdkApplication.iscarriersneed.equals("open")) {
			mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
		} else {
			E2WApp.LogLocal("[" + Channelname + "] MOBILE_SPLASH Closed...Can't Use Carrier's Pay");
		}
	}
	

	public void ChannelPay() {
		iqiyiPayment(); 
    
	}
	

 	public void iqiyiPayment() {
	GamePlatform platform = GamePlatform.getInstance();
	platform.iqiyiPayment((Activity) mContext, (int) QinConst.Qinpricefloat, UserName,
			E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.APPID);	
	

	E2WApp.LogLocal("[" + Channelname + "] hello"+E2WApp.DeviceId);
	E2WApp.LogLocal("[" + Channelname + "] hello"+E2WApp.SavePidName);
	E2WApp.LogLocal("[" + Channelname + "] hello"+InAppBase.OrderID);
	E2WApp.LogLocal("[" + Channelname + "] hello"+QinConst.APPID);

 	}
	
	public void DoublePay() {	
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
					onPurchaseFailed(Channelname);
					dialog.dismiss();
				}
			});
			builder.create().show();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getQIYIInfo () {
		GamePlatform platform = GamePlatform.getInstance();
		try {
					JSONObject json = platform.getQIYIInfo();
					if(json != null){
						String type = json.getString("type");  
						int level = json.getInt("level"); 
						Log.d("IAP", "VIP : " + type + ", levele : " + level);						
					}
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	}
	 /**
     * 获取用户的VIP等级
     */
    @SuppressWarnings("unused")
    private void getUserInfo() {
        try {
            JSONObject json = platform.getQIYIInfo();
            if (json != null) {
                String type = json.getString("type"); // 0：非会员， 1：会员
                int level = json.getInt("level"); // 会员等级
                String s = "province:" + json.getString("province") + ",city:"
                        + json.getString("city") + ",gender:"
                        + json.getString("gender") + ",icon:"
                        + json.getString("icon");
//				Toast.makeText(MainActivity.this, s, Toast.LENGTH_LONG).show();
                Log.d("IAP", "VIP : " + type + ", levele : " + level);
            }
        } catch (JSONException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
   
    }
// end
