package com.sdll.blog.util;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

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

        IDictionaryService dictionaryService = (IDictionaryService) SpringContextHelper
            .getBean("dictionaryService");

        String returnValue = dictionaryService.getDictnameByGroupAndValue(dataType, keyValue);
        try {
            out.write(returnValue);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

}

