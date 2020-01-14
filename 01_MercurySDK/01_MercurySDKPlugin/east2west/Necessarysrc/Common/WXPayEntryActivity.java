package com.ironhidegames.android.ironmarines.e2w.wxapi;

import com.east2west.game.E2WApp;
import com.east2west.game.inApp.InAppBase;
import com.east2west.game.inApp.InAppEAST2WEST;
import com.tencent.mm.sdk.constants.ConstantsAPI;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.unity3d.player.UnityPlayer;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

public class WXPayEntryActivity extends Activity implements IWXAPIEventHandler{
	
	private static final String TAG = "WXPayEntryActivity";
	private InAppBase mBaseInApp = null;
    private IWXAPI api;
    public String channelname="[com.ironhidegames.android.ironmarines.e2w.wxapi]";
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);      
    	api = WXAPIFactory.createWXAPI(this, InAppEAST2WEST.WX_APP_ID);
        api.handleIntent(getIntent(), this);
        Log.e("Max","[WXPayEntryActivity] onCreate->"+InAppEAST2WEST.WX_APP_ID);

    }

	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);
		setIntent(intent);
        api.handleIntent(intent, this);
        E2WApp.LogLocal("[WXPayEntryActivity]->onNewIntent");
	}

	@Override
	public void onReq(BaseReq req) {
	}

	@Override
	public void onResp(BaseResp resp) {
		Log.d("IAP", "air.air.amanita_design.samorost3.E2W.east2west.wxapi->onPayFinish, errCode = " + resp.errCode);
		if (resp.getType() == ConstantsAPI.COMMAND_PAY_BY_WX) {
			if (resp.errCode == 0) {
				//支付成功
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
				Log.d("IAP", "finish()->"+mBaseInApp);
				Log.d("IAP", "E2WApp.activityforappbase->"+E2WApp.activityforappbase);	
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();				
				Toast.makeText(this, "支付成功", Toast.LENGTH_LONG).show();
				mBaseInApp.onPurchaseSuccess(channelname);
				finish();

			}
			else 
			{
				//支付失败
				mBaseInApp = E2WApp.activityforappbase.getBaseInApp();
				Log.d("IAP", "E2WApp.activityforappbase->"+E2WApp.activityforappbase);	
				Log.d("IAP", "finish()->"+mBaseInApp);				
				Toast.makeText(this, "支付失败", Toast.LENGTH_LONG).show();
				//mBaseInApp.onPurchaseSuccess(channelname);
				//mBaseInApp.onPurchaseSuccess(channelname);
				mBaseInApp.onPurchaseFailed(channelname);
				finish();

			}
			
		}
	}
}