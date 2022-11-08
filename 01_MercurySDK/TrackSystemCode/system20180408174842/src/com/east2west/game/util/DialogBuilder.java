package com.east2west.game.util;

import org.json.JSONException;
import org.json.JSONObject;

import com.duoku.platform.single.DKPlatform;
import com.duoku.platform.single.DkErrorCode;
import com.duoku.platform.single.DkProtocolKeys;
import com.duoku.platform.single.callback.IDKSDKCallBack;
import com.duoku.platform.single.item.DKOrderPayChannelData;
import com.duoku.platform.single.item.DKOrderStatus;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.widget.Toast;

public class DialogBuilder {
	public static void showGetOrderidDialog(final Context context,final String orerId){
		AlertDialog.Builder builder = new AlertDialog.Builder(context);
		AlertDialog dialog = 
		builder.setCancelable(false).setTitle("��ȡ������").setMessage(orerId).setPositiveButton(
				"�ر�", new OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						dialog.dismiss();
					}
				}).setNegativeButton("��ѯ����״̬", new OnClickListener(){
					@Override
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						DKPlatform.getInstance().invokeQueryDKOrderStatus(context, orerId, DKOrderPayChannelData.DK_ORDER_CHANNEL_YEEPAY.getValue(),new IDKSDKCallBack() {
							@Override
							public void onResponse(String paramString) {
								// TODO Auto-generated method stub
								try {
									JSONObject jsonObject = new JSONObject(paramString);
									// ���صĲ���״̬��
									int mFunctionCode = jsonObject.getInt(DkProtocolKeys.FUNCTION_CODE);
									if(DkErrorCode.BDG_QUERY_ORDER_STATUS_SUCCESS == mFunctionCode){
										StringBuilder sb = new StringBuilder("��ѯ�ɹ�\n");
										int orderStatus = jsonObject.getInt(DkProtocolKeys.BD_ORDER_STATUS);
										if(DKOrderStatus.DK_ORDER_STATUS_DEALING.getValue() == orderStatus){
											sb.append("����������");
										}else
										if(DKOrderStatus.DK_ORDER_STATUS_FAIL.getValue() == orderStatus){
											sb.append("��������ʧ��");
										}else
										if(DKOrderStatus.DK_ORDER_STATUS_SMS_SEND.getValue() == orderStatus){
											sb.append("�����ѷ���");
										}else
										if(DKOrderStatus.DK_ORDER_STATUS_SUCCESS.getValue() == orderStatus){
											sb.append("�������׳ɹ�");
										}else
										if(DKOrderStatus.DK_ORDER_STATUS_UNKNOWN.getValue() == orderStatus){
											sb.append("����״̬δ֪");
										}
										Toast.makeText(context,sb.toString(),Toast.LENGTH_LONG).show();
									}else
									if(DkErrorCode.BDG_QUERY_ORDER_STATUS_FAIL == mFunctionCode){
										if(!isNetworkConnected(context)){
											Toast.makeText(context,"����������",Toast.LENGTH_LONG).show();
										}else{
											Toast.makeText(context,"��ѯʧ��",Toast.LENGTH_LONG).show();
										}
									}
								} catch (JSONException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						});
					}
				}).create();
		dialog.show();
	}
	
	public static boolean isNetworkConnected(Context context)
	{
		ConnectivityManager connectivitymanager = (ConnectivityManager)context.getApplicationContext().getSystemService("connectivity");
		NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
		if (networkinfo != null)
			return networkinfo.isConnectedOrConnecting();
		else
			return false;
	}
}
