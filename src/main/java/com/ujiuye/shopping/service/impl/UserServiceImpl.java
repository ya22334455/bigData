package com.ujiuye.shopping.service.impl;

import com.ujiuye.shopping.bean.User;
import com.ujiuye.shopping.dao.UserDao;
import com.ujiuye.shopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

/**
 * Created by IBM on 2020/8/17.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public int registerUser(User user) {

        return userDao.insertUser(user);

    }

    @Override
    public User findUserByUserNameAndPassword(String username , String password) {

        User user = null ;
        try {
            user = userDao.findUserByUserNameAndPassword(username , password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user ;

    }
}
