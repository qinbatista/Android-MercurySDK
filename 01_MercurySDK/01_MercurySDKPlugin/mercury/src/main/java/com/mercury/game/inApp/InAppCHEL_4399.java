package com.east2west.game.inApp;


import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
import com.east2west.game.inApp.InAppBase;

import android.Manifest;
//commentimport android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import cn.m4399.operate.OperateCenterConfig;
import cn.m4399.operate.SingleOperateCenter;
import cn.m4399.operate.SingleOperateCenter.SingleRechargeListener;
import cn.m4399.recharge.RechargeOrder;
//endpublic class InAppCHEL_4399 extends InAppBase {

//comment    private InAppBase mBaseInApp = null;
    SingleOperateCenter mOpeCenter;
    OperateCenterConfig mOpeConfig;
    private String Channelname="InAppCHEL_4399";
    private static final int REQUEST_CODE = 10002;
    SharedPreferences mSp;
    // SDK界面支持的四种方向配置
    public static final Integer[] mOrientations = new Integer[] {
            ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE, // 0，横屏
            ActivityInfo.SCREEN_ORIENTATION_PORTRAIT, // 1，竖屏
            ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE, // 6，横屏180度旋转
            ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT // 7，竖屏180度旋转
    };
    public static final String[] ORIENTATION = new String[] {
            "横屏",
            "竖屏",
            "横屏180度",
            "竖屏180度"
    };
    @Override
    public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
    {
        super.init(appContext, context, strAppId, strAppSecret,appinterface);
        E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
        E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
        PackageManager pm = mContext.getPackageManager();
        mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
        String appName = mContext.getApplicationInfo().loadLabel(pm).toString();
        E2WApp.LogLocal("["+Channelname+"] appName="+appName);
        mSp = context.getSharedPreferences("sdk_sp", context.MODE_PRIVATE);
        //初始化SDK
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !checkoutPermission(mContext)) {
            String[] permissions = { Manifest.permission.WRITE_EXTERNAL_STORAGE,
                    Manifest.permission.READ_EXTERNAL_STORAGE,
                    Manifest.permission.READ_PHONE_STATE,
                    Manifest.permission.CALL_PHONE,
                    Manifest.permission.READ_CONTACTS,
                    Manifest.permission.RECEIVE_SMS

            };
            initSDK(strAppId,appName,strAppSecret);
        } else
        {
            initSDK(strAppId,appName,strAppSecret);
        }
    }

    private void initSDK(String strAppId,String appName,String strAppSecret) {
        mOpeCenter = SingleOperateCenter.getInstance();
        int Orientation = Integer.parseInt(strAppSecret);
        E2WApp.LogLocal( "["+Channelname+"] getOrientation()="+getOrientation());
        new OperateCenterConfig.Builder(mContext)
                .setDebugEnabled(false)  //发布游戏时，要设为false
                .setOrientation(Orientation) //设置SDK界面方向，应与游戏设置一直
                .setSupportExcess(true) //设置是否支持超出金额充值
                .setGameKey(strAppId) 	//换成实际游戏的game key
                .setGameName(appName)	//换成实际游戏的名字，原则上与游戏名字匹配
                .build();

        SingleRechargeListener singleRechargeListener = new SingleRechargeListener() {


            @Override
            public void onRechargeFinished(boolean success, String msg) {
                E2WApp.LogLocal( "Pay: [" + success + ", " + msg + "]");
                onPurchaseFailed(Channelname);
            }


            @Override
            public boolean notifyDeliverGoods(boolean shouldDeliver, RechargeOrder o) {
                if (shouldDeliver) {
                    E2WApp.LogLocal("单机充值发放物品, [" + o + "]");
                    E2WApp.LogLocal("您花费 " + o.getJe() + "元， 购买了 " + o.getGoods());
                    onPurchaseSuccess(Channelname);
                    return true;
                } else {
                    onPurchaseFailed(Channelname);
                    E2WApp.LogLocal("单机充值查询到的订单状态不正常，建议不要发放物品");
                    return false;
                }
            }
        };
        mOpeCenter.init(mContext, singleRechargeListener);
    }

    public boolean checkoutPermission(final Activity activity) {
        return true;
    }
    private int getOrientation() {
        int orientation = mSp.getInt("orientation", ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        return orientation;
    }
    @Override
    public void purchase(final String strProductId, final String strProductDescription, final float fPrice)
    {
        super.purchase(strProductId, strProductDescription, fPrice);
        purchaseProduct();
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
        E2WApp.LogLocal("["+Channelname+"] MOBILE_SPLASH Closed...Can't Use Carrier's ChannelPay");
        new Thread(new Runnable()
        {

            public void run()
            {
                E2WApp.LogLocal("["+Channelname+"] MOBILE_SPLASH Closed...Can't Use Carrier's run");
                mOpeCenter.recharge(mContext, (int)mProductPrice+"",mProductDescription,E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID+","+QinConst.exchangeID+","+SdkApplication.msg);
            }
        }).start();
    }
    public void DoublePay()
    {
        try {
            AlertDialog.Builder builder = new Builder(mContext);
            builder.setMessage("选择支付方式");
            builder.setTitle("提示");
            builder.setPositiveButton("4399支付", new OnClickListener() {
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
    }



    @Override
    public void ExitGame()
    {

        AlertDialog.Builder builder = new Builder((Activity) E2WApp.mContext);
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

//end}
