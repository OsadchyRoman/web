<%@ page import="java.util.Map" %>
<%@ page import="java.util.Arrays" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map map = request.getParameterMap();
    StringBuilder result = new StringBuilder("");
    if (!map.isEmpty()) {
        for (Object key: map.keySet()) {
            String[] value= (String[]) map.get(key);
            result.append(key).append("=").append(Arrays.toString(value)).append(" ");
        }
    }
%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
   <table cols="2">
       <tr>
           <td>Результат работы :</td>
           <td>
               <%=(result.toString().isEmpty()) ? "Введите параметры в URL" : result%>
           </td>
       </tr>
   </table>
</body>
</html>