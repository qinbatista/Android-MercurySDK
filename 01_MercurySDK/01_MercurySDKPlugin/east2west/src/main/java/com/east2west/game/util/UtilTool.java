package com.east2west.game.util;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import org.json.JSONObject;

import com.east2west.game.util.VivoSignUtils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

public class UtilTool {
	private static final String TAG = "UtilTool";
    public static boolean checkStringIsNull(String target) {
	if (null == target || target.trim().length() == 0) {
	    return true;
	}
	return false;
    }

    public static String convertStreamToString(InputStream is) {
	BufferedReader reader = new BufferedReader(new InputStreamReader(is));
	StringBuilder sb = new StringBuilder();
	String line = null;
	try {
	    while ((line = reader.readLine()) != null) {
		sb.append(line);
	    }
	} catch (IOException e) {
	    e.printStackTrace();
	} finally {
	    try {
		is.close();
	    } catch (IOException e) {
		e.printStackTrace();
	    }
	}
	return sb.toString();
    }

    public static void log(String tag, String info) {
	Log.d(tag, info);
    }

    public static void chmod(String permission, String path) {
	try {
	    String command = "chmod " + permission + " " + path;
	    Runtime runtime = Runtime.getRuntime();
	    runtime.exec(command);
	} catch (IOException e) {
	    e.printStackTrace();
	}
    }

    //
    // show the progress bar.
    public static ProgressDialog showProgress(Context context,
	    CharSequence title, CharSequence message, boolean indeterminate,
	    boolean cancelable) {
	ProgressDialog dialog = null;
	if (!UtilTool.checkStringNull(message.toString())) {
	    dialog = new ProgressDialog(context);
	    dialog.setTitle(title);
	    dialog.setMessage(message);
	    dialog.setIndeterminate(indeterminate);
	    dialog.setCancelable(false);
	    // dialog.setDefaultButton(false);
	    // dialog.setOnCancelListener(new AlixOnCancelListener(
	    // (Activity) context));

	    // dialog.show();
	}
	return dialog;
    }

    public static void showDialog(Activity context, String strTitle,
	    String strText) {
	if (!checkStringNull(strText)) {
	    AlertDialog.Builder tDialog = new AlertDialog.Builder(context);
	    // tDialog.setIcon(icon);
	    tDialog.setTitle(strTitle);
	    tDialog.setMessage(strText);
	    tDialog.setPositiveButton("确定", null);
	    if(context.isFinishing()) {
	    	Log.e(TAG, "activity isFinishing");
	    }else {
	    	tDialog.show();
	    }
	}
    }

    public static JSONObject string2JSON(String str, String split) {
	JSONObject json = new JSONObject();
	try {
	    String[] arrStr = str.split(split);
	    for (int i = 0; i < arrStr.length; i++) {
		String[] arrKeyValue = arrStr[i].split("=");
		json.put(arrKeyValue[0],
			arrStr[i].substring(arrKeyValue[0].length() + 1));
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	}
	return json;
    }

    public static boolean checkStringNull(String str) {
	if (null == str || str.trim().length() == 0) {
	    return true;
	}
	return false;
    }

    public static String generateRandomSeq(int len) {

	Random rnd = new Random(System.currentTimeMillis());
	String random_seq = new String();
	random_seq = String.valueOf(rnd.nextInt(10));
	for (int i = 1; i < len; i++) {
	    int temp = rnd.nextInt(len);
	    switch (temp) {
	    case 10:
		random_seq += "A";
		break;
	    case 11:
		random_seq += "B";
		break;
	    case 12:
		random_seq += "C";
		break;
	    case 13:
		random_seq += "D";
		break;
	    case 14:
		random_seq += "E";
		break;
	    case 15:
		random_seq += "F";
		break;
	    default:
		random_seq += String.valueOf(temp);
		break;
	    }
	}
	return random_seq;
    }

    public static boolean isNetworkAvailable(Context context) {
	ConnectivityManager connManager = (ConnectivityManager) context
		.getSystemService(Context.CONNECTIVITY_SERVICE);
	NetworkInfo networkInfo = connManager.getActiveNetworkInfo();
	if (null == networkInfo
		|| !(networkInfo.isAvailable() && networkInfo
			.isConnectedOrConnecting())) {
	    return false;
	}
	return true;
    }

    public static boolean checkSignatrue(String sign_str) throws Exception {
	JSONObject json = new JSONObject(sign_str);
	Map<String, String> map = new HashMap<String, String>();
	Iterator<String> iterator = json.keys();
	String key = null;
	for (; iterator.hasNext();) {
	    key = iterator.next();
	    if (!"respCode".equals(key) || !"respMsg".equals(key)) {
		map.put(key, json.getString(key));
	    }
	}
	
	boolean result = VivoSignUtils.verifySignature(map, "");
	return result;
    }
}
