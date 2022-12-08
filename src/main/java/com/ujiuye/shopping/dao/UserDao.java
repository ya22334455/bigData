package com.ujiuye.shopping.dao;

import com.ujiuye.shopping.bean.User;

import java.sql.SQLException;

/**
 * Created by IBM on 2020/8/17.
 */
public interface UserDao {

    public int insertUser(User user) ;

    public User findUserByUserNameAndPassword(String userName, String password) throws SQLException;
}
