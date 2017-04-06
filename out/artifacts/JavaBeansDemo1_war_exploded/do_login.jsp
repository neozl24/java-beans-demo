<%--
  Created by IntelliJ IDEA.
  User: zhongli
  Date: 2017/1/16
  Time: 上午10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>do login</title>
</head>
<body>
    <% request.setCharacterEncoding("utf-8"); %>

    <jsp:useBean id="myUsers" class="com.po.Users" scope="session"/>
    <h2>setProperty动作元素</h2>
    <hr>
    <%--根据表单自动匹配所有的属性--%>
    <%--<jsp:setProperty name="myUsers" property="*" />--%>

    <%--根据表单匹配指定的属性--%>
    <%--<jsp:setProperty name="JavaBean实例名" property="JavaBean属性名" />--%>
    <jsp:setProperty name="myUsers" property="username" />

    <%--手工设置指定的属性，不依赖表单--%>
    <%--<jsp:setProperty name="myUsers" property="password" value="7654567" />--%>

    <%--通过URL传参给属性赋值--%>
    <jsp:setProperty name="myUsers" property="password" param="myPass" />

    用户名：<%=myUsers.getUsername()%> <br>
    <%--通过getProperty方式来获取属性--%>
    密码：<jsp:getProperty name="myUsers" property="password" /> <br>

    <hr>
    <a href="testScope.jsp">test scope</a>

</body>
</html>
