<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
       <%
           String name =(String)request.getAttribute("sname");
       %>
       name : <%=name%> <br/>

        name: ${requestScope.sname}<br/>
        user.name :  ${requestScope.user.username}<br/>
        user.birthday : ${requestScope.user.birthday}<br/>


---------------------------------------------------------------<br/>

            list : ${requestScope.list}<br/>
            list2 : ${requestScope.list2}<br/>
            集合2中的第一个对象的名字： ${list2[0].username}<br/>

              ${10+2 } <br/> ${10 / 2}<br/>  ${5==5 }<br/>  ${5<3 }<br/>
                ${5 eq 5 }<br/>

             ${list2[0].username=="aaa" }<br/>
             ${list2[0].sex=="女" }<br/>
             ${list2[0].sex == list2[1].sex}<br/>

             ${1==1 and 2==2}<br/>
</body>
</html>
