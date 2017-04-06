<%--
  Created by IntelliJ IDEA.
  User: zhongli
  Date: 2017/1/16
  Time: 上午10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.po.Users" pageEncoding="utf-8" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      Users user = new Users();
      user.setUsername("admin");
      user.setPassword("123456");
    %>

    <h2>使用普通方式创建JavaBean的实例</h2>
    <hr>
    用户名：<%=user.getUsername()%> <br>
    密码：<%=user.getPassword()%> <br>
  </body>
</html>
