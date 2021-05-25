<%--
  Created by IntelliJ IDEA.
  User: zhijian
  Date: 5/21/21
  Time: 4:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="calculator" scope="request" class="com.lizhijian.j2ee.bean.calculator.Calculator">
  <jsp:setProperty name="calculator" property="*"/>
</jsp:useBean>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
    <hr>
    calculate result:
    <%
      if (calculator.getFirst() == null || calculator.getOp() == null || calculator.getSecond() == null) {
          out.println("please input first & op & second");
      } else {
        try {
          calculator.calculate();
          out.println(calculator.getFirst()
              + calculator.getOp()
              + calculator.getSecond() + "="
              + calculator.getResult());
        } catch (Exception e) {
          out.println(e.getMessage());
        }
      }
    %>
    <hr>
    <form action="calculator.jsp" method=get>
      <table width="75%" border="1" bordercolor="#003300">
        <tr bgcolor="#999999">
          <td colspan="2">
            calculator
          </td>
        </tr>
        <tr>
          <td>
            first
          </td>
          <td>
            <input type=text name="first">
          </td>
        </tr>
        <tr>
          <td>
            operator
          </td>
          <td>
            <select name="op">
              <option value="+">
                +
              </option>
              <option value="-">
                -
              </option>
              <option value="*">
                *
              </option>
              <option value="/">
                /
              </option>
            </select>
          </td>
        </tr>
        <tr>
          <td>
            second
          </td>
          <td>
            <input type=text name="second">
          </td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#CCCCCC">
            <input type=submit value=calculate>
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
