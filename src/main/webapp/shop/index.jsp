<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/16/21
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <p>type your name to jump to the First Department Store: store.jsp</p>
    <form method="post" action="/j2ee/shop/store">
      <input type="text" name="name"/>
      <input type="submit" value="submit"/>
    </form>
  </body>
</html>
