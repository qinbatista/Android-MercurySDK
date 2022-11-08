package com.east2west.game.inApp;
import java.util.HashMap;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.LauncherActivity;

//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;
import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.MzPayParams;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.offline.core.MzGameCenterPlatform;
import com.meizu.gamesdk.utils.MD5Utils;
import com.muzhiwan.sdk.core.MzwSdkController;
import com.muzhiwan.sdk.core.callback.MzwInitCallback;
import com.muzhiwan.sdk.core.callback.MzwLoignCallback;
import com.muzhiwan.sdk.core.callback.MzwPayCallback;
import com.muzhiwan.sdk.service.MzwOrder;
//endpublic class InAppMZW extends InAppBase {

//comment    public static MzPayListener mzListener;
    public String id="";
    public String key="";
    public String secret="";
    private InAppBase mBaseInApp = null;
    private Handler mHandler;
    private MzwOrder order;
    private boolean isInit = false;
    private boolean isLogin = false;
    private static final int MSG_INIT = 0X01;
    private static final int MSG_LOGIN = 0X02;
    private String Channelname="InAppMZW";

    public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,APPBaseInterface appinterface)
    {
        super.init(appContext, context, strAppId, strAppKey,appinterface);
        E2WApp.LogLocal("["+Channelname+"] strAppSecret->"+strAppId);
        E2WApp.LogLocal("["+Channelname+"] strAppSecret->"+strAppKey);
        mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
        id=strAppId;
        mHandler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                switch (msg.what) {
                    case MSG_INIT:
                        if (msg.arg1 == 0) {
                            isInit = false;
                            showToast("SDK初始化失败，请退出重试");
                        } else {
                            isInit = true;
                            showToast("SDK初始化成功");
                            MzwSdkController.getInstance().doLogin(new MzwLoignCallback() {
                                @Override
                                public void onResult(int code, String msg) {
                                    Message message = new Message();
                                    message.what = MSG_LOGIN;
                                    message.arg1 = code;
                                    mHandler.handleMessage(message);
                                }
                            });
                        }
                        break;
                    case MSG_LOGIN:
                        if (msg.arg1 == 1) {
                            isLogin = true;
                            showToast("登录成功");
                            onLoginSuccess("");
                        } else if (msg.arg1 == 6) {
                            isLogin = false;
                            login();
                        } else if (msg.arg1 == 4) {
                            isLogin = false;
                            onLoginCancel("");
                            showToast("取消登录");
                        } else {
                            isLogin = false;
                            onLoginFailed("");
                            showToast("登录失败");
                        }
                        break;
                }
            }
        };
        E2WApp.LogLocal("["+Channelname+"] Log->1");
        MzwSdkController.getInstance().init(context, MzwSdkController.ORIENTATION_HORIZONTAL, new MzwInitCallback() {

            @Override
            public void onResult(int code, String msg) {
                if (code == 1) {
                    Message message = new Message();
                    message.what = MSG_INIT;
                    message.arg1 = code;
                    mHandler.handleMessage(message);
                }
            }
        });
        E2WApp.LogLocal("["+Channelname+"] Log->2");
    }
    public void login() {
        E2WApp.LogLocal("["+Channelname+"] Log->3");
        MzwSdkController.getInstance().doLogin(new MzwLoignCallback() {
            @Override
            public void onResult(int code, String msg) {
                Message message = new Message();
                message.what = MSG_LOGIN;
                message.arg1 = code;
                mHandler.handleMessage(message);
            }
        });
        E2WApp.LogLocal("["+Channelname+"] Log->4");
    }
    public void showToast(String msg) {
        Toast.makeText(mContext, msg, Toast.LENGTH_LONG).show();
    }
    public static String[] convertStrToArray(String str,String symbol){
        String[] strArray = null;
        strArray = str.split(symbol); //拆分字符为symbol 可以是 "," ,然后把结果交给数组strArray
        return strArray;
    }

    @Override
    public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
    {
        super.purchase(strProductId, strProductDescription, fPrice);
        purchaseProduct();

    }
    public void MZWPay()
    {
        order = new MzwOrder();
        order.setMoney(mProductPrice);
        order.setProductname(mProductDescription);
        order.setProductdesc(mProductDescription);
        order.setExtern("xxxxxx");
        MzwSdkController.getInstance().doPay(order, new MzwPayCallback() {
            @Override
            public void onResult(int code, MzwOrder order) {
                if(code==5)
                {
                    onPurchaseSuccess(Channelname);
                }
                else
                {
                    onPurchaseFailed(Channelname);
                }

            }
        });
    }
    @Override
    public void onPause()
    {
    }

    @Override
    public void onResume()
    {
    }

    @Override
    public void onDestroy()
    {
        MzwSdkController.getInstance().destory();
    }



    @Override
    public void ExitGame()
    {

        AlertDialog.Builder builder = new Builder(mContext,AlertDialog.THEME_HOLO_DARK);

        builder.setMessage("确认退出吗?");
        builder.setTitle("提示");
        builder.setNeutralButton("登出账号", new android.content.DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                MzwSdkController.getInstance().doLogout();

            }
        });

        builder.setPositiveButton("取消", new android.content.DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });

        builder.setNegativeButton("退出游戏", new android.content.DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {

                mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
                mBaseInApp.ExitGame();
            }
        });

        AlertDialog alertDialog = builder.create();//AlertDialog.Builder.create();
        alertDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
        alertDialog.show();
        alertDialog.getWindow().getDecorView().setSystemUiVisibility(mContext.getWindow().getDecorView().getSystemUiVisibility());
        alertDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
    }


    private void purchaseProduct()
    {
        E2WApp.LogLocal("style="+QinConst.CarriersPayLock+QinConst.SDKPayLock);
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
        if (mBaseInApp != null) {
            mBaseInApp.purchase(QinConst.CarriersID, mProductDescription, mProductPrice);
        }
    }
    public void ChannelPay()
    {
        MZWPay();
    }
    public void DoublePay()
    {
        try {
            AlertDialog.Builder builder = new Builder(mContext,AlertDialog.THEME_HOLO_DARK);
            builder.setMessage("选择支付方式");
            builder.setTitle("提示");
            builder.setPositiveButton("拇指玩支付", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    ChannelPay();
                }
            });
            builder.setNeutralButton("短信支付", new android.content.DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    CarriersPay();
                }
            });
            builder.setNegativeButton("取消", new android.content.DialogInterface.OnClickListener() {
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
    public void swtichuser() {
        // TODO Auto-generated method stub
        E2WApp.LogLocal("MZ_swtichuser");
    }
//end}
