<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/21/21
  Time: 5:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login Page</title>
  </head>
  <body>
    <form method="post" action="beanDemo.jsp">
      name: <input type="text" name="name"/>
      <br/>
      age: <input type="text" name="age"/>
      <br/>
      sex:
      <input type="radio" name="sex" value="male" checked>male</input>
      <input type="radio" name="sex" value="female">female</input>
      <br/>
      <input type="submit" value="submit"/>
    </form>
  </body>
</html>
