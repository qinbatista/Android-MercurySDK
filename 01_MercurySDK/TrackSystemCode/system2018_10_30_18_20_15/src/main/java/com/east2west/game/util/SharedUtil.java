package com.east2west.game.util;

import android.content.Context;
import android.content.SharedPreferences;

public class SharedUtil {
	private static SharedUtil mInstance;
	private final int MODE = Context.MODE_WORLD_READABLE + Context.MODE_WORLD_WRITEABLE;
	private final SharedPreferences sharedpreferences;
	private static final String FILE_NAME = "com_duoku_demo_single_shared";


	private SharedUtil(Context context, String fileName) {
		sharedpreferences = context.getSharedPreferences(fileName, MODE);
	}

	public static SharedUtil getInstance(Context context) {
		if (mInstance == null) {
			mInstance = new SharedUtil(context, FILE_NAME);
		}

		return mInstance;
	}

	public boolean saveString(String key, String value) {
		SharedPreferences.Editor editor = sharedpreferences.edit();
		editor.putString(key, value);

		return editor.commit();
	}
	
	public String getString(String key) {

		return sharedpreferences.getString(key, "");
	}
	
	public boolean saveLong(String key, Long value){
		SharedPreferences.Editor editor = sharedpreferences.edit();
		editor.putLong(key, value);
		
		return editor.commit();
	}
	
	public boolean saveInt(String key, int value){
		SharedPreferences.Editor editor = sharedpreferences.edit();
		editor.putInt(key, value);
		
		return editor.commit();
	}
	
	public int getInt(String key, int defaultValue){
		return sharedpreferences.getInt(key, defaultValue);
	}

	public Long getLong(String key){
		return sharedpreferences.getLong(key, 0);
	}
	
	public boolean saveBoolean(String key, boolean value) {
		SharedPreferences.Editor editor = sharedpreferences.edit();
		editor.putBoolean(key, value);
		return editor.commit();
	}

	public boolean getBoolean(String key) {

		return sharedpreferences.getBoolean(key, false);
	}

	public boolean removeKey(String key) {
		SharedPreferences.Editor editor = sharedpreferences.edit();
		editor.remove(key);
		return editor.commit();
	}

}
