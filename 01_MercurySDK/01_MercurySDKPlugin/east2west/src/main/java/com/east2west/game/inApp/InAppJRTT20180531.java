package com.east2west.game.inApp;
//commentimport com.east2west.game.inApp.InAppBase;
import com.ss.android.game.sdk.SsGameApi;
import com.ss.android.login.sdk.LogoutCallback;
import com.ss.android.login.sdk.StatusCallback;
import com.ss.android.login.sdk.activity.MobileActivity;
import com.ss.android.sdk.SdkType;
import com.ss.android.sdk.pay.PayRequestData;
import com.ss.android.sdk.pay.SSPayCallback;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
//endpublic class InAppJRTT20180531 extends InAppBase {

//comment    private InAppBase mBaseInApp = null;
    private String Channelname="InAppJRTT20180531";
    String clientId = "";
    String clientSecret = "";
    String payKey = "";

    @Override
    public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
    {
        super.init(appContext, context, strAppId, strAppSecret,appinterface);

        E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
        E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
        mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
        clientId = strAppId;
        AnalysisID(strAppSecret);
        E2WApp.LogLocal("["+Channelname+"] clientId="+clientId);
        E2WApp.LogLocal("["+Channelname+"] clientSecret="+clientSecret);
        E2WApp.LogLocal("["+Channelname+"] payKey="+payKey);

        final StatusCallback   mStatusCallback = new StatusCallback() {

            @Override
            public void onSuccess(String accessToken, long uid) {
                Toast.makeText(mContext, "登录成功", Toast.LENGTH_SHORT).show();
                Log.e("SS", "execute login successful accessToken =" + accessToken + " uid = " + uid);
            }
            @Override
            public void onException(Exception e) {
                Toast.makeText(mContext, "登陆发生异常", Toast.LENGTH_SHORT).show();
                Log.e("SS", "execute login exception", e);
            }
        };

        SsGameApi.tryLogin(mContext, MobileActivity.FLOW_LOGIN, mStatusCallback);


    }

    public static String[] convertStrToArray(String str,String symbol){
        String[] strArray = null;
        strArray = str.split(symbol);
        return strArray;
    }
    public void AnalysisID(String IDString)
    {
        try
        {
            String[] strArray=null;
            strArray = convertStrToArray(IDString,",");

            clientSecret=strArray[0].toString();
            payKey=strArray[1].toString();




        }
        catch(Exception E)
        {
            E2WApp.LogLocal("[AnalysisID]Error="+E);
        }
    }


    public void ApplicationInit(Application appcontext)
    {
        clientId=QinConst.APPID;
        AnalysisID(QinConst.APPKEY);
        E2WApp.LogLocal("["+Channelname+"] clientId="+clientId);
        E2WApp.LogLocal("["+Channelname+"] clientSecret="+clientSecret);
        E2WApp.LogLocal("["+Channelname+"] payKey="+payKey);
        mAppContext=appcontext;
        E2WApp.LogLocal("["+Channelname+"]->init:InAppBase.ApplicationInit="+appcontext);
        SsGameApi.init(appcontext, clientId, clientSecret, payKey, SdkType.NEWS);
    }
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
        SsGameApi.onPause(mContext);
    }

    @Override
    public void onResume()
    {
        E2WApp.LogLocal("["+Channelname+"] onResume");
        SsGameApi.onResume(mContext);
    }
    @Override
    public void onDestroy()
    {
        E2WApp.LogLocal("["+Channelname+"] onDestroy");
    }
    @Override
    public void onStop()
    {
        E2WApp.LogLocal("["+Channelname+"] onStop");
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
    public void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        E2WApp.LogLocal("["+Channelname+"] onActivityResult(int requestCode, int resultCode, Intent data)");
        Log.i("DemoActivity", "onActivityResult : resultCode = " + resultCode);
        super.onActivityResult(requestCode, resultCode, data);
        SsGameApi.onActivityResult(requestCode, resultCode, data);
    }
    @Override
    public void onNewIntent(Intent intent)
    {
        E2WApp.LogLocal("["+Channelname+"] onNewIntent(Intent intent) ");
    }



    @Override
    public void ExitGame()
    {

        E2WApp.LogLocal("["+Channelname+"] E2WApp.mContext="+E2WApp.mContext);
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
        int price=(int)mProductPrice*100;
        String date=getOutTradeNo();
        PayRequestData payData = new PayRequestData(mProductId+date, mProductDescription, price);
        SsGameApi.tryPay(mContext, payData, new SSPayCallback() {
            @Override
            public void onPayResult(int arg0, String arg1) {
                // TODO Auto-generated method stub
                Log.i("IAP", "onPayResult : sscode = " + arg0 + " result = " + arg1);
                if(arg0==0||arg0==3)
                {
                    onPurchaseSuccess(Channelname);
                }
                else{
                    onPurchaseFailed(Channelname);
                }
            }
        });
    }

    private  String getOutTradeNo() {
        SimpleDateFormat format = new SimpleDateFormat("MMddHHmmss", Locale.getDefault());
        Date date = new Date(0);
        String key = format.format(date);

        Random r = new Random();
        key = key + r.nextInt();
        key = key.substring(0, 15);
        return key;

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
                    onPurchaseFailed(Channelname);
                    dialog.dismiss();
                }
            });
            builder.create().show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//end}
