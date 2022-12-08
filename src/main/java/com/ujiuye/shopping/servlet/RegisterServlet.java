package com.ujiuye.shopping.servlet;

import com.ujiuye.shopping.bean.User;
import com.ujiuye.shopping.service.UserService;
import com.ujiuye.shopping.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by IBM on 2020/8/17.
 */
@WebServlet( "/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Autowired
    private UserService userService ;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.处理乱码
        request.setCharacterEncoding("utf-8");
        //2.获取从页面传递过来的参数值
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String sex = request.getParameter("sex");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");

        //3.讲获取的数据封装成User对象
        User user= new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setSex(sex);
        user.setName(name);
        user.setBirthday(DateUtil.stringToDate(birthday));

        //4. 通过spring的容器获取UserServiceImpl 对象 保存user对象
        ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
        UserService userService = context.getBean("userServiceImpl", UserService.class);

        int result = userService.registerUser(user);

        if(result == 1)
        {
            response.sendRedirect("/jsp/login.jsp");
        }else{
            response.sendRedirect("/jsp/register.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
