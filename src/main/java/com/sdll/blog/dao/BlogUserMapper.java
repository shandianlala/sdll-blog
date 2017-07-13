package com.sdll.blog.dao;

import org.apache.ibatis.annotations.Param;

import com.sdll.blog.pojo.BlogUser;

public interface BlogUserMapper {
	
	BlogUser queryUserByUserAccount(@Param("userAccount") String userAccount);
	
	int deleteByPrimaryKey(String userId);

    int insert(BlogUser record);

    int insertSelective(BlogUser record);

    BlogUser selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(BlogUser record);

    int updateByPrimaryKey(BlogUser record);
}