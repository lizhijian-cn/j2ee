<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/18/21
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String username = (String) session.getAttribute("username");
  String role = (String) session.getAttribute("role");

  String url = "", text;
  if (role == null) {
    text = "error";
  } else if (role.equals("admin")) {
    text = "Enter the management system";
  } else {
    text = "Enter the user system";
  }
%>
<html>
  <head>
    <title>Login Success</title>
  </head>
  <body>
    <p>Login successfully</p>
    <p>Welcome, <strong><%=username%>
    </strong></p>
    <a href=<%=url%>><%=text%>
    </a>
  </body>
</html>
