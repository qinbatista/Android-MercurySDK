package com.east2west.game.System;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;

import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.APPBaseInterface;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.util.Util;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

import java.io.File;


public class InAppWeChatShare extends InAppBase {
	private static final String APP_ID = "wxc09894676cfb0f15";
	private IWXAPI api;
	@Override
	public void init(Context appContext, Activity context, final String strAppId, final String strAppKey,APPBaseInterface appinterface)
	{		
		super.init(appContext, context, strAppId, strAppKey,appinterface);	
		//Log.d(Const.TAG,"InAppWeChatShare init");

		api = WXAPIFactory.createWXAPI(context, QinConst.WXShareID,true);
		api.registerApp(QinConst.WXShareID);
		E2WApp.LogLocal("[InAppWeChatShare] WeChatShare Init QinConst.WXShareID->"+QinConst.WXShareID);
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
	}
	
	@Override
	public void onResume()
	{
	}
	
	@Override
	public void onDestroy()
	{
	}

// Do not override for this SDK! Use base ExitGame logic instead.

	@Override
	public void ExitGame()
	{
		// Exit
		Builder builder = new Builder(mContext);
		builder.setMessage("确认退出吗?");
		builder.setTitle("提示");
		builder.setPositiveButton("确认", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				mContext.finish();
				android.os.Process.killProcess(android.os.Process.myPid());
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

	}
	public void SharePicture(String imagePath, boolean istimeline) {
		// TODO Auto-generated method stub
		
		//imagePath= "/storage/emulated/0/Android/data/com.invictus.giveitup2/files/screencapture.png";
		//Log.e("IAP","path="+imagePath);
		E2WApp.LogLocal("[InAppWeChatShare] SharePicture imagePath->"+imagePath);
		E2WApp.LogLocal("[InAppWeChatShare] SharePicture istimeline->"+istimeline);
		File file = new File(imagePath);
		if (!file.exists()) {
			//String tip = SendToWXActivity.this.getString(R.string.send_img_file_not_exist);
			//Toast.makeText(SendToWXActivity.this, tip + " path = " + path, Toast.LENGTH_LONG).show();
		}		
		com.tencent.mm.sdk.modelmsg.WXImageObject imgObj = new com.tencent.mm.sdk.modelmsg.WXImageObject();
		imgObj.setImagePath(imagePath);
		
		com.tencent.mm.sdk.modelmsg.WXMediaMessage msg = new com.tencent.mm.sdk.modelmsg.WXMediaMessage();
		msg.mediaObject = imgObj;
		
		Bitmap bmp = BitmapFactory.decodeFile(imagePath);
		Log.e("IAP", "bmp="+bmp);
		Bitmap thumbBmp = Bitmap.createScaledBitmap(bmp, 120, 120, true);		
		bmp.recycle();
		msg.thumbData = Util.bmpToByteArray(thumbBmp, true);
		
		 int imageSize = msg.thumbData.length / 1024;
         if (imageSize > 32) {
                 Log.e("IAP", "您分享的图片过大");                              
         }		
		com.tencent.mm.sdk.modelmsg.SendMessageToWX.Req req = new com.tencent.mm.sdk.modelmsg.SendMessageToWX.Req();
		req.transaction = buildTransaction("img");
		req.message = msg;
		if(istimeline==true)
			req.scene =  com.tencent.mm.sdk.modelmsg.SendMessageToWX.Req.WXSceneTimeline;
		else
			req.scene =  com.tencent.mm.sdk.modelmsg.SendMessageToWX.Req.WXSceneSession;
		api.sendReq(req);
		E2WApp.LogLocal("[InAppWeChatShare] Share Finished");
	}
	private String buildTransaction(final String type) {
		return (type == null) ? String.valueOf(System.currentTimeMillis()) : type + System.currentTimeMillis();
	}
}
