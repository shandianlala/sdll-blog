package com.sdll.blog.dao;

import java.util.List;

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
    
    /**
     * 通过dictGroup查询这一类型的所有数据
     * @param dictGroup
     * @return
     */
    List<Dictionary> listDictionaryByDictgroup(@Param("dictGroup")String dictGroup);
    
}