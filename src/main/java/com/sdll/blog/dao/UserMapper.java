package com.sdll.blog.dao;

import org.apache.ibatis.annotations.Param;

import com.sdll.blog.pojo.User;

public interface UserMapper {
	
	User queryUserByUserAccount(@Param("userAccount") String userAccount);
	
	int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}