package com.sdll.blog.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * @author shandianlala@gmail.com
 * @description TODO
 * @since 2019-08-14 1:50
 */
@Component
public class ApplicationContextUtil implements ApplicationContextAware {


    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        System.out.println("=======");
    }
}
