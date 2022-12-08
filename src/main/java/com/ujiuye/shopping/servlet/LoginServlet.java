package com.ujiuye.shopping.servlet;

import com.ujiuye.shopping.bean.User;
import com.ujiuye.shopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by IBM on 2020/8/18.
 */
@WebServlet( "/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Autowired
    private UserService userService ;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userService.findUserByUserNameAndPassword(username, password);
        System.out.println(user);

        if(null != user)
        {//登陆成功 跳转到网站主页  并且把用户的信息传入到Session作用域中
            HttpSession session = request.getSession();
            session.setAttribute("user" , user);
            response.sendRedirect("/index.jsp");
        }else
        {  //登陆失败 ， 跳转回登陆页面
            response.sendRedirect("jsp/login.jsp?msg=loginerror");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
