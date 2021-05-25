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
    <title>login success</title>
  </head>
  <body>
    <h3>login successfully</h3>
    <p>welcome, <%=username%></p>
  </body>
</html>
