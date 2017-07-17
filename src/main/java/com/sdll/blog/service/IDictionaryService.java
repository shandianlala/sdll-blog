package com.sdll.blog.service;

import java.util.List;

import com.sdll.blog.pojo.Dictionary;



public interface IDictionaryService {
	
	/**
     * 通过dictGroup查询这一类型的所有数据
     * @param dictGroup
     * @return
     */
	List<Dictionary> listDictionaryByDictgroup(String dictGroup);
	
	/**
	 * 根据KYE查询Value
	 */
	String getDictnameByGroupAndValue(String dictGroup, String dictValue);
	
 
	
	/**
	 * 根据字典项名称查询
	 * @param dictName
	 * @return
	 */
	Dictionary getDictByName(String dictName);

}
