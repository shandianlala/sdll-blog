package com.sdll.blog.util;

public class StringUtil {
	
	/**
	 * 检测是否为空字符串或为null
	 * 
	 * @param str
	 *            待检测的字符串
	 * 
	 * @return 若str为null或空字符串则返回true; 否则返加false
	 * 
	 */
	public static boolean isEmpty(String str) {

		return str == null || str.length() <= 0;

	}
	
	/**
	 * 检测是否不为空字符串且不为null
	 * 
	 * @param str
	 *            待检测的字符串
	 * @return 若str不是null且不是空字符串则返回true; 否则返加false
	 * 
	 */
	public static boolean isNotEmpty(String str) {

		return (str != null && str.length() > 0);

	}
	
	/**
	 * 检测是否为空格串、空字符串或null
	 * 
	 * @param str
	 *            待检测的字符串
	 * @return 若str为null或空字符串则或空格串返回true; 否则返加false
	 * 
	 */
	public static boolean isBlank(String str) {
		if (isEmpty(str)) {
			return true;
		}

		int strLen = str.length();

		for (int i = 0; i < strLen; i++) {
			if (!(Character.isWhitespace(str.charAt(i)))) {
				return false;
			}
		}

		return true;
	}

	/**
	 * 检测是否为空格串、空字符串或null
	 * 
	 * @param str
	 *            待检测的字符串
	 * @return 若str为null或空字符串则或空格串返回false; 否则返加true
	 * 
	 */
	public static boolean isNotBlank(String str) {
		return !isBlank(str);
	}
	

}
