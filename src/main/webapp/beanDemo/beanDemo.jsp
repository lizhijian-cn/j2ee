<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/21/21
  Time: 4:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="person" scope="page" class="com.lizhijian.j2ee.bean.beanDemo.Person"/>
<jsp:setProperty name="person" property="*"/>
<%
  person.setName(request.getParameter("name"));
  person.setAge(Integer.parseInt(request.getParameter("age")));
  person.setSex(request.getParameter("sex"));
%>
<html>
  <head>
    <title>Java Bean Demo</title>
  </head>
  <body>
    <h3>display in jsp expression:</h3>
    <p>    name:<%=person.getName()%></p>
    <p>    age:<%=person.getAge()%></p>
    <p>    sex:<%=person.getSex()%></p>
    <br/>
    <h3>display in get property:</h3>
    <p>    name:<jsp:getProperty name="person" property="name"/></p>
    <p>    age:<jsp:getProperty name="person" property="age"/></p>
    <p>    sex:<jsp:getProperty name="person" property="sex"/></p>
  </body>
</html>
