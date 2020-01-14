package com.east2west.game.inApp;
import java.util.HashMap;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.SdkApplication;
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
import android.widget.Toast;
import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.MzPayParams;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.offline.core.MzGameCenterPlatform;
import com.meizu.gamesdk.utils.MD5Utils;
//endpublic class InAppMZ extends InAppBase {

//comment    public static MzPayListener mzListener;
    public String id="";
    public String key="";
    public String secret="";
    private InAppBase mBaseInApp = null;
    private String Channelname="InAppMZ";
    @Override
    public void init(Context appContext, Activity context, final String strAppId, final String strAppSecret,APPBaseInterface appinterface)
    {
        super.init(appContext, context, strAppId, strAppSecret,appinterface);

        E2WApp.LogLocal("["+Channelname+"] strAppKey="+strAppId);
        E2WApp.LogLocal("["+Channelname+"] strAppSecret="+strAppSecret);
        mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
        id=strAppId;
        String[] strArray=null;
        strArray = convertStrToArray(strAppSecret,",");
        if(strArray[0]!=null&&strArray.length>=1)
        {
            key=strArray[0];
            E2WApp.LogLocal("["+Channelname+"] strAppSecret->key="+key);
        }
        if(strArray[1]!=null&&strArray.length>=2)
        {
            secret=strArray[1];
            E2WApp.LogLocal("["+Channelname+"] strAppSecret->secret="+secret);
        }



        mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
        MzGameCenterPlatform.init((Application) mContext.getApplicationContext(), strAppId, key);

        mzListener = new MzPayListener() {
            @Override
            public void onPayResult(int arg0, Bundle arg1, String arg2) {
                // TODO Auto-generated method stub
                if (arg0 == PayResultCode.PAY_SUCCESS)
                {
                    Toast.makeText(mContext, "支付成功", 5000).show();
                    onPurchaseSuccess(Channelname);
                }
                else if (arg0 == PayResultCode.PAY_USE_SMS)
                {
                    Toast.makeText(mContext, "短信支付", 5000).show();
                }
                else if (arg0 == PayResultCode.PAY_ERROR_CANCEL)
                {
                    Toast.makeText(mContext, "用户取消", 5000).show();
                    onPurchaseCanceled(Channelname);
                }
                else if (arg0 == PayResultCode.PAY_ERROR_CODE_DUPLICATE_PAY)
                {
                    Toast.makeText(mContext, "重复支付", 5000).show();
                }
                else if (arg0 == PayResultCode.PAY_ERROR_GAME_VERIFY_ERROR)
                {
                    Toast.makeText(mContext, "支付错误", 5000).show();
                    onPurchaseFailed(Channelname);
                }
                else
                {
                    Toast.makeText(mContext, "支付失败:"+arg0, 5000).show();
                    onPurchaseFailed(Channelname);
                }

            }
        };

        //MzGameCenterPlatform.orderQueryConfirm(mContext, mzListener);
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

    public void MeizuPay()
    {
        String cpUserInfo = E2WApp.DeviceId+","+E2WApp.SavePidName+","+InAppBase.OrderID;
        String totalPrice = String.valueOf(mProductPrice);
        String orderId = "" +InAppBase.OrderID ;
        String productId = mProductId;
        String productSubject = mProductDescription;
        String productBody = "";
        int payType = 0;
        long createTiem = System.currentTimeMillis();
        StringBuilder builder = new StringBuilder();
        final String equalStr = "=";
        final String andStr = "&";
        builder.append("app_id" + equalStr + id + andStr);
        builder.append("cp_order_id" + equalStr + orderId + andStr);
        builder.append("create_time" + equalStr + createTiem + andStr);
        builder.append("pay_type" + equalStr + payType + andStr);
        builder.append("product_body" + equalStr + productBody + andStr);
        builder.append("product_id" + equalStr + productId + andStr);
        builder.append("product_subject" + equalStr + productSubject + andStr);
        builder.append("total_price" + equalStr + totalPrice + andStr);
        builder.append("user_info" + equalStr + cpUserInfo);
        builder.append(":" + secret);

        String sign = MD5Utils.sign(builder.toString());

        String signType = "md5";
        Bundle payInfo = new Bundle();
        // appid
        payInfo.putString(MzPayParams.ORDER_KEY_ORDER_APPID, id);
        // cp自定义信息
        payInfo.putString(MzPayParams.ORDER_KEY_CP_INFO, cpUserInfo);
        // 金额
        payInfo.putString(MzPayParams.ORDER_KEY_AMOUNT, totalPrice);
        // 订单id
        payInfo.putString(MzPayParams.ORDER_KEY_ORDER_ID, orderId);
        // 产品id
        payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_BODY, "");
        // 产品id
        payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_ID, productId);
        // 产品描述
        payInfo.putString(MzPayParams.ORDER_KEY_PRODUCT_SUBJECT, productSubject);
        //支付方式，默认值：”0”（即定额支付）
        payInfo.putInt(MzPayParams.ORDER_KEY_PAY_TYPE, payType);
        // 签名
        payInfo.putString(MzPayParams.ORDER_KEY_SIGN, sign);
        // 签名类型
        payInfo.putString(MzPayParams.ORDER_KEY_SIGN_TYPE, signType);
        // 是否关闭短信支付,默认是打开状态
        payInfo.putBoolean(MzPayParams.ORDER_KEY_DISABLE_PAY_TYPE_SMS, true);
        payInfo.putLong(MzPayParams.ORDER_KEY_CREATE_TIME,createTiem);
        // 优先支付渠道  0:支付宝  1:微信  2:银联  3:短信
        payInfo.putInt(MzPayParams.ORDER_KEY_PAY_CHANNEL, 0);
        // TODO 调用支付接口。注意 , 该方法必须在应用的主线程中调用。
        MzGameCenterPlatform.singlePay(mContext, payInfo,mzListener );
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
        E2WApp.LogLocal("[E2WApp] ExitGame mContext->"+E2WApp.mContext);
        AlertDialog.Builder builder = new Builder(E2WApp.mContext);
        builder.setMessage("确认退出吗?");
        builder.setTitle("提示");
        builder.setPositiveButton("确认", new OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                E2WApp.LogLocal("[E2WApp] ExitGame E2WApp.activityforappbase.getBaseInApp()->"+E2WApp.activityforappbase.getBaseInApp());
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
        MeizuPay();
    }
    public void DoublePay()
    {
        try {
            AlertDialog.Builder builder = new Builder(mContext);
            builder.setMessage("选择支付方式");
            builder.setTitle("提示");
            builder.setPositiveButton("华为支付", new OnClickListener() {
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
    public void swtichuser() {
        // TODO Auto-generated method stub
    }
//end}
