<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/16/21
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String name = (String) session.getAttribute("name");
  String commodity = (String) session.getAttribute("commodity");
%>
<html>
  <head>
    <title>Checkout</title>
  </head>
  <body>
    <p>Here is checkout counter.</p>
    <p>The customer name is <strong><%=name%>
    </strong></p>
    <p>The commodity you choose is <strong><%=commodity%>
    </strong></p>
  </body>
</html>

