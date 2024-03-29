<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="../css/registercss.css" rel="stylesheet" />
    <style>
        a{
            text-decoration:none;
            color:#337AB7;
        }

        #img5{
            margin-left:350px;
        }

    </style>

    <!-- 表单验证-->
    <script>
        function checkForm(){
            if(checkUsername() && checkPassword() && checkRepassword() && checkEmail() && checkName()){
                return true;
            }else{
                return false;
            }
        }

        //1、 验证用户名
        function checkUsername(){
            // 1 获取数据
            var usernameValue = document.getElementById('username').value;

            // 2 定义正则
            var usernameReg = /^[a-zA-Z_$]{4,12}$/;

            // 3 获取存放提示信息的标签
            var usernameStrong = document.getElementById('usernameStrong');

            //4 判断是否匹配
            if(usernameReg.test(usernameValue)){
                usernameStrong.style.color="green";
                usernameStrong.innerHTML="√";
                return true;
            }else{
                usernameStrong.style.color="red";
                usernameStrong.innerHTML="×用户名格式不正确";
                return false;
            }
        }


        //2、验证密码
        function checkPassword(){
            var passwordValue = document.getElementById('password').value;
            var passwordReg=/^[a-zA-Z0-9]{6,12}$/;
            var passwordStrong = document.getElementById('passwordStrong');

            if(passwordReg.test(passwordValue)){
                passwordStrong.style.color="green";
                passwordStrong.innerHTML="√";
                return true;
            }else{
                passwordStrong.style.color="red";
                passwordStrong.innerHTML="×密码格式不正确";
                return false;
            }
        }


        //3 验证重复密码
        function checkRepassword(){
            var passwordValue = document.getElementById('password').value;
            var repasswordValue=document.getElementById('repassword').value;
            var repasswordStrong = document.getElementById('repasswordStrong');
            if(passwordValue==repasswordValue){
                repasswordStrong.style.color="green";
                repasswordStrong.innerHTML="√";
                return true;
            }else{
                repasswordStrong.style.color="red";
                repasswordStrong.innerHTML="×两次密码不一致";
                return false;
            }
        }

        //4 验证email
        function checkEmail(){
            var emailValue=document.getElementById("email").value;
            var emailReg=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
            var emailStrong = document.getElementById('emailStrong');

            if(emailReg.test(emailValue)){
                emailStrong.style.color="green";
                emailStrong.innerHTML="√";
                return true;
            }else{
                emailStrong.style.color="red";
                emailStrong.innerHTML="×邮箱格式不正确";
                return false;
            }
        }

        function checkName(){
            var nameValue=document.getElementById("name").value;
            var nameStrong = document.getElementById('nameStrong');

            if(nameValue!=null && nameValue!=''){
                nameStrong.style.color='green';
                nameStrong.innerHTML="√";
                return true;
            }else{
                nameStrong.style.color='red';
                nameStrong.innerHTML="×用户名必填";
                return false;
            }
        }

    </script>
</head>
<body>
<table width="100%">
    <!-- logo-->
    <tr>
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <img src="../img/logo.jpg"  />
                    </td>
                    <td>
                        <img src="../img/img5.jpg" id="img5"  />
                        <img src="../img/img6.jpg"  />
                        <img src="../img/img7.jpg"  />
                        <img src="../img/img4.jpg"  />
                    </td>
                    <td align="center">
                        <a href="">登录</a>&nbsp;&nbsp;&nbsp;
                        <a href="">注册</a>&nbsp;&nbsp;&nbsp;
                        <a href="">购物车</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </tr>

    <!--  注册页面信息-->
    <tr>
        <td>
            <div style="width:100%;background-image:url('../image/registerBack.jpg'); background-size: cover;">
                <form action="/RegisterServlet" method="post" class="bootstrap-frm" onsubmit="return checkForm()">
                    <h1>
                        会员注册
                        <span>USER&nbsp;REGISTER.</span>
                    </h1>

                    <label>
                        <span>用户名</span>
                        <input type="text" id="username" name="username" placeholder="请输入用户名" onblur="checkUsername()"  /><strong id="usernameStrong"></strong>
                    </label><br/>

                    <label>
                        <span>密码</span>
                        <input type="password" id="password" name="password" placeholder="请输入密码" onblur="checkPassword()" /><strong id="passwordStrong"></strong>
                    </label><br/>

                    <label>
                        <span>确认密码</span>
                        <input type="password" id="repassword" placeholder="请输入确认密码" onblur="checkRepassword()" /><strong id="repasswordStrong"></strong>
                    </label><br/>

                    <label>
                        <span>Email</span>
                        <input type="text" id="email" name="email" placeholder="请输入email" onblur="checkEmail()" /><strong id="emailStrong"></strong>
                    </label><br/>

                    <label>
                        <span>姓名</span>
                        <input type="text" 	id="name" name="name" placeholder="请输入姓名" onblur="checkName()" /><strong id="nameStrong"></strong>
                    </label><br/>

                    <label>
                        <span>性别</span>
                        <select name="sex">
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </label><br/>

                    <!-- 对于日期，一般不使用正则验证，而是会使用一个时间插件（js插件）-->
                    <label>
                        <span>出生日期</span>
                        <input type="text" name="birthday" placeholder="请输入生日" />
                    </label><br/>

                    <input type="submit" value="注册" />
                </form>
            </div>
        </td>
    </tr>

    <!-- 友情链接 版权信息-->
    <tr>
        <td>
            <p align="center">
                <a href=""><font color="#337AB7">关于我们</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">联系我们</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">联系客服</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">合作招商</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">商家帮助</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">营销中心</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">手机帮助</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">销售联盟</font></a>&nbsp;&nbsp;
            </p>

            <p align="center">
                &copy; 2005-2020 东易买 版权所有，并保留所有权利
            </p>
        </td>
    </tr>

</table>


</body>
</html>

