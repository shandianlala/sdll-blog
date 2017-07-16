package com.sdll.blog.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringContextHelper implements ApplicationContextAware{
	private Log logger = LogFactory.getLog("SpringContextHelper");
	private static ApplicationContext context;

	/*
	 * 注入ApplicationContext
	 */
	public void setApplicationContext(ApplicationContext context)
			throws BeansException {
		// 在加载Spring时自动获得context
		SpringContextHelper.context = context;
		logger.info(SpringContextHelper.context);
	}

	@SuppressWarnings("unchecked")
	public static <T> T getBean(String beanName) {
		if(context==null)return null;
		return (T)context.getBean(beanName);
	}
	
	public static Object getBean(Class<?>clazz) {
		if(context==null)return null;
		return context.getBean(clazz);
	}
	
}
