package com.east2west.game.util;

import android.util.Log;
import android.widget.Toast;

public class StringUtils {
	/**
	 * 
	 * @param str
	 * @return
	 * @throws NumberFormatException
	 */
	public static String inputPriceFormatter(String str)throws NumberFormatException{
		String handledStr = null;
		//С����ʽ������
		if(isValid(str).contains(".")){
			float f_price = Float.valueOf(isValid(str));
			handledStr = Float.toString(f_price);
		//������ʽ������
		}else{
			int i_price = Integer.valueOf(isValid(str));
			handledStr = Integer.toString(i_price);
		}
		return isValid(handledStr);
	}
	/**
	 * �ж��Ƿ�Ϊ�պͿմ�,��NumberFormatException�ķ�ʽ���д���
	 * @param str
	 * @return
	 * @throws NumberFormatException
	 */
	public static String isValid(String str) throws NumberFormatException{
		if(str == null || "".equals(str))
			throw new NumberFormatException();
		return str;
	}
}
