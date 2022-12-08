package com.ujiuye.shopping.service;

import com.ujiuye.shopping.bean.User;

/**
 * Created by IBM on 2020/8/17.
 */
public interface UserService {

    public int registerUser(User user);

    public User findUserByUserNameAndPassword(String username, String password) ;
}
