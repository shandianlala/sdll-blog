package com.sdll.blog.dao;

import org.apache.ibatis.annotations.Param;

import com.sdll.blog.pojo.Dictionary;

public interface DictionaryMapper {
    int deleteByPrimaryKey(String id);

    int insert(Dictionary record);

    int insertSelective(Dictionary record);

    Dictionary selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Dictionary record);

    int updateByPrimaryKey(Dictionary record);
    
    /**
     * 根据KYE查询Value
     * @return
     */
    String selectDictnameByGroupAndValue(@Param("dictGroup")String dictGroup, @Param("dictValue")String dictValue);
    
}