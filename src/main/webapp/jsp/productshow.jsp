<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ujiuye.shopping.bean.Product" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        a{
            text-decoration:none;
        }

        #img5{
            margin-left:275px;
        }
    </style>

    <script>
        onload=function(){

            //定时操作
            var i = 8;

            setInterval(function(){
                i++;
                document.getElementById('lunbo').src="img/img"+i+".jpg";

                if(i==9){
                    i=7;
                }

            },1500);
        }
    </script>
</head>
<body>
<!-- 最外层的table来做整个页面的布局-->
<table width="100%">
    <!-- 第一行  放logo信息      嵌套一个三列的表格-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <img src="img/logo.jpg"  />
                    </td>
                    <td>
                        <img id="img5" src="img/img5.jpg"  />
                        <img src="img/img6.jpg"  />
                        <img src="img/img7.jpg"  />
                        <img src="img/img4.jpg"  />
                    </td>
                    <td align="center">
                        
                        <c:choose>
                            <c:when test="${sessionScope.user != null}">
                                欢迎，${sessionScope.user.username}&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/LogOutServlet" onclick="return confirm('确定要退出吗？')">退出</a>&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/jsp/cart.jsp">购物车</a>
                            </c:when>
                            <c:otherwise>
                                <a href="${pageContext.request.contextPath}/jsp/login.jsp">登录</a>&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/jsp/register.jsp">注册</a>&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/jsp/cart.jsp">购物车</a>
                            </c:otherwise>
                        </c:choose>
                        
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <!--第二行：存放菜单信息  背景黑色 超链接颜色为白色-->
    <tr bgcolor="#808080" height="50px">
        <td>
            <a href=""><font color="white">首页</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">精品手机</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">数码时尚</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">办公设备</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">主板显卡</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">智能设备</font></a>&nbsp;&nbsp;&nbsp;
            <a href=""><font color="white">MacBook</font></a>&nbsp;&nbsp;&nbsp;
        </td>
    </tr>

    <!--第三行    轮播图片 -->
    <tr>
        <td>
            <p>
                <img src="${pageContext.request.contextPath}/img/img8.jpg" width="100%" height="350px" id="lunbo" />
            </p>
        </td>
    </tr>

    <!-- 第四行 存放热门商品信息  包含一个4行5列的表格  这里会用到表格的合并-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td colspan="5">
                        <font size="5">热门商品</font>
                        <img src="${pageContext.request.contextPath}/img/title2.jpg"  />
                    </td>
                </tr>

                <tr align="center">
                    <c:forEach items="${requestScope.hotList}" var="product" begin="0" end="4">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductInfoServlet?productId=${product.proId}">
                                <img src="${pageContext.request.contextPath}/${product.proMinImg}" /><br/>
                                <font color="red">${product.shopPrice}</font><br/>
                                <span>${product.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>

                <tr align="center">

                    <c:forEach items="${requestScope.hotList}" var="product" begin="5" end="9">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductInfoServlet?productId=${product.proId}">
                                <img src="${pageContext.request.contextPath}/${product.proMinImg}" /><br/>
                                <font color="red">${product.shopPrice}</font><br/>
                                <span>${product.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>

                <tr align="center">

                    <c:forEach items="${requestScope.hotList}" var="product" begin="10" end="14">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductInfoServlet?productId=${product.proId}">
                                <img src="${pageContext.request.contextPath}/${product.proMinImg}" /><br/>
                                <font color="red">${product.shopPrice}</font><br/>
                                <span>${product.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
            </table>
        </td>
    </tr>

    <!-- 第五行   广告图片-->
    <tr >
        <td>
            <img src="${pageContext.request.contextPath}/img/img2.webp"   width="100%"  />
        </td>
    </tr>

    <!-- 第六行  优选商品   嵌套一个3行5列的表格-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td colspan="5">
                        <font size="5">优选商品</font>
                        <img src="img/title2.jpg" />
                    </td>
                </tr>
                <tr align="center">
                    <c:forEach items="${requestScope.optimizationList}" var="product" begin="0" end="4">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductInfoServlet?productId=${product.proId}">
                                <img src="${pageContext.request.contextPath}/${product.proMinImg}" /><br/>
                                <font color="red">${product.shopPrice}</font><br/>
                                <span>${product.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
                <tr align="center">
                    <c:forEach items="${requestScope.optimizationList}" var="product" begin="5" end="9">
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductInfoServlet?productId=${product.proId}">
                                <img src="${pageContext.request.contextPath}/${product.proMinImg}" /><br/>
                                <font color="red">${product.shopPrice}</font><br/>
                                <span>${product.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
            </table>
        </td>
    </tr>

    <!--第七行  广告图片2-->
    <tr>
        <td>
            <img src="${pageContext.request.contextPath}/img/img1.webp"   width="100%"  />
        </td>
    </tr>

    <!-- 第八行  版权信息 友情链接-->
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
