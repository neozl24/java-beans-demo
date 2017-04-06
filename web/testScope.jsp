<%--
  Created by IntelliJ IDEA.
  User: zhongli
  Date: 2017/1/17
  Time: 下午4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.po.Users" %>

<html>
<head>
    <title>scope of javaBean</title>
</head>
<body>
    <% request.setCharacterEncoding("utf-8"); %>

    <h2>JavaBean的四个作用范围--scope对应application，session，request</h2>
    <hr>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="session"/>

    <%--使用动作元素获取--%>
    用户名：<jsp:getProperty name="myUsers" property="username" /> <br>
    <%--用户名：<%=new String(myUsers.getUsername().getBytes("ISO-8859-1"),"utf-8")%> <br>--%>
    密码：<jsp:getProperty name="myUsers" property="password" /> <br>

    <%
//        Users user = (Users)application.getAttribute("myUsers");  // 第一种OK
        Users user = (Users)session.getAttribute("myUsers");        // 第二种OK
//        Users user = (Users)request.getAttribute("myUsers");      // 第三种，如果是页面分发，对象就还在，如果是普通跳转，就找不到之前页面的对象了

        String userName = new String(user.getUsername().getBytes("ISO-8859-1"),"utf-8");
    %>
    <%--使用内置对象获取用户名和密码--%>
    用户名：<%=userName%> <br>
    密码：<%=user.getPassword()%> <br>

    <%--<%--%>
        <%--//第四种，scope为page，范围最小。这里要用pageContext获取对象。得到的username和password为空。--%>
        <%--String username = "";--%>
        <%--String password = "";--%>
        <%--if(pageContext.getAttribute("myUsers") != null) {--%>
            <%--username = ((Users)pageContext.getAttribute("myUsers")).getUsername();--%>
            <%--password = ((Users)pageContext.getAttribute("myUsers")).getPassword();--%>
        <%--} --%>
    <%--%>--%>
    <%--用户名：<%=username%> <br>--%>
    <%--密码：<%=password%> <br>--%>

</html>
