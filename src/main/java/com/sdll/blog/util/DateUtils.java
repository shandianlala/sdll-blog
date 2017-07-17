package com.sdll.blog.util;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

public class DateUtils {
	
	/**
	 * 1、java 中取时间的对象是java.util.Date。 
	 * 2、oracle中对应的时间对象是java.util.Date，
	 * java.sql.Time、java.sql.Timestamp、它们都是是java.util.Date的子类。 
	 */
	
	/**
	 * 获取当前时间戳 ， 格式：2006-04-03 18:00:34.388 
	 * @return 
	 */
	public static Date getCurrentDateTime(){
		java.sql.Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		//System.out.println(timestamp);
		return timestamp;
	}
	
	/**
	 * 获取当前日期 ， 格式  ：2006-04-03 
	 * @return 
	 */
	public static Date getCurrentDay(){
		java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
		//System.out.println(date);
		return date;
	}
	
	/**
	 * 获取当前时间 ， 格式  ：18:00:34  
	 * @return
	 */
	public static Time getCurrentTime(){
		Time time = new Time(System.currentTimeMillis());
		//System.out.println(time);
		return time;
	}

}
