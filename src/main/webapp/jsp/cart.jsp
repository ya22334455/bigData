<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <!--css样式-->
    <style type="text/css">
        #imgId5{
            margin-left: 275px;
        }
        /*控制超链接下划线*/
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<table width="100%">
    <!--第一行：存放logo信息   嵌套一个一行三列的表格 -->
    <tr>
        <td>
            <table   width="100%" >
                <tr>
                    <td>
                        <img src="../img/logo.jpg" />
                    </td>
                    <td >
                        <img src="../img/img5.jpg" id="imgId5"/>&nbsp;&nbsp;
                        <img src="../img/img6.jpg" />&nbsp;&nbsp;
                        <img src="../img/img7.jpg" />&nbsp;&nbsp;
                        <img src="../img/img4.jpg" />
                    </td>
                    <td align="center">
                        <a href=""><font color="#337AB7">登录</font></a>&nbsp;&nbsp;
                        <a href=""><font color="#337AB7">注册</font></a>&nbsp;&nbsp;
                        <a href=""><font color="#337AB7">购物车</font></a>&nbsp;&nbsp;
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
            <a href=""><font color="white">Macbook</font></a>&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <!--第三行：存放轮播图信息-->
    <tr>


        <table style="margin:0 auto; margin-top:10px;width:950px;">

            <tr>
                <td style="text-align: left" colspan="100%">
                    <strong style="font-size:26px;margin:5px 0;">订单详情</strong>
                </td>

            </tr>
        </table>

        <table style="margin: 0 auto; border:1px solid black;border-collapse: collapse;width:950px;">
            <tbody>
            <tr style="background-color: lightgray;height: 50px;">
                <th style="border-right: 1px solid gray;">图片</th>
                <th style="border-right: 1px solid gray;">商品</th>
                <th style="border-right: 1px solid gray;">价格</th>
                <th style="border-right: 1px solid gray;">数量</th>
                <th style="border-right: 1px solid gray;">小计</th>
                <th style="border-right: 1px solid gray;">操作</th>
            </tr>
            <c:forEach items="${sessionScope.cart}" var="entry">
            <tr style="border: 1px solid gray;">

                <td width="60" width="40%" style="border-right: 1px solid gray;">
                   <%-- <input type="hidden" name="id" value="22">--%>
                    <img src="${pageContext.request.contextPath}/${entry.key.proMinImg}" width="70" height="60">
                </td>

                <td width="30%" style="border-right: 1px solid gray;">
                    <a target="_blank">${entry.key.proName}</a>
                </td>

                <td width="20%" style="border-right: 1px solid gray;">
                    ￥${entry.key.shopPrice}
                </td>

                <td width="10%" style="border-right: 1px solid gray;">
                    <input type="text" name="quantity" value="${entry.value}" maxlength="4" size="10">
                </td>
                <td width="15%" style="border-right: 1px solid gray;">
                    <span class="subtotal">￥${entry.key.shopPrice * entry.value}</span>
                </td>
                <td style="border-right: 1px solid gray;">
                    <a href="${pageContext.request.contextPath}/RemoveCarServlet?proId=${entry.key.proId}" onclick="return confirm('残忍删除吗？')">删除</a>
                </td>
            </tr>

            </c:forEach>
            </tbody>
        </table>

        <table style="margin:0 auto; margin-top:10px;width:950px;">

            <tr>
                <td style="text-align: right" colspan="100%">
                    <a href="${pageContext.request.contextPath}/ProductServlet">继续购物</a>
                </td>

            </tr>
        </table>
        <table style="margin:0 auto; margin-top:10px;width:950px;">

            <tr>
                <td style="text-align: right" colspan="100%">
                    <a href="${pageContext.request.contextPath}/PayServlet">
                        <input type="button" width="100" value="付款" border="0" style="">
                    </a>
                </td>
            </tr>


        </table>
    </tr>
    <!--第八行：存放友情链接-->
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
        </td>
    </tr>
    <!--第九行：存放版权信息-->
    <tr>
        <td align="center">
            <div align="center">© 2005-2020 东易买 版权所有，并保留所有权利</div>
        </td>
    </tr>
</table>
</body>
</html>
