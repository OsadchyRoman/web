<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
     <link rel="stylesheet" type="text/css" href="resources/css/style.css">
  </head>
  <body>
  <table cols="2">
    <tr>
      <td>Результат работы :</td>
      <td>
        <%=request.getParameter("s")!=null?"s="+request.getParameter("s"):"Введите параметр s в URL. Пример : dl.gsu.by/servlet?nameJsp=getOneParam&s=5"%>
      </td>
    </tr>
    <tr>
      <td>Исходный код :</td>
      <td>
          <textarea cols="120" rows="30" readonly><%=request.getAttribute("javaSourceCode")%></textarea>
      </td>
  </table>
  </body>
</html>
