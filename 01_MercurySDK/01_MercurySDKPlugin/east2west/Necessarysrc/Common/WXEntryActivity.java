package com.east2west.game.System;
import com.east2west.game.E2WApp;
import com.east2west.game.QinConst;
import com.east2west.game.inApp.InAppEAST2WEST;
import com.tencent.mm.sdk.constants.ConstantsAPI;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.ShowMessageFromWX;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;

import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.unity3d.player.UnityPlayer;
import com.unity3d.player.UnityPlayerActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class WXEntryActivity extends Activity implements IWXAPIEventHandler{
	private IWXAPI api;
	private static final String APP_ID = "wxc09894676cfb0f15";
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//setContentView(R.layout.entry);
		api = WXAPIFactory.createWXAPI(this, QinConst.WXShareID, false);
		api.registerApp(QinConst.WXShareID);
		api.handleIntent(getIntent(), this);
		Log.e("IAP","[WXPayEntryActivity] onCreate->"+QinConst.WXShareID);
		//finish();
	}

	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);

		setIntent(intent);
		api.handleIntent(intent, this);
		Log.e("IAP","onNewIntent");
	}


	public void onReq(BaseReq req) {
		switch (req.getType()) {
			case ConstantsAPI.COMMAND_GETMESSAGE_FROM_WX:
				//goToGetMsg();
				break;
			case ConstantsAPI.COMMAND_SHOWMESSAGE_FROM_WX:
				break;
			default:
				break;

		}
	}


	public void onResp(BaseResp resp) {
		int result = 0;

		switch (resp.errCode) {
			case BaseResp.ErrCode.ERR_OK:
				UnityPlayer.UnitySendMessage("DontDestroy_Qin","ShareResult","0");
				finish();
				break;
			case BaseResp.ErrCode.ERR_USER_CANCEL:
				UnityPlayer.UnitySendMessage("DontDestroy_Qin","ShareResult","1");
				finish();
				break;
			case BaseResp.ErrCode.ERR_AUTH_DENIED:
				result = 3;//R.string.errcode_deny;
				UnityPlayer.UnitySendMessage("DontDestroy_Qin","ShareResult","2");
				finish();
				break;
			default:
				result = 4;//R.string.errcode_unknown;
				UnityPlayer.UnitySendMessage("DontDestroy_Qin","ShareResult","3");
				finish();
				break;
		}

		//Toast.makeText(this, result, Toast.LENGTH_LONG).show();
	}

//	private void goToGetMsg() {
//		Intent intent = new Intent(this, GetFromWXActivity.class);
//		intent.putExtras(getIntent());
//		startActivity(intent);
//		finish();
//	}

	private void goToShowMsg(ShowMessageFromWX.Req showReq) {
//		WXMediaMessage wxMsg = showReq.message;		
//		WXAppExtendObject obj = (WXAppExtendObject) wxMsg.mediaObject;
//		
//		StringBuffer msg = new StringBuffer(); // ????????????????????
//		msg.append("description: ");
//		msg.append(wxMsg.description);
//		msg.append("\n");
//		msg.append("extInfo: ");
//		msg.append(obj.extInfo);
//		msg.append("\n");
//		msg.append("filePath: ");
//		msg.append(obj.filePath);
//		
//		Intent intent = new Intent(this, ShowFromWXActivity.class);
//		intent.putExtra(Constants.ShowMsgActivity.STitle, wxMsg.title);
//		intent.putExtra(Constants.ShowMsgActivity.SMessage, msg.toString());
//		intent.putExtra(Constants.ShowMsgActivity.BAThumbData, wxMsg.thumbData);
//		startActivity(intent);
//		finish();
	}


}