<%@ page import="com.ujiuye.shopping.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: IBM
  Date: 2020/8/20
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    这是我的作用域页面！<br/>
    <%
        String name = (String) request.getAttribute("name");

        Integer age = (Integer) request.getAttribute("age");

        User user = (User) request.getAttribute("user");
    %>

    name : <%= name%><br/>
    age  : <%= age%><br/>
    user : <%= user %><br/>


</body>
</html>
