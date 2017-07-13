package com.sdll.blog.dao;

import com.sdll.blog.pojo.BlogType;

public interface BlogTypeMapper {
    int deleteByPrimaryKey(String id);

    int insert(BlogType record);

    int insertSelective(BlogType record);

    BlogType selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BlogType record);

    int updateByPrimaryKey(BlogType record);
}