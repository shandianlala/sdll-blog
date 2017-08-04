package com.sdll.blog.util;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.sdll.blog.pojo.Dictionary;
import com.sdll.blog.service.IDictionaryService;



public class ConvertKeyTag extends BodyTagSupport {

    private static final long serialVersionUID = 7537097693120818282L;

    private String keyValue;

    private String dataType;

    private String name;

    public String getKeyValue() {
        return keyValue;
    }

    public void setKeyValue(String keyValue) {
        this.keyValue = keyValue;
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public int doStartTag() throws JspException {

        JspWriter out = this.pageContext.getOut();
        String returnValue = null;
        IDictionaryService dictionaryService = (IDictionaryService) SpringContextHelper
            .getBean("dictionaryService");
        if(keyValue != null && "all".equals(keyValue)) {
        	List<Dictionary> dictionaryList = dictionaryService.listDictionaryByDictgroup(dataType);
        	StringBuilder value = new StringBuilder("<option value=\"\">直接选择</option>");
        	for (Dictionary dictionary : dictionaryList) {
				value.append("<option value=\""+ dictionary.getDictValue() +"\">"+ dictionary.getDictName() +"</option>");
			}
        	returnValue = value.toString();
        }else {
        	returnValue = dictionaryService.getDictnameByGroupAndValue(dataType, keyValue);
        }
    	try {
            out.write(returnValue);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

}

