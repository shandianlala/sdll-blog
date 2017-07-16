package com.sdll.blog.service;

import java.util.List;

import com.sdll.blog.pojo.Dictionary;



public interface IDictionaryService {
	
	/**
	 * 根据字典分组查询
	 * @return
	 */
	public List<Dictionary> getDictGroup(String code);
	
	/**
	 * 根据KYE查询Value
	 */
	public String getDictnameByGroupAndValue(String dictGroup, String dictValue);
	
 
	
	/**
	 * 根据字典项名称查询
	 * @param dictName
	 * @return
	 */
	public Dictionary getDictByName(String dictName);

}
