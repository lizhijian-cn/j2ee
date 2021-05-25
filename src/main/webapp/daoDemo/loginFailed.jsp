<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/21/21
  Time: 11:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String username = (String) session.getAttribute("username");
%>
<html>
  <head>
    <title>login failed</title>
  </head>
  <body>
    <h3>login failed</h3>
    <p><%=username%>, enter <a href="login.jsp">here</a> to jump to login page</p>
  </body>
</html>
