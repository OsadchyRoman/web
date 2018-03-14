<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String string = request.getQueryString();
    String result = " ";
    if(string!=null) {
        result = string.replaceAll("&", " ");
    }
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
   <table cols="2">
       <tr>
           <td>Результат работы : </td>
           <td>
               <%=(" ".equals(result))?"Введите параметры в URL":result%>
           </td>
       </tr>
</body>
</html>