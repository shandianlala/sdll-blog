package com.sdll.blog.service.impl;

import com.sdll.blog.dao.BlogUserMapper;
import com.sdll.blog.pojo.BlogUser;
import com.sdll.blog.service.IBlogUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/5/6.
 */

@Service
@Transactional
public class BlogUserServiceImpl implements IBlogUserService,Serializable {

    @Autowired
    BlogUserMapper userMapper;

    public BlogUser userLogin(String userAccount) {
        System.out.println("userAccount:"+userAccount);
        BlogUser user = userMapper.queryUserByUserAccount("sdll");
        System.out.println("用户user:"+user.getUserEmail());
        return user;
    }
}
