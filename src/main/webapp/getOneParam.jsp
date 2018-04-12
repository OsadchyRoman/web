<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <button class="button-source"><a href="/sources/getOneParam.jsp"  target="_blank">Показать в отдельном окне</a></button>
      </td>
  </table>
  </body>
</html>
