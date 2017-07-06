/*package com.sdll.antnote.service.impl;

import com.sdll.antnote.dao.UserMapper;
import com.sdll.antnote.pojo.User;
import com.sdll.antnote.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

*//**
 * Created by Administrator on 2017/5/6.
 *//*

@Service
@Transactional
public class UserServiceImpl implements IUserService,Serializable {

    @Autowired
    UserMapper userMapper;

    public User userLogin(String userAccount) {
        System.out.println("userAccount:"+userAccount);
        User user = userMapper.queryUserByUserAccount("sdll");
        System.out.println("用户user:"+user.getUserEmail());
        return user;
    }
}
*/