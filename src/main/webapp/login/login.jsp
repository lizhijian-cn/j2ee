<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/18/21
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login Page</title>
  </head>
  <body>
    <form method="post" action="/j2ee/login">
      username: <input type="text" name="username"/>
      <br/>
      password: <input type="text" name="password"/>
      <br/>
      role:
      <input type="radio" name="role" value="admin">admin</input>
      <input type="radio" name="role" value="user" checked>user</input>
      <br/>
      <input type="submit" value="submit"/>
    </form>
  </body>
</html>
