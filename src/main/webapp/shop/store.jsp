<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/20/21
  Time: 4:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String name = (String) session.getAttribute("name");
%>
<html>
  <head>
    <title>the First Department Store</title>
  </head>
  <body>
    <p>Hello, <strong><%=name%>
    </strong></p>
    <p>please type what you want to buy: account.jsp</p>
    <form method="post" action="/j2ee/shop/account">
      <input type="text" name="commodity"/>
      <input type="submit" value="submit"/>
    </form>
  </body>
</html>
