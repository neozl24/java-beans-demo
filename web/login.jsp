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
  <title>jsp login</title>
</head>
<body>
<h2>系统登录</h2>
<hr>
<form action="do_login.jsp?myPass=666" method="post">
  <table>
    <tr>
      <td>用户名：</td>
      <td><input type="text" name="username" value=""></td>
    </tr>
    <tr>
      <td>密码：</td>
      <td><input type="password" name="password" value=""></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" value="登录"/></td>
    </tr>
  </table>
</form>
</body>
</html>
