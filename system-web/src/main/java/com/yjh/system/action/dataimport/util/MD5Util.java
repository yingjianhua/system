package com.yjh.system.action.dataimport.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 * 
* @ClassName: MD5Util 
* @Description: MD5加密工具类
* @author zhangwanxi
* @date 2013-7-22 上午11:09:42 
*
 */
public class MD5Util {
	private final static String[] strDigits = { "0", "1", "2", "3", "4", "5",
			"6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };

	// 返回形式为数字跟字符串
	private static String byteToArrayString(byte bByte) {
		int iRet = bByte;
		if (iRet < 0) {
			iRet += 256;
		}
		int iD1 = iRet / 16;
		int iD2 = iRet % 16;
		return strDigits[iD1] + strDigits[iD2];
	}

	// 返回形式只为数字
	/*private static String byteToNum(byte bByte) {
		int iRet = bByte;
		System.out.println("iRet1=" + iRet);
		if (iRet < 0) {
			iRet += 256;
		}
		return String.valueOf(iRet);
	}*/

	// 转换字节数组为16进制字串
	private static String byteToString(byte[] bByte) {
		StringBuffer sBuffer = new StringBuffer();
		for (int i = 0; i < bByte.length; i++) {
			sBuffer.append(byteToArrayString(bByte[i]));
		}
		return sBuffer.toString();
	}

	public static String encode(String str) {
		String resultString = null;
		try {
			resultString = new String(str);
			MessageDigest md = MessageDigest.getInstance("MD5");
			resultString = byteToString(md.digest(str.getBytes()));
		} catch (NoSuchAlgorithmException ex) {
			ex.printStackTrace();
		}
		return resultString;
	}
}
