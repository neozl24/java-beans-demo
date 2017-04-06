<%--
  Created by IntelliJ IDEA.
  User: zhongli
  Date: 2017/1/16
  Time: 上午10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<jsp:useBean id="myUsers" class="com.po.Users" scope="page" />

<h2>使用useBean动作标签来创建JavaBean的实例</h2>
<hr>
用户名：<%=myUsers.getUsername()%> <br>
密码：<%=myUsers.getPassword()%> <br>
</body>
</html>
