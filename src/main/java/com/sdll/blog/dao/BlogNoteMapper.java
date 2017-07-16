package com.sdll.blog.dao;

import com.sdll.blog.pojo.BlogNote;

public interface BlogNoteMapper {
    int deleteByPrimaryKey(String id);

    int insert(BlogNote record);

    int insertSelective(BlogNote record);

    BlogNote selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BlogNote record);

    int updateByPrimaryKeyWithBLOBs(BlogNote record);

    int updateByPrimaryKey(BlogNote record);
    /**
     * 获取最近的一篇日志
     * @return
     */
    BlogNote selectByUpdate();
}