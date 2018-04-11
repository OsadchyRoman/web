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
        <%=request.getParameter("s")!=null?"s="+request.getParameter("s"):"Введите параметр s в URL. Пример : dl.gsu.by/getOneParam.jsp&s=5"%>
      </td>
    </tr>
    <tr>
      <td>Исходный код :</td>
      <td>
          <button class="button-source"><a href="/sources/getOneParam.jsp">Показать в отдельном окне</a></button>
      </td>
  </table>
  </body>
</html>
