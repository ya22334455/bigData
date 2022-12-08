package com.ujiuye.shopping.dao.impl;

import com.ujiuye.shopping.bean.User;
import com.ujiuye.shopping.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by IBM on 2020/8/17.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insertUser(User user) {

        int result = 0;

        String sql = "insert into t_user (username , password , email , name , sex , birthday )" +
                "values (?,?,?,?,?,?)";

        return jdbcTemplate.update(sql, user.getUsername(), user.getPassword(),
                user.getEmail(), user.getName(), user.getSex(), user.getBirthday());

    }

    @Override
    public User findUserByUserNameAndPassword(String userName, String password) {

        String sql = "select userId , username , password , email , name , sex , birthday from t_user where username = ? and password = ?";
        User user = null ;

        try{

            user = jdbcTemplate.queryForObject(sql, new RowMapper<User>() {

                public User mapRow(ResultSet resultSet, int i) throws SQLException {

                    User user = new User();
                    user.setUserId(resultSet.getInt("userId"));
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    user.setEmail(resultSet.getString("email"));
                    user.setName(resultSet.getString("name"));
                    user.setSex(resultSet.getString("sex"));
                    user.setBirthday(resultSet.getDate("birthday"));
                    return user;
                }
            }, userName, password);
        }catch(Exception ex)
        {
            ex.printStackTrace();
            user = null ;
        }
        return user;
    }
}














