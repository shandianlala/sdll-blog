package com.sdll.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdll.blog.dao.DictionaryMapper;
import com.sdll.blog.pojo.Dictionary;
import com.sdll.blog.service.IDictionaryService;
import com.sdll.blog.util.StringUtil;

@Service("dictionaryService")
@Transactional
public class DictionaryServiceImpl implements IDictionaryService {

	@Autowired
	DictionaryMapper dictionaryMapper;
	
	public List<Dictionary> listDictionaryByDictgroup(String dictGroup) {
		if(StringUtil.isEmpty(dictGroup)) {
			return null;
		}
		List<Dictionary> list = dictionaryMapper.listDictionaryByDictgroup(dictGroup);
		return list;
	}

	public String getDictnameByGroupAndValue(String dictGroup, String dictValue) {
		if(StringUtil.isEmpty(dictGroup) || StringUtil.isEmpty(dictValue)) {
			return "";
		}
		String dictName = dictionaryMapper.selectDictnameByGroupAndValue(dictGroup, dictValue);
		return dictName;
	}

	public Dictionary getDictByName(String dictName) {
		
		return null;
	}

}
