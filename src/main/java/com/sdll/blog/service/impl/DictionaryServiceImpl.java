package com.sdll.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdll.blog.dao.DictionaryMapper;
import com.sdll.blog.pojo.Dictionary;
import com.sdll.blog.service.IDictionaryService;

@Service("dictionaryService")
@Transactional
public class DictionaryServiceImpl implements IDictionaryService {

	@Autowired
	DictionaryMapper dictionaryMapper;
	
	public List<Dictionary> getDictGroup(String code) {
		
		return null;
	}

	public String getDictnameByGroupAndValue(String dictGroup, String dictValue) {
		String dictName = dictionaryMapper.selectDictnameByGroupAndValue(dictGroup, dictValue);
		System.out.println("dictName===========" + dictName);
		return dictName;
	}

	public Dictionary getDictByName(String dictName) {
		
		return null;
	}

}
