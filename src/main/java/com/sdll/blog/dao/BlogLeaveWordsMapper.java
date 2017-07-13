package com.sdll.blog.dao;

import com.sdll.blog.pojo.BlogLeaveWords;

public interface BlogLeaveWordsMapper {
    int deleteByPrimaryKey(String id);

    int insert(BlogLeaveWords record);

    int insertSelective(BlogLeaveWords record);

    BlogLeaveWords selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BlogLeaveWords record);

    int updateByPrimaryKey(BlogLeaveWords record);
}